contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - claim()
#
address owner;
address stor1;
address sub_a1e9d201Address;
uint256 starttime;
uint256 periodFinish;
uint256 sub_e4aa64ab;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 sub_0b74eb73;
uint256 totalStakeAmount;
uint8 stor11;
uint8 stor11; offset 16
uint256 stor11; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8
mapping of uint256 userStakeAmount;
mapping of uint256 totalClaimed;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function sub_0b74eb73(?) payable {
    return sub_0b74eb73
}

function userStakeAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userStakeAmount[address(arg1)]
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

function totalStakeAmount() payable {
    return totalStakeAmount
}

function sub_a1e9d201(?) payable {
    return sub_a1e9d201Address
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function sub_e4aa64ab(?) payable {
    return sub_e4aa64ab
}

function periodFinish() payable {
    return periodFinish
}

function totalClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalClaimed[address(arg1)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function isStarted() payable {
    if block.timestamp <= starttime:
        return 0
    return 1
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function isInProgress() payable {
    if block.timestamp <= starttime:
        return 0
    if block.timestamp >= periodFinish:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4102af45(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e4aa64ab = arg1
}

function updateStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    starttime = arg1
}

function setRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a1e9d201Address = arg1
}

function sub_ab986258(?) payable {
    if not uint8(stor11.field_16):
        if block.timestamp <= sub_e4aa64ab:
            return 0
        return 1
    if not uint8(stor11.field_0):
        return 1
    else:
        return 0
}

function sub_21d36cc4(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor11.field_16) = Mask(240, 0, arg1)
    uint8(stor11.field_0) = uint8(arg2)
}

function sub_3453a85c(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor11.field_24) = Mask(232, 0, arg1)
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg2)
}

function userTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_a1e9d201Address)
    staticcall sub_a1e9d201Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_4c5a99f7(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == sub_a1e9d201Address:
        revert with 0, 'Not allowed'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeBEP20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
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
}

function rewardPerToken() payable {
    if not totalStakeAmount:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalStakeAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakeAmount
            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalStakeAmount))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalStakeAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakeAmount
            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / totalStakeAmount))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalStakeAmount))
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / totalStakeAmount))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStakeAmount <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStakeAmount
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount))
}

function notifyRewardAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7743616c6c6572206973206e6f742072657761726420646973747269627574696f,
                    mem[197 len 31]
    if not totalStakeAmount:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if 24 * 3600 * arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 24 * 3600 * arg2
            rewardRate = arg1 / 24 * 3600 * arg2
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeBEP20: low-level call failed'
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if 24 * 3600 * arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 24 * 3600 * arg2
                rewardRate = arg1 / 24 * 3600 * arg2
            else:
                require periodFinish - block.timestamp
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if 24 * 3600 * arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 24 * 3600 * arg2
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / 24 * 3600 * arg2
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[356 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeBEP20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalStakeAmount <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakeAmount
                if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStakeAmount
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStakeAmount
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if totalStakeAmount <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakeAmount
                if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStakeAmount
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStakeAmount
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp >= periodFinish:
            if 24 * 3600 * arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 24 * 3600 * arg2
            rewardRate = arg1 / 24 * 3600 * arg2
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[420 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[544 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeBEP20: low-level call failed'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
        else:
            if block.timestamp > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - block.timestamp:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if 24 * 3600 * arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 24 * 3600 * arg2
                rewardRate = arg1 / 24 * 3600 * arg2
            else:
                require periodFinish - block.timestamp
                if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if 24 * 3600 * arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 24 * 3600 * arg2
                rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / 24 * 3600 * arg2
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[484 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[608 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeBEP20: low-level call failed'
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[516]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 595 len 22]
    lastUpdateTime = block.timestamp
    if block.timestamp + (24 * 3600 * arg2) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = block.timestamp + (24 * 3600 * arg2)
    sub_e4aa64ab = block.timestamp + (24 * 3600 * arg2)
    emit RewardAdded(arg1);
}

function sub_6c3e7872(?) payable {
    require calldata.size - 4 >= 32
    if not totalStakeAmount:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStakeAmount[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStakeAmount[address(arg1)]
        if (rewardPerTokenStored * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalStakeAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakeAmount
            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStakeAmount):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userStakeAmount[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require userStakeAmount[address(arg1)]
            if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalStakeAmount <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakeAmount
            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStakeAmount):
                revert with 0, 'SafeMath: subtraction overflow'
            if not userStakeAmount[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require userStakeAmount[address(arg1)]
            if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStakeAmount[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStakeAmount[address(arg1)]
        if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStakeAmount):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStakeAmount[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStakeAmount[address(arg1)]
        if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalStakeAmount <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakeAmount
        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / totalStakeAmount):
            revert with 0, 'SafeMath: subtraction overflow'
        if not userStakeAmount[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require userStakeAmount[address(arg1)]
        if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + (0 / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalStakeAmount <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStakeAmount
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
        revert with 0, 'SafeMath: subtraction overflow'
    if not userStakeAmount[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    require userStakeAmount[address(arg1)]
    if (rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / userStakeAmount[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ((rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * userStakeAmount[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * userStakeAmount[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalStakeAmount:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if block.timestamp <= starttime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalStakeAmount + arg1 < totalStakeAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalStakeAmount += arg1
            if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userStakeAmount[address(msg.sender)] += arg1
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[352 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
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
        else:
            if not totalStakeAmount:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userStakeAmount[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require userStakeAmount[address(msg.sender)]
                    if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp <= starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalStakeAmount + arg1 < totalStakeAmount:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakeAmount += arg1
                if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStakeAmount[address(msg.sender)] += arg1
                if not ext_code.hash(sub_a1e9d201Address):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[356 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[480 len 4] = uint32(arg1)
                call sub_a1e9d201Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeBEP20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            else:
                if block.timestamp < periodFinish:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastUpdateTime:
                        if totalStakeAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakeAmount
                        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStakeAmount[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStakeAmount[address(msg.sender)]
                            if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not periodFinish - lastUpdateTime:
                        if totalStakeAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakeAmount
                        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStakeAmount[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStakeAmount[address(msg.sender)]
                            if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp <= starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalStakeAmount + arg1 < totalStakeAmount:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakeAmount += arg1
                if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStakeAmount[address(msg.sender)] += arg1
                if not ext_code.hash(sub_a1e9d201Address):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[484 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call sub_a1e9d201Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeBEP20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalStakeAmount <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakeAmount
                if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStakeAmount
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStakeAmount
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if totalStakeAmount <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakeAmount
                if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalStakeAmount
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalStakeAmount
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if totalStakeAmount <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakeAmount
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if block.timestamp <= starttime:
                revert with 0, 'not start'
            if arg1 <= 0:
                revert with 0, 'Cannot stake 0'
            if totalStakeAmount + arg1 < totalStakeAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalStakeAmount += arg1
            if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            userStakeAmount[address(msg.sender)] += arg1
            if not ext_code.hash(sub_a1e9d201Address):
                revert with 0, 'SafeBEP20: call to non-contract'
            if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeBEP20: call to non-contract'
            mem[356 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = uint32(arg1)
            call sub_a1e9d201Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeBEP20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        else:
            if not totalStakeAmount:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userStakeAmount[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require userStakeAmount[address(msg.sender)]
                    if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp <= starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalStakeAmount + arg1 < totalStakeAmount:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakeAmount += arg1
                if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStakeAmount[address(msg.sender)] += arg1
                if not ext_code.hash(sub_a1e9d201Address):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[484 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call sub_a1e9d201Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeBEP20: low-level call failed'
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
            else:
                if block.timestamp < periodFinish:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - lastUpdateTime:
                        if totalStakeAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakeAmount
                        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStakeAmount[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStakeAmount[address(msg.sender)]
                            if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not periodFinish - lastUpdateTime:
                        if totalStakeAmount <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakeAmount
                        if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userStakeAmount[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require userStakeAmount[address(msg.sender)]
                            if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + (0 / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + (0 / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + (0 / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStakeAmount <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStakeAmount
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userStakeAmount[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require userStakeAmount[address(msg.sender)]
                                if (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / userStakeAmount[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ((rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * userStakeAmount[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalStakeAmount * userStakeAmount[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * userStakeAmount[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if block.timestamp <= starttime:
                    revert with 0, 'not start'
                if arg1 <= 0:
                    revert with 0, 'Cannot stake 0'
                if totalStakeAmount + arg1 < totalStakeAmount:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakeAmount += arg1
                if userStakeAmount[address(msg.sender)] + arg1 < userStakeAmount[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                userStakeAmount[address(msg.sender)] += arg1
                if not ext_code.hash(sub_a1e9d201Address):
                    revert with 0, 'SafeBEP20: call to non-contract'
                if ext_code.hash(sub_a1e9d201Address) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeBEP20: call to non-contract'
                mem[612 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[736 len 4] = uint32(arg1)
                call sub_a1e9d201Address with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeBEP20: low-level call failed'
                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[644]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
    emit Staked(arg1, msg.sender);
}



}
