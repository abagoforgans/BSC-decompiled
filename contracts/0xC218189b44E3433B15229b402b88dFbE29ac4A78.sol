contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - stake(uint256 arg1)
#  - exit()
#
const DURATION = (336 * 24 * 3600)


address farmTokenAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address rewardDistributionAddress;
address rewardTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
address devaddr;

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

function owner() payable {
    return owner
}

function farmToken() payable {
    return farmTokenAddress
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function devaddr() payable {
    return devaddr
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function RewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
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
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reduceReward(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
        if block.timestamp >= periodFinish:
            rewardRate = arg1 / 336 * 24 * 3600
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 / 336 * 24 * 3600
            else:
                require periodFinish - block.timestamp
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / 336 * 24 * 3600
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            rewardRate = arg1 / 336 * 24 * 3600
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 / 336 * 24 * 3600
            else:
                require periodFinish - block.timestamp
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / 336 * 24 * 3600
    lastUpdateTime = block.timestamp
    if block.timestamp + (336 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = block.timestamp + (336 * 24 * 3600)
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}



}