contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - upgradeNode(uint256 arg1)
#
const DURATION = (8760 * 24 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
mapping of struct userInfos;
address tokenAddress;
uint256 initreward;
uint256 starttime;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 sub_7ba4d130;
address rewardLockAddress;
address sub_944d9b83Address;
mapping of uint256 sub_edbee17a;
address sub_45d7046fAddress;
address callerAddress;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function userInfos(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfos[arg1].field_0, userInfos[arg1].field_256, userInfos[arg1].field_512, bool(userInfos[arg1].field_768)
}

function getSuperior(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfos[address(arg1)].field_0
}

function sub_45d7046f(?) payable {
    return sub_45d7046fAddress
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

function initreward() payable {
    return initreward
}

function getNode(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfos[address(arg1)].field_256
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
}

function sub_edbee17a(?) payable {
    require calldata.size - 4 >= 32
    return sub_edbee17a[arg1]
}

function rewardLock() payable {
    return rewardLockAddress
}

function token() payable {
    return tokenAddress
}

function caller() payable {
    return callerAddress
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

function setCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    callerAddress = arg1
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

function sub_c048e9e4(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'INVALID_SUPERIOR_ADDRESS'
    if msg.sender == arg1:
        revert with 0, 'INVALID_SUPERIOR_ADDRESS'
    if not userInfos[arg1].field_0:
        revert with 0, 'INVALID_SUPERIOR_ADDRESS'
    if userInfos[msg.sender].field_0:
        revert with 0, 'referrer has been bound'
    userInfos[msg.sender].field_0 = arg1
    if userInfos[arg1].field_768:
        userInfos[msg.sender].field_256 = arg1
    else:
        if userInfos[arg1].field_256:
            userInfos[msg.sender].field_256 = userInfos[arg1].field_256
    emit 0xcccf00fa: msg.sender, address(arg1), userInfos[msg.sender].field_256
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
                   rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
               rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 30 * rewards[address(arg1)] / 100 > rewards[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return rewards[address(arg1)], rewards[address(arg1)] - (30 * rewards[address(arg1)] / 100)
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (30 * rewards[address(arg1)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100 > rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18):
        revert with 0, 'SafeMath: subtraction overflow'
    return rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18), 
           rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) - ((30 * rewards[address(arg1)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) / 100)
}

function sub_e21c82ab(?) payable {
    if not sub_edbee17a[msg.sender]:
        revert with 0, 'nft does not exist'
    require ext_code.size(sub_45d7046fAddress)
    call sub_45d7046fAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, sub_edbee17a[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_edbee17a[msg.sender] = 0
    userInfos[msg.sender].field_768 = 0
    emit 0x256a3daf: msg.sender
    if userInfos[msg.sender].field_512:
        if totalSupply:
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
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
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
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if msg.sender:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not rewards[address(msg.sender)]:
                        if 0 > rewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if not rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                        if 0 > rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (30 * rewards[address(msg.sender)]) + (30 * (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (30 * rewards[address(msg.sender)]) + (30 * (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                            revert with 0, 'SafeMath: subtraction overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewards[address(msg.sender)]:
                                if 0 > rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                if 0 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)]:
                                    if 0 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    if 0 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)]:
                                    if 0 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    if 0 > rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[address(msg.sender)]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[address(msg.sender)]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not periodFinish - lastUpdateTime:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewards[address(msg.sender)]:
                                if 0 > rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            if not rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                if 0 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)]:
                                    if 0 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    if 0 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[address(msg.sender)]) + (30 * (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)]:
                                    if 0 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[address(msg.sender)] / rewards[address(msg.sender)] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[address(msg.sender)] / 100 > rewards[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                    if 0 > rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[address(msg.sender)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[address(msg.sender)]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) / 100 > rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
        if block.timestamp >= periodFinish:
            if not initreward:
                initreward = 0
                rewardRate = 0
            else:
                if 50 * initreward / initreward != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                initreward = 50 * initreward / 100
                rewardRate = 50 * initreward / 100 / 8760 * 24 * 3600
            if starttime + (8760 * 24 * 3600) < starttime:
                revert with 0, 'SafeMath: addition overflow'
            if starttime + (8760 * 24 * 3600) < starttime:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= starttime + (8760 * 24 * 3600):
            else:
                starttime += 8760 * 24 * 3600
            periodFinish = starttime + (8760 * 24 * 3600)
            emit RewardAdded(initreward);
        if block.timestamp <= starttime:
            revert with 0, 'not start'
        if userInfos[msg.sender].field_512 <= 0:
            revert with 0, 'Cannot withdraw 0'
        if userInfos[msg.sender].field_512 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= userInfos[msg.sender].field_512
        if userInfos[msg.sender].field_512 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= userInfos[msg.sender].field_512
        emit Withdrawn(userInfos[msg.sender].field_512, msg.sender);
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == callerAddress
    if userInfos[address(arg1)].field_256:
        if arg2 > userInfos[userInfos[address(arg1)].field_256].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfos[userInfos[address(arg1)].field_256].field_512 -= arg2
        if userInfos[userInfos[address(arg1)].field_256].field_768:
            if totalSupply:
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
                    else:
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += 0 / totalSupply
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
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
                    else:
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += 0 / totalSupply
                        else:
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
            else:
                lastUpdateTime = periodFinish
            if userInfos[address(arg1)].field_256:
                if not totalSupply:
                    if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[stor3[address(arg1)].field_256]:
                        if rewards[stor3[address(arg1)].field_256] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewards[stor3[address(arg1)].field_256]:
                            if 0 > rewards[stor3[address(arg1)].field_256]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                            if 0 > rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow'
                        rewards[stor3[address(arg1)].field_256] += (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
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
                            if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[stor3[address(arg1)].field_256]:
                                if rewards[stor3[address(arg1)].field_256] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256]:
                                    if 0 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                    if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[stor3[address(arg1)].field_256]:
                                if rewards[stor3[address(arg1)].field_256] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256]:
                                    if 0 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                    if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                            else:
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                userRewardPerTokenPaid[stor3[address(arg1)].field_256] = rewardPerTokenStored
            if block.timestamp >= periodFinish:
                if not initreward:
                    initreward = 0
                    rewardRate = 0
                else:
                    if 50 * initreward / initreward != 50:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    initreward = 50 * initreward / 100
                    rewardRate = 50 * initreward / 100 / 8760 * 24 * 3600
                if starttime + (8760 * 24 * 3600) < starttime:
                    revert with 0, 'SafeMath: addition overflow'
                if starttime + (8760 * 24 * 3600) < starttime:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp <= starttime + (8760 * 24 * 3600):
                else:
                    starttime += 8760 * 24 * 3600
                periodFinish = starttime + (8760 * 24 * 3600)
                emit RewardAdded(initreward);
            if block.timestamp <= starttime:
                revert with 0, 'not start'
            if arg2 <= 0:
                revert with 0, 'Cannot withdraw 0'
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            if arg2 > balanceOf[stor3[address(arg1)].field_256]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[stor3[address(arg1)].field_256] -= arg2
            emit Withdrawn(arg2, userInfos[address(arg1)].field_256);
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == callerAddress
    if userInfos[address(arg1)].field_256:
        if arg2 + userInfos[userInfos[address(arg1)].field_256].field_512 < userInfos[userInfos[address(arg1)].field_256].field_512:
            revert with 0, 'SafeMath: addition overflow'
        userInfos[userInfos[address(arg1)].field_256].field_512 += arg2
        if userInfos[userInfos[address(arg1)].field_256].field_768:
            if totalSupply:
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
                    else:
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += 0 / totalSupply
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
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
                    else:
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += 0 / totalSupply
                        else:
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
            else:
                lastUpdateTime = periodFinish
            if userInfos[address(arg1)].field_256:
                if not totalSupply:
                    if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[stor3[address(arg1)].field_256]:
                        if rewards[stor3[address(arg1)].field_256] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewards[stor3[address(arg1)].field_256]:
                            if 0 > rewards[stor3[address(arg1)].field_256]:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        if not rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                            if 0 > rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                revert with 0, 'SafeMath: subtraction overflow'
                        rewards[stor3[address(arg1)].field_256] += (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
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
                            if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[stor3[address(arg1)].field_256]:
                                if rewards[stor3[address(arg1)].field_256] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256]:
                                    if 0 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                    if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                        else:
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                    else:
                        if lastUpdateTime > periodFinish:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not periodFinish - lastUpdateTime:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[stor3[address(arg1)].field_256]:
                                if rewards[stor3[address(arg1)].field_256] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256]:
                                    if 0 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                    if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                        else:
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + ((0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += (0 / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                            else:
                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[stor3[address(arg1)].field_256] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[stor3[address(arg1)].field_256]:
                                    if rewards[stor3[address(arg1)].field_256] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256]:
                                        if 0 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 30 * rewards[stor3[address(arg1)].field_256] / rewards[stor3[address(arg1)].field_256] != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 30 * rewards[stor3[address(arg1)].field_256] / 100 > rewards[stor3[address(arg1)].field_256]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / balanceOf[stor3[address(arg1)].field_256] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[stor3[address(arg1)].field_256]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                        if 0 > rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) != 30:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (30 * rewards[stor3[address(arg1)].field_256]) + (30 * ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18) / 100 > rewards[stor3[address(arg1)].field_256] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    rewards[stor3[address(arg1)].field_256] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[stor3[address(arg1)].field_256]) + (rewardPerTokenStored * balanceOf[stor3[address(arg1)].field_256]) - (userRewardPerTokenPaid[stor3[address(arg1)].field_256] * balanceOf[stor3[address(arg1)].field_256]) / 10^18
                userRewardPerTokenPaid[stor3[address(arg1)].field_256] = rewardPerTokenStored
            if block.timestamp >= periodFinish:
                if not initreward:
                    initreward = 0
                    rewardRate = 0
                else:
                    if 50 * initreward / initreward != 50:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    initreward = 50 * initreward / 100
                    rewardRate = 50 * initreward / 100 / 8760 * 24 * 3600
                if starttime + (8760 * 24 * 3600) < starttime:
                    revert with 0, 'SafeMath: addition overflow'
                if starttime + (8760 * 24 * 3600) < starttime:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp <= starttime + (8760 * 24 * 3600):
                else:
                    starttime += 8760 * 24 * 3600
                periodFinish = starttime + (8760 * 24 * 3600)
                emit RewardAdded(initreward);
            if block.timestamp <= starttime:
                revert with 0, 'not start'
            if arg2 <= 0:
                revert with 0, 'Cannot stake 0'
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if arg2 + balanceOf[stor3[address(arg1)].field_256] < balanceOf[stor3[address(arg1)].field_256]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor3[address(arg1)].field_256] += arg2
            emit Staked(arg2, userInfos[address(arg1)].field_256);
}



}
