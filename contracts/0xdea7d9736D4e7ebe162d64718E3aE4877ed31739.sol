contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - pow(uint256 arg1, uint256 arg2)
#  - exit()
#
uint256 stor0;
uint8 stor1;
address owner; offset 8
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 stakingTokensDecimalRate;
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

function paused() payable {
    return bool(stor1)
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

function owner() payable {
    return owner
}

function stakingTokensDecimalRate() payable {
    return stakingTokensDecimalRate
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

function min(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < arg2:
        return arg1
    return arg2
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    require rewardRate
    if rewardRate * rewardsDuration / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardRate * rewardsDuration)
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

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    88,
                    0xfe50726576696f7573207265776172647320706572696f64206d75737420626520636f6d706c657465206265666f7265206368616e67696e6720746865206475726174696f6e20666f7220746865206e657720706572696f,
                    mem[252 len 8]
    rewardsDuration = arg1
    emit RewardsDurationUpdated(rewardsDuration);
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == rewardsTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7343616e6e6f7420776974686472617720746865207265776172647320746f6b656e,
                    mem[198 len 30]
    if totalSupply:
        if arg1 == stakingTokenAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7743616e6e6f7420776974686472617720746865207374616b696e6720746f6b656e,
                        mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalSupply))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply))
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
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalSupply))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardsDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardsDuration
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if stakingTokensDecimalRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stakingTokensDecimalRate
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
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
                if stakingTokensDecimalRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stakingTokensDecimalRate
                if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if stakingTokensDecimalRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stakingTokensDecimalRate
                if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if stakingTokensDecimalRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stakingTokensDecimalRate
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
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
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if stakingTokensDecimalRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stakingTokensDecimalRate
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if stakingTokensDecimalRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stakingTokensDecimalRate
            if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if stakingTokensDecimalRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stakingTokensDecimalRate
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if stakingTokensDecimalRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stakingTokensDecimalRate
        if (0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < 0 / stakingTokensDecimalRate:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
    require balanceOf[address(arg1)]
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if stakingTokensDecimalRate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stakingTokensDecimalRate
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0 < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / stakingTokensDecimalRate) + rewards[address(arg1)].field_0)
}

function getReward() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if rewards[address(msg.sender)].field_0 > 0:
                rewards[address(msg.sender)].field_0 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(rewardsTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                call rewardsTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args rewards[address(msg.sender)].field_0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)].field_0 > 0:
                    rewards[address(msg.sender)].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                    if ext_code.size(rewardsTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[address(msg.sender)].field_0, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)].field_0 > 0:
                    rewards[address(msg.sender)].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(rewardsTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[address(msg.sender)].field_0, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if rewards[address(msg.sender)].field_0 > 0:
                rewards[address(msg.sender)].field_0 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
                if ext_code.size(rewardsTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                call rewardsTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args rewards[address(msg.sender)].field_0, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)].field_0 > 0:
                    rewards[address(msg.sender)].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(rewardsTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[address(msg.sender)].field_0, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)].field_0 > 0:
                    rewards[address(msg.sender)].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[750 len 26]
                    if ext_code.size(rewardsTokenAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[644 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)].field_32
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[address(msg.sender)].field_0, mem[708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 755 len 22]
                    emit RewardPaid(rewards[address(msg.sender)].field_0, msg.sender);
    stor0 = 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(stakingTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
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
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
                if ext_code.size(stakingTokenAddress) <= 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(stakingTokenAddress) <= 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
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
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if ext_code.size(stakingTokenAddress) <= 0:
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
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if stakingTokensDecimalRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stakingTokensDecimalRate
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[654 len 26]
                if ext_code.size(stakingTokenAddress) <= 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((block.timestamp * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
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
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if stakingTokensDecimalRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stakingTokensDecimalRate
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + (0 / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != stakingTokensDecimalRate:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if (0 / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < 0 / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += 0 / stakingTokensDecimalRate
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if stakingTokensDecimalRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stakingTokensDecimalRate
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate) + rewards[address(msg.sender)].field_0 < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((periodFinish * rewardRate * stakingTokensDecimalRate) - (lastUpdateTime * rewardRate * stakingTokensDecimalRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / stakingTokensDecimalRate
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                if ext_code.size(stakingTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[800 len 4] = 0
                call stakingTokenAddress with:
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
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 787 len 22]
    emit Staked(arg1, msg.sender);
    stor0 = 1
}



}
