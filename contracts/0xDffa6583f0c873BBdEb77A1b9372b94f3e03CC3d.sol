contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - recoverTokenWrongAddress(address arg1)
#  - depositToInvestor(uint256 arg1, address arg2)
#
address owner;
uint256 stor1;
array of address investor;
mapping of uint256 stor3;
uint8 stor4;
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 sub_3da11b79;
uint256 sub_c1c7ff57;
uint256 lastRewardBlock;
uint256 poolLimitPerUser;
uint256 rewardPerBlock;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
address treasuryAddress;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function getInvestorLength() payable {
    return investor.length
}

function sub_3da11b79(?) payable {
    return sub_3da11b79
}

function startBlock() payable {
    return startBlock
}

function treasury() payable {
    return treasuryAddress
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
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

function hasUserLimit() payable {
    return bool(stor4)
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_c1c7ff57(?) payable {
    return sub_c1c7ff57
}

function getInvestor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if investor.length < 1:
        revert with 0, 17
    if arg1 > investor.length - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SmartChefFoundingInvestor: index out of bounds'
    if arg1 >= investor.length:
        revert with 0, 50
    return investor[arg1]
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
}

function isInvestor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    bonusEndBlock = block.number
    emit RewardsStop(block.number);
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not stor4:
        revert with 0, 'Must be set'
    if not arg1:
        stor4 = uint8(arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
}

function sub_0d172793(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.number >= sub_3da11b79:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New startUnlockBlock must be lower than new endUnlockBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New startUnlockBlock must be higher than current block'
    sub_3da11b79 = arg1
    sub_c1c7ff57 = arg2
    emit 0x5962ebfa: arg1, arg2
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be lower than new endBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be higher than current block'
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function pendingUnlockedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= sub_3da11b79:
        return 0
    if userInfo[address(arg1)].field_256 <= 0:
        return 0
    if block.number > sub_c1c7ff57:
        if sub_c1c7ff57 < sub_3da11b79:
            revert with 0, 17
        if not sub_c1c7ff57 - sub_3da11b79:
            revert with 0, 18
        if sub_3da11b79 < sub_c1c7ff57:
            if sub_c1c7ff57 - sub_3da11b79 and userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79 > -1 / sub_c1c7ff57 - sub_3da11b79:
                revert with 0, 17
            if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            if (sub_c1c7ff57 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - (sub_3da11b79 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) < userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((sub_c1c7ff57 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - (sub_3da11b79 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256)
        if False and userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79 > 0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if 0 < userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (-userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256)
    if block.number < sub_3da11b79:
        revert with 0, 17
    if sub_c1c7ff57 < sub_3da11b79:
        revert with 0, 17
    if not sub_c1c7ff57 - sub_3da11b79:
        revert with 0, 18
    if block.number - sub_3da11b79 and userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79 > -1 / block.number - sub_3da11b79:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if (block.number * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - (sub_3da11b79 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) < userInfo[address(arg1)].field_0 - userInfo[address(arg1)].field_256:
        revert with 0, 17
    return ((block.number * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - (sub_3da11b79 * userInfo[address(arg1)].field_0 / sub_c1c7ff57 - sub_3da11b79) - userInfo[address(arg1)].field_0 + userInfo[address(arg1)].field_256)
}

function harvest() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.number > lastRewardBlock:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < lastRewardBlock:
                    revert with 0, 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 0, 17
                if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
                    revert with 0, 17
                accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 0, 17
                    if False and PRECISION_FACTOR > 0:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if accTokenPerShare > !(0 / ext_call.return_data[0]):
                        revert with 0, 17
                    accTokenPerShare += 0 / ext_call.return_data[0]
                else:
                    if bonusEndBlock < lastRewardBlock:
                        revert with 0, 17
                    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                        revert with 0, 17
                    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
                        revert with 0, 17
                    accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]
        lastRewardBlock = block.number
    if userInfo[msg.sender].field_256 and accTokenPerShare > -1 / userInfo[msg.sender].field_256:
        revert with 0, 17
    if not PRECISION_FACTOR:
        revert with 0, 18
    if userInfo[msg.sender].field_256:
        if userInfo[msg.sender].field_256 * accTokenPerShare / PRECISION_FACTOR < userInfo[msg.sender].field_512:
            revert with 0, 17
        if (userInfo[msg.sender].field_256 * accTokenPerShare / PRECISION_FACTOR) - userInfo[msg.sender].field_512:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.safeRewardTransfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[msg.sender].field_256 * accTokenPerShare / PRECISION_FACTOR) - userInfo[msg.sender].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    userInfo[msg.sender].field_512 = userInfo[msg.sender].field_256 * accTokenPerShare / PRECISION_FACTOR
    emit Harvest(msg.sender);
    stor1 = 1
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= lastRewardBlock:
        if userInfo[address(arg1)].field_256 and accTokenPerShare > -1 / userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_256 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_512)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_256 and accTokenPerShare > -1 / userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_256 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_512:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_256 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_512)
    if block.number <= bonusEndBlock:
        if block.number < lastRewardBlock:
            revert with 0, 17
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_256 and accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_256) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR < userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_256) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR) - userInfo[address(arg1)].field_512)
    if lastRewardBlock >= bonusEndBlock:
        if False and rewardPerBlock > 0:
            revert with 0, 17
        if False and PRECISION_FACTOR > 0:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if accTokenPerShare > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_256 and accTokenPerShare + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_256) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR < userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_256) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR) - userInfo[address(arg1)].field_512)
    if bonusEndBlock < lastRewardBlock:
        revert with 0, 17
    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
        revert with 0, 17
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_256 and accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_256:
        revert with 0, 17
    if not PRECISION_FACTOR:
        revert with 0, 18
    if (accTokenPerShare * userInfo[address(arg1)].field_256) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR < userInfo[address(arg1)].field_512:
        revert with 0, 17
    return (((accTokenPerShare * userInfo[address(arg1)].field_256) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_256) / PRECISION_FACTOR) - userInfo[address(arg1)].field_512)
}



}
