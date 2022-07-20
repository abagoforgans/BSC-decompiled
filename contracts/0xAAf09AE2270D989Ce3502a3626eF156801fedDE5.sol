contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - stake(uint256 arg1)
#  - exit()
#
const DURATION = (8760 * 24 * 3600)


address lpTokenAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address tokenAddress;
uint256 initreward;
uint256 starttime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 sub_965044d5;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 stakeTime;
mapping of uint256 sub_7ba4d130;
address sub_0828862dAddress;
address rewardLockAddress;
address sub_944d9b83Address;
uint256 sub_de35eb24;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function sub_0828862d(?) payable {
    return sub_0828862dAddress
}

function totalSupply() payable {
    return totalSupply
}

function stakeTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakeTime[arg1]
}

function lpToken() payable {
    return lpTokenAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function sub_7ba4d130(?) payable {
    require calldata.size - 4 >= 32
    return sub_7ba4d130[arg1]
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

function sub_944d9b83(?) payable {
    return sub_944d9b83Address
}

function sub_965044d5(?) payable {
    return sub_965044d5
}

function initreward() payable {
    return initreward
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function sub_de35eb24(?) payable {
    return sub_de35eb24
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function rewardLock() payable {
    return rewardLockAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function isUnLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    return block.timestamp - stakeTime[address(arg1)] >= sub_de35eb24
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_97b83185(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_de35eb24 = arg1
}

function sub_09db9840(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_944d9b83Address = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setRewardLock(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardLockAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function sub_f703adbf(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 != 1:
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
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
            if not rewards[address(arg1)]:
                if 0 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)]
            if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if 0 > rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        if (30 * rewards[address(arg1)]) + (30 * (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewards[address(arg1)]:
                    if 0 > rewards[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return rewards[address(arg1)], rewards[address(arg1)]
                if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                if 0 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                       rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not rewards[address(arg1)]:
                    if 0 > rewards[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return rewards[address(arg1)], rewards[address(arg1)]
                if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                if 0 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                       rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if 0 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)]
            if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if 0 > rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        if (30 * rewards[address(arg1)]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if 0 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)]
            if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if 0 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not rewards[address(arg1)]:
                if 0 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)]
            if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            if 0 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not rewards[address(arg1)]:
            if 0 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)]
        if 30 * rewards[address(arg1)] / rewards[address(arg1)] != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
        if 0 > rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
    if (30 * rewards[address(arg1)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) != 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (30 * rewards[address(arg1)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
        revert with 0, 'SafeMath: subtraction overflow'
    return rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
           rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
}

function donate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if block.timestamp < periodFinish:
                if arg1 + sub_965044d5 < sub_965044d5:
                    revert with 0, 'SafeMath: addition overflow'
                sub_965044d5 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
            else:
                if sub_965044d5 + initreward < initreward:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_965044d5 + initreward:
                    initreward = 0
                    sub_965044d5 = 0
                    rewardRate = 0
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp <= starttime + (8760 * 24 * 3600):
                    else:
                        starttime += 8760 * 24 * 3600
                    periodFinish = starttime + (8760 * 24 * 3600)
                    emit 0x6cde88a9: initreward
                    if arg1 + sub_965044d5 < sub_965044d5:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_965044d5 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                else:
                    if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                    sub_965044d5 = 0
                    rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp <= starttime + (8760 * 24 * 3600):
                        periodFinish = starttime + (8760 * 24 * 3600)
                        emit 0x6cde88a9: initreward
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        starttime += 8760 * 24 * 3600
                        periodFinish = starttime + (8760 * 24 * 3600)
                        emit 0x6cde88a9: initreward
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
        else:
            lastUpdateTime = periodFinish
            if block.timestamp < periodFinish:
                if arg1 + sub_965044d5 < sub_965044d5:
                    revert with 0, 'SafeMath: addition overflow'
                sub_965044d5 += arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
            else:
                if sub_965044d5 + initreward < initreward:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_965044d5 + initreward:
                    initreward = 0
                    sub_965044d5 = 0
                    rewardRate = 0
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp <= starttime + (8760 * 24 * 3600):
                        periodFinish = starttime + (8760 * 24 * 3600)
                        emit 0x6cde88a9: initreward
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        starttime += 8760 * 24 * 3600
                        periodFinish = starttime + (8760 * 24 * 3600)
                        emit 0x6cde88a9: initreward
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                else:
                    if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                    sub_965044d5 = 0
                    rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if starttime + (8760 * 24 * 3600) < starttime:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp <= starttime + (8760 * 24 * 3600):
                    else:
                        starttime += 8760 * 24 * 3600
                    periodFinish = starttime + (8760 * 24 * 3600)
                    emit 0x6cde88a9: initreward
                    if arg1 + sub_965044d5 < sub_965044d5:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_965044d5 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp >= periodFinish:
                    lastUpdateTime = periodFinish
                    if block.timestamp < periodFinish:
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        if sub_965044d5 + initreward < initreward:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_965044d5 + initreward:
                            initreward = 0
                            sub_965044d5 = 0
                            rewardRate = 0
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                            else:
                                starttime += 8760 * 24 * 3600
                            periodFinish = starttime + (8760 * 24 * 3600)
                            emit 0x6cde88a9: initreward
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                            sub_965044d5 = 0
                            rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                else:
                    lastUpdateTime = block.timestamp
                    if block.timestamp < periodFinish:
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        if sub_965044d5 + initreward < initreward:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_965044d5 + initreward:
                            initreward = 0
                            sub_965044d5 = 0
                            rewardRate = 0
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                        else:
                            if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                            sub_965044d5 = 0
                            rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                    else:
                        lastUpdateTime = periodFinish
                    if block.timestamp >= periodFinish:
                        if sub_965044d5 + initreward < initreward:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_965044d5 + initreward:
                            initreward = 0
                            sub_965044d5 = 0
                            rewardRate = 0
                        else:
                            if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                            sub_965044d5 = 0
                            rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                        if starttime + (8760 * 24 * 3600) < starttime:
                            revert with 0, 'SafeMath: addition overflow'
                        if starttime + (8760 * 24 * 3600) < starttime:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp <= starttime + (8760 * 24 * 3600):
                        else:
                            starttime += 8760 * 24 * 3600
                        periodFinish = starttime + (8760 * 24 * 3600)
                        emit 0x6cde88a9: initreward
                    if arg1 + sub_965044d5 < sub_965044d5:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_965044d5 += arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if block.timestamp >= periodFinish:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_965044d5 + initreward:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                            else:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                            else:
                                starttime += 8760 * 24 * 3600
                            periodFinish = starttime + (8760 * 24 * 3600)
                            emit 0x6cde88a9: initreward
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        lastUpdateTime = periodFinish
                        if block.timestamp < periodFinish:
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_965044d5 + initreward:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                else:
                                    starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                else:
                                    starttime += 8760 * 24 * 3600
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not periodFinish - lastUpdateTime:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / totalSupply
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if block.timestamp < periodFinish:
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        if sub_965044d5 + initreward < initreward:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_965044d5 + initreward:
                            if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                            sub_965044d5 = 0
                            rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                        else:
                            initreward = 0
                            sub_965044d5 = 0
                            rewardRate = 0
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                else:
                    lastUpdateTime = periodFinish
                    if block.timestamp < periodFinish:
                        if arg1 + sub_965044d5 < sub_965044d5:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_965044d5 += arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        if sub_965044d5 + initreward < initreward:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_965044d5 + initreward:
                            if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                            sub_965044d5 = 0
                            rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                            else:
                                starttime += 8760 * 24 * 3600
                            periodFinish = starttime + (8760 * 24 * 3600)
                            emit 0x6cde88a9: initreward
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            initreward = 0
                            sub_965044d5 = 0
                            rewardRate = 0
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if starttime + (8760 * 24 * 3600) < starttime:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp <= starttime + (8760 * 24 * 3600):
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if block.timestamp < periodFinish:
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_965044d5 + initreward:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                else:
                                    starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    starttime += 8760 * 24 * 3600
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                    else:
                        lastUpdateTime = periodFinish
                        if block.timestamp < periodFinish:
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_965044d5 + initreward:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                else:
                                    starttime += 8760 * 24 * 3600
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                            else:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                else:
                                    starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                    if block.timestamp < periodFinish:
                        lastUpdateTime = block.timestamp
                        if block.timestamp < periodFinish:
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_965044d5 + initreward:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                else:
                                    starttime += 8760 * 24 * 3600
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                            else:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                else:
                                    starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                    else:
                        lastUpdateTime = periodFinish
                        if block.timestamp < periodFinish:
                            if arg1 + sub_965044d5 < sub_965044d5:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_965044d5 += arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(tokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if sub_965044d5 + initreward < initreward:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_965044d5 + initreward:
                                if (50 * sub_965044d5) + (50 * initreward) / sub_965044d5 + initreward != 50:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x3d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                initreward = (50 * sub_965044d5) + (50 * initreward) / 100
                                sub_965044d5 = 0
                                rewardRate = (50 * sub_965044d5) + (50 * initreward) / 100 / 8760 * 24 * 3600
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                else:
                                    starttime += 8760 * 24 * 3600
                                periodFinish = starttime + (8760 * 24 * 3600)
                                emit 0x6cde88a9: initreward
                                if arg1 + sub_965044d5 < sub_965044d5:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_965044d5 += arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                initreward = 0
                                sub_965044d5 = 0
                                rewardRate = 0
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if starttime + (8760 * 24 * 3600) < starttime:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.timestamp <= starttime + (8760 * 24 * 3600):
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    starttime += 8760 * 24 * 3600
                                    periodFinish = starttime + (8760 * 24 * 3600)
                                    emit 0x6cde88a9: initreward
                                    if arg1 + sub_965044d5 < sub_965044d5:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_965044d5 += arg1
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
    call tokenAddress with:
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
    emit Donate(arg1, msg.sender);
}



}
