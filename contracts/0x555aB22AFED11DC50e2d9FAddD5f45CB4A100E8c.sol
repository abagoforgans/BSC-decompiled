contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit()
#
const startTime = (445588 * 3600)

const FROZEN_STAKING_TIME = (24 * 3600)

const DURATION = (12 * 3600)


address MASKAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address stor4;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint8 isOpen;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 lastStakeTimes;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function isOpen() payable {
    return bool(isOpen)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function lastStakeTimes(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastStakeTimes[arg1]
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

function getPeriodFinish() payable {
    return periodFinish
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function MASK() payable {
    return MASKAddress
}

function periodFinish() payable {
    return periodFinish
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

function unfrozenStakeTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return (lastStakeTimes[address(arg1)] + (24 * 3600))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor4 = arg1
}

function setOpen(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    isOpen = uint8(arg1)
    emit SetOpen(arg1);
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
    if not totalSupply:
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
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3043616c6c6572206973206e6f742072657761726420646973747269627574696f,
                    mem[197 len 31]
    if not isOpen:
        revert with 0, 'MASK:MASK POOL - Pool is closed'
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if block.timestamp <= 445588 * 3600:
            require ext_code.size(MASKAddress)
            staticcall MASKAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            rewardRate = ext_call.return_data[0] + arg1 / 12 * 3600
            periodFinish = 445600 * 3600
            lastUpdateTime = 445588 * 3600
            require ext_code.size(MASKAddress)
            call MASKAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardAdded(arg1);
            if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 12 * 3600 * rewardRate:
                if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        else:
            if block.timestamp < periodFinish:
                if block.timestamp > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - block.timestamp:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if not periodFinish - block.timestamp:
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / periodFinish - block.timestamp
                else:
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if not periodFinish - block.timestamp:
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / periodFinish - block.timestamp
                lastUpdateTime = block.timestamp
                require ext_code.size(MASKAddress)
                call MASKAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardAdded(arg1);
                if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 12 * 3600 * rewardRate:
                    if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            else:
                if 445588 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (block.timestamp - (445588 * 3600) / 12 * 3600) + 1 < block.timestamp - (445588 * 3600) / 12 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if not (block.timestamp - (445588 * 3600) / 12 * 3600) + 1:
                    periodFinish = 445588 * 3600
                    if block.timestamp > 445588 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -block.timestamp + (445588 * 3600):
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / -block.timestamp + (445588 * 3600)
                else:
                    if (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (12 * 3600) / (block.timestamp - (445588 * 3600) / 12 * 3600) + 1 != 12 * 3600:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600) < 445588 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    periodFinish = (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600)
                    if block.timestamp > (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + -block.timestamp + (445600 * 3600):
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + -block.timestamp + (445600 * 3600)
                lastUpdateTime = block.timestamp
                require ext_code.size(MASKAddress)
                call MASKAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardAdded(arg1);
                if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if 12 * 3600 * rewardRate:
                    if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
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
        if block.timestamp <= 445588 * 3600:
            require ext_code.size(MASKAddress)
            staticcall MASKAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            rewardRate = ext_call.return_data[0] + arg1 / 12 * 3600
            periodFinish = 445600 * 3600
            lastUpdateTime = 445588 * 3600
            require ext_code.size(MASKAddress)
            call MASKAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardAdded(arg1);
            if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if 12 * 3600 * rewardRate:
                if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        else:
            if block.timestamp < periodFinish:
                if block.timestamp > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - block.timestamp:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if not periodFinish - block.timestamp:
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / periodFinish - block.timestamp
                else:
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if not periodFinish - block.timestamp:
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / periodFinish - block.timestamp
                lastUpdateTime = block.timestamp
                require ext_code.size(MASKAddress)
                call MASKAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardAdded(arg1);
                if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if 12 * 3600 * rewardRate:
                    if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            else:
                if 445588 * 3600 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (block.timestamp - (445588 * 3600) / 12 * 3600) + 1 < block.timestamp - (445588 * 3600) / 12 * 3600:
                    revert with 0, 'SafeMath: addition overflow'
                if not (block.timestamp - (445588 * 3600) / 12 * 3600) + 1:
                    periodFinish = 445588 * 3600
                    if block.timestamp > 445588 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -block.timestamp + (445588 * 3600):
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / -block.timestamp + (445588 * 3600)
                else:
                    if (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (12 * 3600) / (block.timestamp - (445588 * 3600) / 12 * 3600) + 1 != 12 * 3600:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600) < 445588 * 3600:
                        revert with 0, 'SafeMath: addition overflow'
                    periodFinish = (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600)
                    if block.timestamp > (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + (445600 * 3600):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + -block.timestamp + (445600 * 3600):
                        revert with 0, 'SafeMath: division by zero'
                    rewardRate = arg1 / (12 * 3600 * block.timestamp - (445588 * 3600) / 12 * 3600) + -block.timestamp + (445600 * 3600)
                lastUpdateTime = block.timestamp
                require ext_code.size(MASKAddress)
                call MASKAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit RewardAdded(arg1);
                if 12 * 3600 * rewardRate / 12 * 3600 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if 12 * 3600 * rewardRate:
                    if 12 * 10^18 * 24 * 3600 * rewardRate / 12 * 3600 * rewardRate != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(MASKAddress)
            staticcall MASKAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalSupply:
                return 0
            if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                return rewards[address(arg1)]
        else:
            if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(MASKAddress)
            staticcall MASKAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalSupply:
                return 0
            if totalSupply < 0:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply + rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    else:
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
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        return 0
                    if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                        return rewards[address(arg1)]
                else:
                    if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        return 0
                    if totalSupply < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
            else:
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
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                            return rewards[address(arg1)]
                    else:
                        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                            return rewards[address(arg1)]
                    else:
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                            return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        else:
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
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        return 0
                    if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                        return rewards[address(arg1)]
                else:
                    if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        return 0
                    if totalSupply < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalSupply + rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
            else:
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
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                            return rewards[address(arg1)]
                    else:
                        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply + rewards[address(arg1)] < rewards[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] <= ext_call.return_data[0]:
                            return rewards[address(arg1)]
                    else:
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(MASKAddress)
                        staticcall MASKAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < totalSupply:
                            return 0
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) <= ext_call.return_data[0]:
                            return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - totalSupply)
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isOpen:
        revert with 0, 'MASK:MASK POOL - Pool is closed'
    if block.timestamp <= 445588 * 3600:
        revert with 0, 'MASK:MASK POOL - not start'
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if arg1 <= 0:
                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender] += arg1
            if not ext_code.hash(MASKAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[352 len 4] = uint32(arg1)
            call MASKAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[338 len 14],
                                uint32(arg1),
                                mem[356 len 4]
            else:
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[260]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        rewards[address(msg.sender)] = 0
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.hash(MASKAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[480 len 4] = uint32(arg1)
                        call MASKAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    else:
                        if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[480 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                        else:
                            if totalSupply > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[452]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 531 len 22]
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        rewards[address(msg.sender)] = 0
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.hash(MASKAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[480 len 4] = uint32(arg1)
                        call MASKAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    else:
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[480 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[452 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[388]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 467 len 22]
                        else:
                            if totalSupply > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[544 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
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
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                            else:
                                if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                            else:
                                if totalSupply < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                            else:
                                if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[608 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[516]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 595 len 22]
                            else:
                                if totalSupply < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[672 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[580]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 659 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[580]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 659 len 22]
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[608 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[516]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 595 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[608 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[516]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 595 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[672 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[644 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
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
        if not msg.sender:
            if arg1 <= 0:
                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender] += arg1
            if not ext_code.hash(MASKAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = uint32(arg1)
            call MASKAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        rewards[address(msg.sender)] = 0
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.hash(MASKAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = uint32(arg1)
                        call MASKAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    else:
                        if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[608 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                        else:
                            if totalSupply > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(MASKAddress)
                    staticcall MASKAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < totalSupply:
                        rewards[address(msg.sender)] = 0
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 <= 0:
                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[msg.sender] += arg1
                        if not ext_code.hash(MASKAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[608 len 4] = uint32(arg1)
                        call MASKAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                    else:
                        if totalSupply < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalSupply + rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[608 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                        else:
                            if totalSupply > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if arg1 <= 0:
                                revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[msg.sender] += arg1
                            if not ext_code.hash(MASKAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[672 len 4] = uint32(arg1)
                            call MASKAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
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
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                            else:
                                if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                            else:
                                if totalSupply < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
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
                        if not totalSupply:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                            else:
                                if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(MASKAddress)
                            staticcall MASKAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < totalSupply:
                                rewards[address(msg.sender)] = 0
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 <= 0:
                                    revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[msg.sender] += arg1
                                if not ext_code.hash(MASKAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[736 len 4] = uint32(arg1)
                                call MASKAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'SafeERC20: low-level call failed'
                                mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[644]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 723 len 22]
                            else:
                                if totalSupply < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[708]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 787 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
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
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply + rewards[address(msg.sender)] < rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] <= ext_call.return_data[0]:
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(MASKAddress)
                                staticcall MASKAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < totalSupply:
                                    rewards[address(msg.sender)] = 0
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 <= 0:
                                        revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[msg.sender] += arg1
                                    if not ext_code.hash(MASKAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[736 len 4] = uint32(arg1)
                                    call MASKAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[644]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 723 len 22]
                                else:
                                    if totalSupply < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalSupply + rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) <= ext_call.return_data[0]:
                                        rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[736 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[644]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 723 len 22]
                                    else:
                                        if totalSupply > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        rewards[address(msg.sender)] = ext_call.return_data[0] - totalSupply
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 <= 0:
                                            revert with 0, 'MASK:MASK POOL - Cannot stake 0'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[msg.sender] += arg1
                                        if not ext_code.hash(MASKAddress):
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        if ext_code.hash(MASKAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'SafeERC20: call to non-contract'
                                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[800 len 4] = uint32(arg1)
                                        call MASKAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[772 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[708]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 787 len 22]
    lastStakeTimes[msg.sender] = block.timestamp
    emit Staked(arg1, msg.sender);
}



}
