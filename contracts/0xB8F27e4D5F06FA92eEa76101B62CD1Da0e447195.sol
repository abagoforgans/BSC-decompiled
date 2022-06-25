contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 rewardPerSecond;
uint256 totalStaked;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor7;
uint256 startTimestamp;
uint256 bonusEndTimestamp;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function startTimestamp() payable {
    return startTimestamp
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
}

function setBonusEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= bonusEndTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    bonusEndTimestamp = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndTimestamp:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndTimestamp:
        return 0
    if bonusEndTimestamp < arg1:
        revert with 'NH{q', 17
    return (bonusEndTimestamp - arg1)
}

function rewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
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
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getStakeTokenFeeBalance() payable {
    require ext_code.size(stakeTokenAddress)
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

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(rewardTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stakeTokenAddress)
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
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stakeTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
    call stakeTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp > poolInfo[arg1].field_512:
        if totalStaked:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                    revert with 'NH{q', 17
                if not stor7:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 / totalStaked) - 1:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= bonusEndTimestamp:
                    if False and rewardPerSecond > 0:
                        revert with 'NH{q', 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 'NH{q', 17
                    if not stor7:
                        revert with 'NH{q', 18
                    if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if bonusEndTimestamp < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if bonusEndTimestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / bonusEndTimestamp - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (bonusEndTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (bonusEndTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not stor7:
                        revert with 'NH{q', 18
                    if (bonusEndTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor7 / totalStaked
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.timestamp > poolInfo[idx].field_512:
            if totalStaked:
                if block.timestamp <= bonusEndTimestamp:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 'NH{q', 17
                    if not stor7:
                        revert with 'NH{q', 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 / totalStaked
                else:
                    if poolInfo[idx].field_512 >= bonusEndTimestamp:
                        if False and rewardPerSecond > 0:
                            revert with 'NH{q', 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 'NH{q', 17
                        if not stor7:
                            revert with 'NH{q', 18
                        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if bonusEndTimestamp < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if bonusEndTimestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / bonusEndTimestamp - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (bonusEndTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (bonusEndTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            revert with 'NH{q', 17
                        if not stor7:
                            revert with 'NH{q', 18
                        if (bonusEndTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7:
                            revert with 'NH{q', 17
                        if not totalStaked:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 / totalStaked) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor7 / totalStaked
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndTimestamp:
        if block.timestamp < uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndTimestamp:
        if False and rewardPerSecond > 0:
            revert with 'NH{q', 17
        if False and uint256(poolInfo.field_256) > 0:
            revert with 'NH{q', 17
        if not stor7:
            revert with 'NH{q', 18
        if 0 / stor7 and 1000000000000 * 10^18 > -1 / 0 / stor7:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * 0 / stor7 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndTimestamp < uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if bonusEndTimestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / bonusEndTimestamp - uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if (bonusEndTimestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (bonusEndTimestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
        revert with 'NH{q', 17
    if not stor7:
        revert with 'NH{q', 18
    if (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if uint256(poolInfo.field_768) > -(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
