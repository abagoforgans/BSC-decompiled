contract main {




// =====================  Runtime code  =====================


#
#  - notifyRewardAmount(uint256 arg1)
#  - getReward()
#  - exit()
#
const startTime = 1604214013

const DURATION = (24 * 3600)


address stakeTokenAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address stor4;
address maskAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint8 isOpen;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function mask() payable {
    return maskAddress
}

function totalSupply() payable {
    return totalSupply
}

function isOpen() payable {
    return bool(isOpen)
}

function stakeToken() payable {
    return stakeTokenAddress
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

function lastUpdateTime() payable {
    return lastUpdateTime
}

function getPeriodFinish() payable {
    return periodFinish
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

function isOwner() payable {
    return (msg.sender == owner)
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
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= 1604214013:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe4d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d204e6f742073746172,
                    mem[212 len 16]
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                            mem[220 len 8]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg1
            if not ext_code.hash(stakeTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            call stakeTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                56,
                                0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                                mem[348 len 8]
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stakeTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                56,
                                0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                                mem[476 len 8]
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stakeTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
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
                revert with 0, 
                            32,
                            56,
                            0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                            mem[348 len 8]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[msg.sender] -= arg1
            if not ext_code.hash(stakeTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
            call stakeTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                56,
                                0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                                mem[476 len 8]
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stakeTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                56,
                                0x304d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d2043616e6e6f7420776974686472617720,
                                mem[604 len 8]
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if arg1 > balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender] -= arg1
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                call stakeTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[740]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 819 len 22]
    emit Withdrawn(arg1, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isOpen:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6e4d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d20506f6f6c20697320636c6f7365,
                    mem[217 len 11]
    if block.timestamp <= 1604214013:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe4d41534b3a50616e63616b6573776170204d41534b2643414b45207061697220504f4f4c202d204e6f742073746172,
                    mem[212 len 16]
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            52,
                            0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                            mem[216 len 12]
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(stakeTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[352 len 4] = uint32(arg1)
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 339 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                52,
                                0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                                mem[344 len 12]
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[480 len 4] = uint32(arg1)
                call stakeTokenAddress with:
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                52,
                                0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                                mem[472 len 12]
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call stakeTokenAddress with:
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
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
                revert with 0, 
                            32,
                            52,
                            0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                            mem[344 len 12]
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_code.hash(stakeTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = uint32(arg1)
            call stakeTokenAddress with:
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
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        else:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                52,
                                0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                                mem[472 len 12]
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[608 len 4] = uint32(arg1)
                call stakeTokenAddress with:
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 595 len 22]
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if arg1 <= 0:
                    revert with 0, 
                                32,
                                52,
                                0x644d41534b3a50616e63616b6573776170205632204d41534b26207061697220504f4f4c202d2043616e6e6f74207374616b6520,
                                mem[600 len 12]
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.hash(stakeTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[736 len 4] = uint32(arg1)
                call stakeTokenAddress with:
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 723 len 22]
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    emit Staked(arg1, msg.sender);
}



}
