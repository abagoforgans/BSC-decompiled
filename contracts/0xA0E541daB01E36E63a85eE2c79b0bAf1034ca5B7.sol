contract main {




// =====================  Runtime code  =====================


#
#  - getStakersList(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1)
#  - emergencyRewardWithdraw(uint256 arg1)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - emergencyWithdraw()
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint8 stor2;
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 rewardPerBlock;
uint256 PRECISION_FACTOR;
uint256 totalStaked;
uint256 minLockTime;
uint256 stakingFeeRate;
uint256 unstakingFeeRate;
uint8 sub_f2af8766;
uint8 sub_ef646e43; offset 8
address rewardTokenAddress; offset 16
address stakedTokenAddress;
mapping of struct userInfo;
uint256 numberOfStakers;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(stor2)
}

function startBlock() payable {
    return startBlock
}

function stakingFeeRate() payable {
    return stakingFeeRate
}

function getNumberOfStakers() payable {
    return numberOfStakers
}

function totalStaked() payable {
    return totalStaked
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function accTokenPerShare() payable {
    return accTokenPerShare
}

function minLockTime() payable {
    return minLockTime
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
}

function unstakingFeeRate() payable {
    return unstakingFeeRate
}

function sub_ef646e43(?) payable {
    return bool(sub_ef646e43)
}

function sub_f2af8766(?) payable {
    return bool(sub_f2af8766)
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_4bd3d7f7(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ef646e43 = 0
}

function sub_69cfab2d(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f2af8766 = 0
}

function sub_cbcb4153(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ef646e43 = 1
}

function sub_f5b49035(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f2af8766 = 1
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinLockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minLockTime = arg1
}

function setStakingFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingFeeRate = arg1
}

function setUnstakingFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unstakingFeeRate = arg1
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
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

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg9 == arg9
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Already initialized'
    stor2 = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    rewardPerBlock = arg3
    startBlock = arg4
    bonusEndBlock = arg5
    minLockTime = arg6
    stakingFeeRate = arg7
    unstakingFeeRate = arg8
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if ext_call.return_data[31 len 1] > 30:
        revert with 0, 'SafeMath: subtraction overflow'
    if 30 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 30:
        PRECISION_FACTOR = 1
    else:
        if bool(bool(-ext_call.return_data[31 len 1] + 30 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 30 < 32)):
            PRECISION_FACTOR = 10^(-ext_call.return_data[31 len 1] + 30)
        else:
            s = 10
            t = 1
            idx = -ext_call.return_data[31 len 1] + 30
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            PRECISION_FACTOR = s * t
    lastRewardBlock = startBlock
    sub_f2af8766 = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg9:
        revert with 0, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg9);
    owner = arg9
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= lastRewardBlock:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if block.number <= bonusEndBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < lastRewardBlock:
            revert with 0, 17
        if not block.number - lastRewardBlock:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if accTokenPerShare > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if accTokenPerShare + (0 / ext_call.return_data[0]) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not PRECISION_FACTOR:
                    revert with 0, 18
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if not block.number - lastRewardBlock:
            revert with 0, 18
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if accTokenPerShare > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if accTokenPerShare + (0 / ext_call.return_data[0]) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not PRECISION_FACTOR:
                    revert with 0, 18
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            revert with 0, 17
        if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            revert with 0, 18
        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
            revert with 0, 17
        if accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if lastRewardBlock >= bonusEndBlock:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if accTokenPerShare + (0 / ext_call.return_data[0]) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if bonusEndBlock < lastRewardBlock:
        revert with 0, 17
    if not bonusEndBlock - lastRewardBlock:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if accTokenPerShare + (0 / ext_call.return_data[0]) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
        revert with 0, 17
    if not bonusEndBlock - lastRewardBlock:
        revert with 0, 18
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if accTokenPerShare + (0 / ext_call.return_data[0]) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not PRECISION_FACTOR:
                revert with 0, 18
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        revert with 0, 17
    if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        revert with 0, 18
    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 18
    if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
        revert with 0, 17
    if accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not userInfo[address(arg1)].field_0:
        revert with 0, 18
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not PRECISION_FACTOR:
        revert with 0, 18
    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256 / 10^9)
}



}
