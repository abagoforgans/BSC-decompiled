contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - emergencyWithdraw()
#
uint256 stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address owner;
uint256 lastRewardBlock;
uint256 sub_dd69f04f;
address STAKE_TOKENAddress;
address REWARD_TOKENAddress;
uint256 rewardPerBlock;
uint256 totalStaked;
uint256 totalRewardsPaid;
uint256 sub_41744f7b;
mapping of struct userInfo;
uint256 startBlock;
uint256 bonusEndBlock;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function STAKE_TOKEN() payable {
    return STAKE_TOKENAddress
}

function sub_41744f7b(?) payable {
    return sub_41744f7b
}

function startBlock() payable {
    return startBlock
}

function totalRewardsPaid() payable {
    return totalRewardsPaid
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

function REWARD_TOKEN() payable {
    return REWARD_TOKENAddress
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_dd69f04f(?) payable {
    return sub_dd69f04f
}

function _fallback() payable {
    revert
}

function getUnharvestedRewards() payable {
    if sub_41744f7b < totalRewardsPaid:
        revert with 'NH{q', 17
    return (sub_41744f7b - totalRewardsPaid)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit LogUpdatePool(bonusEndBlock, rewardPerBlock);
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
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    return (bonusEndBlock - arg1)
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new bonus end block must be greater than current'
    bonusEndBlock = arg1
    emit LogUpdatePool(bonusEndBlock, rewardPerBlock);
}

function totalStakeTokenBalance() payable {
    if STAKE_TOKENAddress == REWARD_TOKENAddress:
        return totalStaked
    require ext_code.size(STAKE_TOKENAddress)
    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function rewardBalance() payable {
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress != REWARD_TOKENAddress:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalStaked)
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor1.field_168):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor1.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor1.field_168):
        Mask(88, 0, stor1.field_168) = 1
        Mask(96, 0, stor1.field_160) = 1
    if arg4 <= block.number:
        revert with 0, 'Staking: Invalid start block'
    STAKE_TOKENAddress = arg1
    REWARD_TOKENAddress = arg2
    rewardPerBlock = arg3
    startBlock = arg4
    bonusEndBlock = arg5
    lastRewardBlock = startBlock
    sub_dd69f04f = 0
    if not uint8(stor1.field_168):
        Mask(88, 0, stor1.field_168) = 0
}

function sweepToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == STAKE_TOKENAddress:
        revert with 0, 'can not sweep stake token'
    if arg1 == REWARD_TOKENAddress:
        revert with 0, 'can not sweep reward token'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencySweepWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function updatePool() payable {
    if block.number > lastRewardBlock:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if block.number < lastRewardBlock:
                    revert with 'NH{q', 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 'NH{q', 17
                if sub_41744f7b > (-1 * block.number * rewardPerBlock) + (lastRewardBlock * rewardPerBlock) - 1:
                    revert with 'NH{q', 17
                sub_41744f7b = sub_41744f7b + (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if sub_dd69f04f > -((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                    revert with 'NH{q', 17
                sub_dd69f04f += (1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if sub_41744f7b > -1:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += 0 / totalStaked
                else:
                    if bonusEndBlock < lastRewardBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                        revert with 'NH{q', 17
                    if sub_41744f7b > (-1 * bonusEndBlock * rewardPerBlock) + (lastRewardBlock * rewardPerBlock) - 1:
                        revert with 'NH{q', 17
                    sub_41744f7b = sub_41744f7b + (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += (1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
        lastRewardBlock = block.number
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(REWARD_TOKENAddress)
    staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if STAKE_TOKENAddress != REWARD_TOKENAddress:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'not enough rewards'
    else:
        if ext_call.return_data[0] < totalStaked:
            revert with 'NH{q', 17
        if arg1 > ext_call.return_data[0] - totalStaked:
            revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(REWARD_TOKENAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call REWARD_TOKENAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < lastRewardBlock:
            revert with 'NH{q', 17
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 'NH{q', 17
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if False and rewardPerBlock > 0:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if sub_dd69f04f > -(0 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndBlock < lastRewardBlock:
        revert with 'NH{q', 17
    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
        revert with 'NH{q', 17
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if sub_dd69f04f > -((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.number > lastRewardBlock:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if block.number < lastRewardBlock:
                    revert with 'NH{q', 17
                if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                    revert with 'NH{q', 17
                if sub_41744f7b > (-1 * block.number * rewardPerBlock) + (lastRewardBlock * rewardPerBlock) - 1:
                    revert with 'NH{q', 17
                sub_41744f7b = sub_41744f7b + (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if sub_dd69f04f > -((1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                    revert with 'NH{q', 17
                sub_dd69f04f += (1000000000000 * 10^18 * block.number * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if sub_41744f7b > -1:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -(0 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += 0 / totalStaked
                else:
                    if bonusEndBlock < lastRewardBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                        revert with 'NH{q', 17
                    if sub_41744f7b > (-1 * bonusEndBlock * rewardPerBlock) + (lastRewardBlock * rewardPerBlock) - 1:
                        revert with 'NH{q', 17
                    sub_41744f7b = sub_41744f7b + (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
                    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and 1000000000000 * 10^18 > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -((1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += (1000000000000 * 10^18 * bonusEndBlock * rewardPerBlock) - (1000000000000 * 10^18 * lastRewardBlock * rewardPerBlock) / totalStaked
        lastRewardBlock = block.number
    if userInfo[address(msg.sender)].field_0 <= 0:
        if arg1 > 0:
            mem[100] = this.address
            require ext_code.size(STAKE_TOKENAddress)
            staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(STAKE_TOKENAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call STAKE_TOKENAddress with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(STAKE_TOKENAddress)
            staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if userInfo[address(msg.sender)].field_0 > -1:
                revert with 'NH{q', 17
            if totalStaked > -1:
                revert with 'NH{q', 17
    else:
        if userInfo[address(msg.sender)].field_0 and sub_dd69f04f > -1 / userInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18 < userInfo[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256 <= 0:
            if arg1 > 0:
                mem[100] = this.address
                require ext_code.size(STAKE_TOKENAddress)
                staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg1
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(STAKE_TOKENAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
                mem[ceil32(return_data.size) + 392] = 0
                call STAKE_TOKENAddress with:
                   funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(STAKE_TOKENAddress)
                staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if userInfo[address(msg.sender)].field_0 > -1:
                    revert with 'NH{q', 17
                if totalStaked > -1:
                    revert with 'NH{q', 17
        else:
            mem[100] = this.address
            require ext_code.size(REWARD_TOKENAddress)
            staticcall REWARD_TOKENAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if STAKE_TOKENAddress != REWARD_TOKENAddress:
                if ext_call.return_data[0] < (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256:
                    revert with 0, 'insufficient reward balance'
            else:
                if ext_call.return_data[0] < totalStaked:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - totalStaked < (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256:
                    revert with 0, 'insufficient reward balance'
            if totalRewardsPaid > -(userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) + userInfo[address(msg.sender)].field_256 - 1:
                revert with 'NH{q', 17
            totalRewardsPaid = totalRewardsPaid + (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(REWARD_TOKENAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256, 0
            mem[ceil32(return_data.size) + 328] = 0
            call REWARD_TOKENAddress with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, (userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18) - userInfo[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 > 0:
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(STAKE_TOKENAddress)
                    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 328] = this.address
                    mem[(2 * ceil32(return_data.size)) + 360] = arg1
                    mem[(2 * ceil32(return_data.size)) + 260] = 100
                    mem[(2 * ceil32(return_data.size)) + 292 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                    mem[(2 * ceil32(return_data.size)) + 392] = 32
                    mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(STAKE_TOKENAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 456 len 128] = 0, msg.sender, address(this.address), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 556] = 0
                    call STAKE_TOKENAddress with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), arg1, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                            if not mem[(2 * ceil32(return_data.size)) + 488]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(STAKE_TOKENAddress)
                    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if userInfo[address(msg.sender)].field_0 > -1:
                        revert with 'NH{q', 17
                    if totalStaked > -1:
                        revert with 'NH{q', 17
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg1 > 0:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(STAKE_TOKENAddress)
                    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 100
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(STAKE_TOKENAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 128] = 0, msg.sender, address(this.address), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                    call STAKE_TOKENAddress with:
                       funct Mask(32, 224, 0, msg.sender, address(this.address), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, msg.sender, address(this.address), arg1, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0] > 0:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 462] = 32
                            mem[(4 * ceil32(return_data.size)) + 494] = 32
                            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 458
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 462] = 32
                                mem[(4 * ceil32(return_data.size)) + 494] = 42
                                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 558] = 'ot succeed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 458
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    require ext_code.size(STAKE_TOKENAddress)
                    staticcall STAKE_TOKENAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if userInfo[address(msg.sender)].field_0 > -1:
                        revert with 'NH{q', 17
                    if totalStaked > -1:
                        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 and sub_dd69f04f > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * sub_dd69f04f / 1000000000000 * 10^18
    emit Deposit(0, msg.sender);
    stor0 = 1
}



}
