contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1, address arg2)
#  - depositRewards(uint256 arg1)
#  - pendingReward(address arg1)
#
const MAXIMUM_HARVEST_INTERVAL = (720 * 24 * 3600)


address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 sub_8f662285;
uint256 totalStaked;
uint256 sub_817dc95d;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
mapping of struct sub_0ad4f711;
uint256 startBlock;
uint256 bonusEndBlock;

function sub_0ad4f711(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0ad4f711[arg1].field_0, sub_0ad4f711[arg1].field_256, sub_0ad4f711[arg1].field_512, sub_0ad4f711[arg1].field_768
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function sub_817dc95d(?) payable {
    return sub_817dc95d
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

function sub_8f662285(?) payable {
    return sub_8f662285
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

function sub_fcf37e40(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8f662285 = arg1
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BONUS_MULTIPLIER = arg1
}

function canHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number >= startBlock:
        if block.timestamp >= userInfo[address(arg1)].field_768:
            return block.timestamp >= userInfo[address(arg1)].field_768
    return block.number >= bonusEndBlock
}

function userLockedUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if userInfo[address(arg1)].field_1024 > -uint256(poolInfo.field_1536) - 1:
        revert with 'NH{q', 17
    return (userInfo[address(arg1)].field_1024 + uint256(poolInfo.field_1536))
}

function rewardBalance() payable {
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalStakeTokenBalance() payable {
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
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

function getStakeTokenFeeBalance() payable {
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if arg1 >= bonusEndBlock:
        return 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    if bonusEndBlock - arg1 and BONUS_MULTIPLIER > -1 / bonusEndBlock - arg1:
        revert with 'NH{q', 17
    return ((bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.size(stakeTokenAddress) <= 0:
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, mem[ceil32(return_data.size) + 196 len 28]
    call stakeTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if ext_code.size(rewardTokenAddress) <= 0:
        revert with 0, 'SafeBEP20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[ceil32(return_data.size) + 196 len 28]
    call rewardTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            if totalStaked:
                if block.number <= bonusEndBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 'NH{q', 17
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -((1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * rewardPerBlock) - (1000000000000 * 10^18 * poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += (1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * rewardPerBlock) - (1000000000000 * 10^18 * poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / totalStaked
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if False and rewardPerBlock > 0:
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(0 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 0 / totalStaked
                    else:
                        if bonusEndBlock < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if bonusEndBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and rewardPerBlock > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 'NH{q', 17
                        if (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock):
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -((1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (1000000000000 * 10^18 * poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / totalStaked) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += (1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * rewardPerBlock) - (1000000000000 * 10^18 * poolInfo[idx].field_512 * BONUS_MULTIPLIER * rewardPerBlock) / totalStaked
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_eac285de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number <= sub_0ad4f711[address(arg1)].field_768:
        if sub_0ad4f711[address(arg1)].field_256 <= 0:
            return 0
        if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 > -1 / sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 17
        if sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
            revert with 'NH{q', 17
        return ((sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
    if not totalStaked:
        if sub_0ad4f711[address(arg1)].field_256 <= 0:
            return 0
        if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 > -1 / sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 17
        if sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
            revert with 'NH{q', 17
        return ((sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
    if not sub_0ad4f711[address(arg1)].field_256:
        if sub_0ad4f711[address(arg1)].field_256 <= 0:
            return 0
        if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 > -1 / sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 17
        if sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
            revert with 'NH{q', 17
        return ((sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_512 / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
    if block.number <= bonusEndBlock:
        if block.number < sub_0ad4f711[address(arg1)].field_768:
            revert with 'NH{q', 17
        if block.number - sub_0ad4f711[address(arg1)].field_768 and BONUS_MULTIPLIER > -1 / block.number - sub_0ad4f711[address(arg1)].field_768:
            revert with 'NH{q', 17
        if (block.number * BONUS_MULTIPLIER) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER) and sub_8f662285 > -1 / (block.number * BONUS_MULTIPLIER) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER):
            revert with 'NH{q', 17
        if (block.number * BONUS_MULTIPLIER * sub_8f662285) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) and 1000000000000 * 10^18 > -1 / (block.number * BONUS_MULTIPLIER * sub_8f662285) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285):
            revert with 'NH{q', 17
        if not sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 18
        if sub_0ad4f711[address(arg1)].field_512 > -((1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256) - 1:
            revert with 'NH{q', 17
        if sub_0ad4f711[address(arg1)].field_256 <= 0:
            return 0
        if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 + ((1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256) > -1 / sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 17
        if (sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + ((1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
            revert with 'NH{q', 17
        return (((sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + ((1000000000000 * 10^18 * block.number * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
    if sub_0ad4f711[address(arg1)].field_768 >= bonusEndBlock:
        if False and sub_8f662285 > 0:
            revert with 'NH{q', 17
        if not sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 18
        if sub_0ad4f711[address(arg1)].field_512 > -(0 / sub_0ad4f711[address(arg1)].field_256) - 1:
            revert with 'NH{q', 17
        if sub_0ad4f711[address(arg1)].field_256 <= 0:
            return 0
        if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 + (0 / sub_0ad4f711[address(arg1)].field_256) > -1 / sub_0ad4f711[address(arg1)].field_256:
            revert with 'NH{q', 17
        if (sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + (0 / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
            revert with 'NH{q', 17
        return (((sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + (0 / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
    if bonusEndBlock < sub_0ad4f711[address(arg1)].field_768:
        revert with 'NH{q', 17
    if bonusEndBlock - sub_0ad4f711[address(arg1)].field_768 and BONUS_MULTIPLIER > -1 / bonusEndBlock - sub_0ad4f711[address(arg1)].field_768:
        revert with 'NH{q', 17
    if (bonusEndBlock * BONUS_MULTIPLIER) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER) and sub_8f662285 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER):
        revert with 'NH{q', 17
    if (bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) and 1000000000000 * 10^18 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285):
        revert with 'NH{q', 17
    if not sub_0ad4f711[address(arg1)].field_256:
        revert with 'NH{q', 18
    if sub_0ad4f711[address(arg1)].field_512 > -((1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256) - 1:
        revert with 'NH{q', 17
    if sub_0ad4f711[address(arg1)].field_256 <= 0:
        return 0
    if sub_0ad4f711[address(arg1)].field_256 and sub_0ad4f711[address(arg1)].field_512 + ((1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256) > -1 / sub_0ad4f711[address(arg1)].field_256:
        revert with 'NH{q', 17
    if (sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + ((1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18 < sub_0ad4f711[address(arg1)].field_0:
        revert with 'NH{q', 17
    return (((sub_0ad4f711[address(arg1)].field_512 * sub_0ad4f711[address(arg1)].field_256) + ((1000000000000 * 10^18 * bonusEndBlock * BONUS_MULTIPLIER * sub_8f662285) - (1000000000000 * 10^18 * sub_0ad4f711[address(arg1)].field_768 * BONUS_MULTIPLIER * sub_8f662285) / sub_0ad4f711[address(arg1)].field_256 * sub_0ad4f711[address(arg1)].field_256) / 1000000000000 * 10^18) - sub_0ad4f711[address(arg1)].field_0)
}



}
