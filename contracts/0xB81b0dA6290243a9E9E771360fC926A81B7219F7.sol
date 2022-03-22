contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - exit()
#
address owner;
uint256 stor1;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 startTime;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of struct rewards;
uint256 totalSupply;
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function startTime() payable {
    return startTime
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardsDuration * rewardRate)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'invalid rewards token address'
    if not arg2:
        revert with 0, 'invalid staking token address'
    if rewardsTokenAddress:
        revert with 0, 'initialized'
    if stakingTokenAddress:
        revert with 0, 'initialized'
    rewardsTokenAddress = arg1
    stakingTokenAddress = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
    if 0 == totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp < startTime:
        revert with 0, 'Not Started'
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero'
            rewardRate = arg1 / rewardsDuration
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardsDuration:
                    revert with 0, 'SafeMath: division by zero'
                rewardRate = arg1 / rewardsDuration
            else:
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardsDuration:
                    revert with 0, 'SafeMath: division by zero'
                rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero'
            rewardRate = arg1 / rewardsDuration
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardsDuration:
                    revert with 0, 'SafeMath: division by zero'
                rewardRate = arg1 / rewardsDuration
            else:
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewardsDuration:
                    revert with 0, 'SafeMath: division by zero'
                rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 'SafeMath: division by zero'
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewards[address(arg1)].field_0 + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)].field_0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call stakingTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if arg1 <= 0:
                        revert with 0, 'Cannot stake 0'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[msg.sender] += arg1
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call stakingTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if block.timestamp < periodFinish:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[672 len 4] = 0
                        mem[644 len 0] = 0
                    call stakingTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if arg1 + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[msg.sender] += arg1
                if not ext_code.size(stakingTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call stakingTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if arg1 <= 0:
                        revert with 0, 'Cannot stake 0'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[msg.sender] += arg1
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    mem[516 len 0] = 0
                    call stakingTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if block.timestamp < periodFinish:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                            else:
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                    call stakingTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call stakingTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call stakingTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call stakingTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = 0
                            mem[644 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp >= periodFinish:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                            else:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if arg1 <= 0:
                            revert with 0, 'Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call stakingTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[672 len 4] = 0
                                mem[644 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = 0
                                        mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 <= 0:
                                revert with 0, 'Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = 0
                            mem[516 len 0] = 0
                            call stakingTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                    mem[644 len 0] = 0
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[580]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 <= 0:
                                                    revert with 0, 'Cannot stake 0'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[msg.sender] += arg1
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[800 len 4] = 0
                                                mem[772 len 0] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 <= 0:
                                                revert with 0, 'Cannot stake 0'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[msg.sender] += arg1
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[800 len 4] = 0
                                            mem[772 len 0] = 0
                                call stakingTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[708]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 787 len 22]
    emit Staked(arg1, msg.sender);
    stor1 = 1
}

function getReward() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if rewards[msg.sender].field_0:
                    rewards[msg.sender].field_0 = 0
                    if not ext_code.size(rewardsTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                    mem[324 len 0] = 0
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[msg.sender].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    if rewards[msg.sender].field_0:
                        rewards[msg.sender].field_0 = 0
                        if not ext_code.size(rewardsTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                        mem[452 len 0] = 0
                        call rewardsTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args rewards[msg.sender].field_0, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    if block.timestamp < periodFinish:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[580 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[580 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if rewards[msg.sender].field_0:
                    rewards[msg.sender].field_0 = 0
                    if not ext_code.size(rewardsTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                    mem[324 len 0] = 0
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[msg.sender].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[452 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    if block.timestamp >= periodFinish:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[580 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[580 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if lastUpdateTime > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - lastUpdateTime:
                            if not totalSupply:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not totalSupply:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[580 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[452 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[580 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if block.timestamp >= periodFinish:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[452 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[708 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[676]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 755 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[676]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 755 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[580 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[548]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 627 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[676]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 755 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[708 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                                    if not return_data.size:
                                                        require not ext_call.success
                                                        revert with 'SafeMath: subtraction overflow'
                                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[676]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 755 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[452 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[420]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 499 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if block.timestamp < periodFinish:
                                if lastUpdateTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if lastUpdateTime > periodFinish:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not periodFinish - lastUpdateTime:
                                    if not totalSupply:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[708 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[708 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[708 len 4]
                                                if not return_data.size:
                                                    require not ext_call.success
                                                    revert with 'SafeMath: subtraction overflow'
                                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[676]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 755 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[708 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[452 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[452 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[420]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 499 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[580 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if not totalSupply:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not totalSupply:
                                                revert with 0, 'SafeMath: division by zero'
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[708 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
    stor1 = 1
}



}
