contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
address owner;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalDeposit;
uint256 stor8;
uint256 startBlock;
uint256 bonusEndBlock;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function depositToken() payable {
    require 0 < poolInfo.length
    return address(poolInfo.field_0)
}

function totalDeposit() payable {
    return totalDeposit
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
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

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BONUS_MULTIPLIER = arg1
}

function updateBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= bonusEndBlock:
        revert with 0, 'bad number'
    bonusEndBlock = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < startBlock:
        return 0
    if arg1 > bonusEndBlock:
        return 0
    if arg1 >= startBlock:
        if arg2 <= bonusEndBlock:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2 - arg1:
                return 0
            if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
        if arg1 > bonusEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - arg1:
            return 0
        if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if arg2 <= bonusEndBlock:
        if startBlock > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - startBlock:
            return 0
        if (arg2 * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / arg2 - startBlock != BONUS_MULTIPLIER:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((arg2 * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER))
    if startBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - startBlock:
        return 0
    if (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / bonusEndBlock - startBlock != BONUS_MULTIPLIER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return ((bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER))
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough token'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if totalDeposit:
            if block.number < startBlock:
                if stor8 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8
                if not 0 / stor8:
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / totalDeposit
                else:
                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
            else:
                if poolInfo[arg1].field_512 > bonusEndBlock:
                    if stor8 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8
                    if not 0 / stor8:
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalDeposit
                    else:
                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                else:
                    if poolInfo[arg1].field_512 >= startBlock:
                        if block.number <= bonusEndBlock:
                            if poolInfo[arg1].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[arg1].field_512:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit
                        else:
                            if poolInfo[arg1].field_512 > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - poolInfo[arg1].field_512:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit
                    else:
                        if block.number <= bonusEndBlock:
                            if startBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - startBlock:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / block.number - startBlock != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit
                        else:
                            if startBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - startBlock:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / bonusEndBlock - startBlock != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / stor8 / totalDeposit
        poolInfo[arg1].field_512 = block.number
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 0 < poolInfo.length
    if block.number > uint256(poolInfo.field_512):
        if totalDeposit:
            if block.number < startBlock:
                if stor8 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8
                if not 0 / stor8:
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_768) += 0 / totalDeposit
                else:
                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
            else:
                if uint256(poolInfo.field_512) > bonusEndBlock:
                    if stor8 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8
                    if not 0 / stor8:
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / totalDeposit
                    else:
                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                else:
                    if uint256(poolInfo.field_512) >= startBlock:
                        if block.number <= bonusEndBlock:
                            if uint256(poolInfo.field_512) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - uint256(poolInfo.field_512):
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / block.number - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit
                        else:
                            if uint256(poolInfo.field_512) > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - uint256(poolInfo.field_512):
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / bonusEndBlock - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit
                    else:
                        if block.number <= bonusEndBlock:
                            if startBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - startBlock:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / block.number - startBlock != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit
                        else:
                            if startBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - startBlock:
                                if stor8 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor8
                                if not 0 / stor8:
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 0 / totalDeposit
                                else:
                                    if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if totalDeposit <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalDeposit
                                    if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                            else:
                                if (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / bonusEndBlock - startBlock != BONUS_MULTIPLIER:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if not (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 0 / totalDeposit
                                        else:
                                            if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(poolInfo.field_768) += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit
        uint256(poolInfo.field_512) = block.number
    rewardPerBlock = arg1
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            if totalDeposit:
                if block.number < startBlock:
                    if stor8 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8
                    if not 0 / stor8:
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalDeposit
                    else:
                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalDeposit <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalDeposit
                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                else:
                    if poolInfo[idx].field_512 > bonusEndBlock:
                        if stor8 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8
                        if not 0 / stor8:
                            if totalDeposit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposit
                            if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / totalDeposit
                        else:
                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalDeposit <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalDeposit
                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                    else:
                        if poolInfo[idx].field_512 >= startBlock:
                            if block.number <= bonusEndBlock:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not 0 / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit
                            else:
                                if poolInfo[idx].field_512 > bonusEndBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - poolInfo[idx].field_512:
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not 0 / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                        else:
                                            if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit
                        else:
                            if block.number <= bonusEndBlock:
                                if startBlock > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - startBlock:
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / block.number - startBlock != BONUS_MULTIPLIER:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not 0 / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit
                            else:
                                if startBlock > bonusEndBlock:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not bonusEndBlock - startBlock:
                                    if stor8 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8
                                    if not 0 / stor8:
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / totalDeposit
                                    else:
                                        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if totalDeposit <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalDeposit
                                        if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                else:
                                    if (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / bonusEndBlock - startBlock != BONUS_MULTIPLIER:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if not (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
                                        if stor8 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8
                                        if not 0 / stor8:
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / totalDeposit
                                        else:
                                            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if totalDeposit <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalDeposit
                                            if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                    else:
                                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not 0 / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * 0 / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / stor8 / totalDeposit
                                        else:
                                            if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if stor8 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor8
                                            if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8:
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (0 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / totalDeposit
                                            else:
                                                if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalDeposit <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalDeposit
                                                if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / stor8 / totalDeposit
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256)
    if not totalDeposit:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 10^18) - userInfo[address(arg1)].field_256)
    if block.number < startBlock:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= startBlock:
        if block.number <= bonusEndBlock:
            if uint256(poolInfo.field_512) > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - uint256(poolInfo.field_512):
                if stor8 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8
                if not 0 / stor8:
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / block.number - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
                if stor8 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8
                if not 0 / stor8:
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != rewardPerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock):
                if stor8 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8
                if not 0 / stor8:
                    if totalDeposit <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalDeposit
                    if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if userInfo[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[address(arg1)].field_256
                    if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
                if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if uint256(poolInfo.field_512) > bonusEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not bonusEndBlock - uint256(poolInfo.field_512):
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / bonusEndBlock - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock):
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if startBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - startBlock:
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / block.number - startBlock != BONUS_MULTIPLIER:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalDeposit <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposit
                if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if startBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - startBlock:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) / bonusEndBlock - startBlock != BONUS_MULTIPLIER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER):
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) / (bonusEndBlock * BONUS_MULTIPLIER) - (startBlock * BONUS_MULTIPLIER) != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock):
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalDeposit <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalDeposit
            if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if 10^18 * 0 / stor8 / 0 / stor8 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * 0 / stor8 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if stor8 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8
    if not (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8:
        if totalDeposit <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalDeposit
        if (0 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalDeposit) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[address(arg1)].field_256 > (0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if 10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalDeposit <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalDeposit
    if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    if (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit) + uint256(poolInfo.field_768):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[address(arg1)].field_256 > (10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) - (startBlock * BONUS_MULTIPLIER * rewardPerBlock * uint256(poolInfo.field_256)) / stor8 / totalDeposit * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
}



}
