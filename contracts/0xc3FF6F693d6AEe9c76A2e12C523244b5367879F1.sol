contract main {




// =====================  Runtime code  =====================


#
#  - updateRewardPerBlock(uint256 arg1)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - deposit(uint256 arg1, address arg2)
#  - _fallback()
#
const MAX_EMISSION_RATE = 10^10

const MAX_DEPOSIT_FEE = 2000


address owner;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 160
address sub_f63e5797Address;
uint16 sub_e4412f68; offset 160
uint16 sub_c84d3ceb; offset 176
uint16 sub_d03fd542; offset 192
uint16 sub_e1cf4756; offset 208
uint16 sub_d71edc60; offset 224
uint16 stor3; offset 240
uint32 stor3; offset 224
address swapRouterAddress;
uint256 stor3;
uint256 stor3;
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 sub_40dfeb16;
uint16 depositFee;
address stor9;
address feeAddress; offset 16
address devAddress;
uint256 poolLimitPerUser;
uint256 stor12;
uint256 rewardPerBlock;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
uint256 stakedSupply;
uint256 totalBuyback;
uint256 sub_495da97e;
uint256 sub_0ff4a60e;
mapping of struct userInfo;

function sub_0ff4a60e(?) {
    return sub_0ff4a60e
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function bonusEndBlock() {
    return bonusEndBlock
}

function totalBuyback() {
    return totalBuyback
}

function isInitialized() {
    return bool(uint8(stor2.field_168))
}

function devAddress() {
    return devAddress
}

function sub_40dfeb16(?) {
    return sub_40dfeb16
}

function feeAddress() {
    return feeAddress
}

function startBlock() {
    return startBlock
}

function sub_495da97e(?) {
    return sub_495da97e
}

function poolLimitPerUser() {
    return poolLimitPerUser
}

function depositFee() {
    return depositFee
}

function rewardPerBlock() {
    return uint256(rewardPerBlock)
}

function owner() {
    return owner
}

function accTokenPerShare() {
    return accTokenPerShare
}

function hasUserLimit() {
    return bool(uint8(stor2.field_160))
}

function lastRewardBlock() {
    return lastRewardBlock
}

function swapRouter() {
    return swapRouterAddress
}

function sub_c84d3ceb(?) {
    return sub_c84d3ceb
}

function stakedToken() {
    return stakedTokenAddress
}

function PRECISION_FACTOR() {
    return PRECISION_FACTOR
}

function sub_d03fd542(?) {
    return sub_d03fd542
}

function stakedSupply() {
    return stakedSupply
}

function sub_d71edc60(?) {
    return sub_d71edc60
}

function sub_e1cf4756(?) {
    return sub_e1cf4756
}

function sub_e4412f68(?) {
    return sub_e4412f68
}

function sub_f63e5797(?) {
    return sub_f63e5797Address
}

function rewardToken() {
    return rewardTokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_bfd22177(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid liquidify helper'
    sub_f63e5797Address = address(arg1)
}

function updateDepositFee(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2000:
        revert with 0, 'Invalid deposit fee'
    emit 0x898fbe09: depositFee, arg1
    depositFee = arg1
}

function stopReward() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock >= block.number:
        revert with 0, 'Pool has not started'
    if block.number > bonusEndBlock:
        revert with 0, 'Pool has ended'
    bonusEndBlock = block.number
    emit RewardsStop(block.number);
}

function updateFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid zero address'
    if feeAddress == arg1:
        revert with 0, 'Same fee address already set'
    emit 0x5b3e7979: stor9, arg1
    feeAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid zero address'
    if devAddress == arg1:
        revert with 0, 'Same dev address already set'
    emit NewDevAddress(devAddress, arg1);
    devAddress = arg1
}

function sub_8b3cc072(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(arg1)) != 10000:
        revert with 0, 'Invalid input'
    sub_e4412f68 = uint16(arg1)
    sub_c84d3ceb = uint16(arg2)
}

function updateSwapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid swap router'
    swapRouterAddress = arg1
    require ext_code.size(sub_f63e5797Address)
    call sub_f63e5797Address.0x41273657 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor2.field_160):
        revert with 0, 'Must be set'
    if not arg1:
        Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
        emit 0xaed4767b: poolLimitPerUser, 0
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        emit 0xaed4767b: poolLimitPerUser, arg2
        poolLimitPerUser = arg2
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_2bf7a662(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg1)) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(uint16(arg3) + uint16(arg1))) != 10000:
        revert with 0, 'Invalid input'
    Mask(208, 0, stor3.field_0) = Mask(208, 0, 0xffff0000ffff0000ffffffffffffffffffffffffffffffffffffffffffffffff and uint256(stor3.field_0))
    sub_d03fd542 = uint16(arg1)
    sub_e1cf4756 = uint16(arg2)
    uint32(stor3.field_224) = Mask(32, 224, 0xffff0000ffff0000ffffffffffffffffffffffffffffffffffffffffffffffff and uint256(stor3.field_0)) >> 224
    sub_d71edc60 = uint16(arg3)
    uint16(stor3.field_240) = 0
}

function sub_d09c9abd(?) {
    if block.timestamp <= sub_40dfeb16:
        return uint256(rewardPerBlock)
    if sub_40dfeb16 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_40dfeb16:
        revert with 0, 17
    if not block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
        return uint256(rewardPerBlock)
    if not uint256(rewardPerBlock):
        if uint256(rewardPerBlock) > 0:
            if 0 > uint256(rewardPerBlock):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if uint256(rewardPerBlock) < 0:
                revert with 0, 17
            return uint256(rewardPerBlock)
    else:
        if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
            revert with 0, 17
        if not uint256(rewardPerBlock):
            revert with 0, 18
        if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * uint256(rewardPerBlock):
            if uint256(rewardPerBlock) > 0:
                if 0 > uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if uint256(rewardPerBlock) < 0:
                    revert with 0, 17
                return uint256(rewardPerBlock)
        else:
            if uint255(stor12) and block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 > -1 / 2 * uint256(rewardPerBlock):
                revert with 0, 17
            if not 2 * uint256(rewardPerBlock):
                revert with 0, 18
            if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 2 * uint256(rewardPerBlock) != block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if uint256(rewardPerBlock) > 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 > uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if uint256(rewardPerBlock) < 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                    revert with 0, 17
                return (uint256(rewardPerBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100))
    if not uint256(rewardPerBlock):
        return 0
    if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
        revert with 0, 17
    if not uint256(rewardPerBlock):
        revert with 0, 18
    if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    return (2 * uint256(rewardPerBlock) / 100)
}

function emergencyRewardWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        if bonusEndBlock >= block.number:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Not allowed to remove reward tokens while pool is live'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    if arg1 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    else:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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
    emit 0xc2544397: arg1
}

function sub_7ca97832(?) {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg7 == uint16(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    require arg10 == address(arg10)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor2.field_168):
        revert with 0, 'Already initialized'
    if not address(arg8):
        revert with 0, 'Invalid fee address'
    if not address(arg9):
        revert with 0, 'Invalid dev address'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 > 10^10:
            revert with 0, 'Out of maximum emission value'
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 0, 17
            if 10^10 * 10^ext_call.return_data[31 len 1] / 10^10 != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 > 10^10 * 10^ext_call.return_data[31 len 1]:
                revert with 0, 'Out of maximum emission value'
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if s * t > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
                revert with 0, 17
            if 10^10 * s * t / 10^10 != s * t:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 > 10^10 * s * t:
                revert with 0, 'Out of maximum emission value'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= block.number:
        revert with 0, 'startBlock cannot be in the past'
    if arg4 >= arg5:
        revert with 0, 'startBlock must be lower than endBlock'
    uint8(stor2.field_168) = 1
    stakedTokenAddress = address(arg1)
    rewardTokenAddress = address(arg2)
    uint256(rewardPerBlock) = arg3
    sub_40dfeb16 = block.timestamp
    emit 0x37e6dc7d: 0, 0, arg3
    startBlock = arg4
    bonusEndBlock = arg5
    if uint16(arg7) > 2000:
        revert with 0, 'Invalid deposit fee'
    depositFee = uint16(arg7)
    feeAddress = address(arg8)
    devAddress = address(arg9)
    if arg6:
        uint8(stor2.field_160) = 1
        poolLimitPerUser = arg6
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if uint8(ext_call.return_data[0]) > 30:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 30 < uint8(ext_call.return_data[0]):
        revert with 0, 17
    if not -uint8(ext_call.return_data[0]) + 30:
        PRECISION_FACTOR = 1
    else:
        if bool(bool(-uint8(ext_call.return_data[0]) + 30 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 30 < 32)):
            PRECISION_FACTOR = 10^(-uint8(ext_call.return_data[0]) + 30)
        else:
            s = 10
            t = 1
            idx = -uint8(ext_call.return_data[0]) + 30
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg10):
        revert with 0, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, address(arg10));
    owner = address(arg10)
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not stakedSupply:
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number < lastRewardBlock:
            revert with 0, 17
        if block.timestamp <= sub_40dfeb16:
            if not block.number - lastRewardBlock:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if block.number - lastRewardBlock and uint256(rewardPerBlock) > -1 / block.number - lastRewardBlock:
                revert with 0, 17
            if not block.number - lastRewardBlock:
                revert with 0, 18
            if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / block.number - lastRewardBlock != uint256(rewardPerBlock):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 17
            if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 18
            if (block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if sub_40dfeb16 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < sub_40dfeb16:
            revert with 0, 17
        if not block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
            if not block.number - lastRewardBlock:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if block.number - lastRewardBlock and uint256(rewardPerBlock) > -1 / block.number - lastRewardBlock:
                revert with 0, 17
            if not block.number - lastRewardBlock:
                revert with 0, 18
            if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / block.number - lastRewardBlock != uint256(rewardPerBlock):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 17
            if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 18
            if (block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if not uint256(rewardPerBlock):
            if uint256(rewardPerBlock) > 0:
                if 0 > uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if uint256(rewardPerBlock) < 0:
                    revert with 0, 17
                if not block.number - lastRewardBlock:
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if block.number - lastRewardBlock and uint256(rewardPerBlock) > -1 / block.number - lastRewardBlock:
                    revert with 0, 17
                if not block.number - lastRewardBlock:
                    revert with 0, 18
                if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / block.number - lastRewardBlock != uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    revert with 0, 17
                if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    revert with 0, 18
                if (block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        else:
            if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
                revert with 0, 17
            if not uint256(rewardPerBlock):
                revert with 0, 18
            if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * uint256(rewardPerBlock):
                if uint256(rewardPerBlock) > 0:
                    if 0 > uint256(rewardPerBlock):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if uint256(rewardPerBlock) < 0:
                        revert with 0, 17
                    if not block.number - lastRewardBlock:
                        if not stakedSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if accTokenPerShare > !(0 / stakedSupply):
                            revert with 0, 17
                        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if not PRECISION_FACTOR:
                                revert with 0, 'SafeMath: division by zero', 0
                            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if not userInfo[address(arg1)].field_0:
                            revert with 0, 18
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if block.number - lastRewardBlock and uint256(rewardPerBlock) > -1 / block.number - lastRewardBlock:
                        revert with 0, 17
                    if not block.number - lastRewardBlock:
                        revert with 0, 18
                    if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / block.number - lastRewardBlock != uint256(rewardPerBlock):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                        if not stakedSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if accTokenPerShare > !(0 / stakedSupply):
                            revert with 0, 17
                        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if not PRECISION_FACTOR:
                                revert with 0, 'SafeMath: division by zero', 0
                            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if not userInfo[address(arg1)].field_0:
                            revert with 0, 18
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                        revert with 0, 17
                    if not (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                        revert with 0, 18
                    if (block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (block.number * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            else:
                if uint255(stor12) and block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 > -1 / 2 * uint256(rewardPerBlock):
                    revert with 0, 17
                if not 2 * uint256(rewardPerBlock):
                    revert with 0, 18
                if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 2 * uint256(rewardPerBlock) != block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
                    revert with 0, 'SafeMath: multiplication overflow'
                if uint256(rewardPerBlock) > 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                    if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 > uint256(rewardPerBlock):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if uint256(rewardPerBlock) < 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                        revert with 0, 17
                    if not block.number - lastRewardBlock:
                        if not stakedSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if accTokenPerShare > !(0 / stakedSupply):
                            revert with 0, 17
                        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if not PRECISION_FACTOR:
                                revert with 0, 'SafeMath: division by zero', 0
                            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if not userInfo[address(arg1)].field_0:
                            revert with 0, 18
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if block.number - lastRewardBlock and uint256(rewardPerBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100) > -1 / block.number - lastRewardBlock:
                        revert with 0, 17
                    if not block.number - lastRewardBlock:
                        revert with 0, 18
                    if (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) / block.number - lastRewardBlock != uint256(rewardPerBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                        if not stakedSupply:
                            revert with 0, 'SafeMath: division by zero', 0
                        if accTokenPerShare > !(0 / stakedSupply):
                            revert with 0, 17
                        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[address(arg1)].field_0:
                            if not PRECISION_FACTOR:
                                revert with 0, 'SafeMath: division by zero', 0
                            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                                revert with 0, 17
                            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                            revert with 0, 17
                        if not userInfo[address(arg1)].field_0:
                            revert with 0, 18
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) and PRECISION_FACTOR > -1 / (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                        revert with 0, 17
                    if not (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                        revert with 0, 18
                    if (uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / (uint256(rewardPerBlock) * block.number) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) != PRECISION_FACTOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * block.number * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * block.number * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if not uint256(rewardPerBlock):
            if block.number - lastRewardBlock:
                if block.number - lastRewardBlock and 0 > -1 / block.number - lastRewardBlock:
                    revert with 0, 17
                if not block.number - lastRewardBlock:
                    revert with 0, 18
                if 0 / block.number - lastRewardBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
            revert with 0, 17
        if not uint256(rewardPerBlock):
            revert with 0, 18
        if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not block.number - lastRewardBlock:
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if block.number - lastRewardBlock and 2 * uint256(rewardPerBlock) / 100 > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if not block.number - lastRewardBlock:
            revert with 0, 18
        if (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) / block.number - lastRewardBlock != 2 * uint256(rewardPerBlock) / 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) and PRECISION_FACTOR > -1 / (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
            revert with 0, 17
        if not (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
            revert with 0, 18
        if (block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / (block.number * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) != PRECISION_FACTOR:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if block.timestamp > sub_40dfeb16:
            if sub_40dfeb16 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < sub_40dfeb16:
                revert with 0, 17
            if block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
                if not uint256(rewardPerBlock):
                    if uint256(rewardPerBlock) > 0:
                        if 0 > uint256(rewardPerBlock):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(rewardPerBlock) < 0:
                            revert with 0, 17
                    else:
                        if uint256(rewardPerBlock):
                            if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
                                revert with 0, 17
                            if not uint256(rewardPerBlock):
                                revert with 0, 18
                            if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
                        revert with 0, 17
                    if not uint256(rewardPerBlock):
                        revert with 0, 18
                    if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 2 * uint256(rewardPerBlock):
                        if uint256(rewardPerBlock) > 0:
                            if 0 > uint256(rewardPerBlock):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(rewardPerBlock) < 0:
                                revert with 0, 17
                        else:
                            if uint256(rewardPerBlock):
                                if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
                                    revert with 0, 17
                                if not uint256(rewardPerBlock):
                                    revert with 0, 18
                                if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if uint255(stor12) and block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 > -1 / 2 * uint256(rewardPerBlock):
                            revert with 0, 17
                        if not 2 * uint256(rewardPerBlock):
                            revert with 0, 18
                        if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 2 * uint256(rewardPerBlock) != block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint256(rewardPerBlock) > 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                            if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 > uint256(rewardPerBlock):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(rewardPerBlock) < 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                                revert with 0, 17
                        else:
                            if uint256(rewardPerBlock):
                                if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
                                    revert with 0, 17
                                if not uint256(rewardPerBlock):
                                    revert with 0, 18
                                if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !(0 / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndBlock < lastRewardBlock:
        revert with 0, 17
    if block.timestamp <= sub_40dfeb16:
        if not bonusEndBlock - lastRewardBlock:
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if bonusEndBlock - lastRewardBlock and uint256(rewardPerBlock) > -1 / bonusEndBlock - lastRewardBlock:
            revert with 0, 17
        if not bonusEndBlock - lastRewardBlock:
            revert with 0, 18
        if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / bonusEndBlock - lastRewardBlock != uint256(rewardPerBlock):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            revert with 0, 17
        if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            revert with 0, 18
        if (bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if sub_40dfeb16 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < sub_40dfeb16:
        revert with 0, 17
    if not block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
        if not bonusEndBlock - lastRewardBlock:
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if bonusEndBlock - lastRewardBlock and uint256(rewardPerBlock) > -1 / bonusEndBlock - lastRewardBlock:
            revert with 0, 17
        if not bonusEndBlock - lastRewardBlock:
            revert with 0, 18
        if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / bonusEndBlock - lastRewardBlock != uint256(rewardPerBlock):
            revert with 0, 'SafeMath: multiplication overflow'
        if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !(0 / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            revert with 0, 17
        if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
            revert with 0, 18
        if (bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not uint256(rewardPerBlock):
        if uint256(rewardPerBlock) > 0:
            if 0 > uint256(rewardPerBlock):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if uint256(rewardPerBlock) < 0:
                revert with 0, 17
            if not bonusEndBlock - lastRewardBlock:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if bonusEndBlock - lastRewardBlock and uint256(rewardPerBlock) > -1 / bonusEndBlock - lastRewardBlock:
                revert with 0, 17
            if not bonusEndBlock - lastRewardBlock:
                revert with 0, 18
            if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / bonusEndBlock - lastRewardBlock != uint256(rewardPerBlock):
                revert with 0, 'SafeMath: multiplication overflow'
            if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !(0 / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 17
            if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                revert with 0, 18
            if (bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stakedSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if accTokenPerShare > !((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 17
            if accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not userInfo[address(arg1)].field_0:
                revert with 0, 18
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                revert with 0, 'SafeMath: multiplication overflow'
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    else:
        if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
            revert with 0, 17
        if not uint256(rewardPerBlock):
            revert with 0, 18
        if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * uint256(rewardPerBlock):
            if uint256(rewardPerBlock) > 0:
                if 0 > uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if uint256(rewardPerBlock) < 0:
                    revert with 0, 17
                if not bonusEndBlock - lastRewardBlock:
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if bonusEndBlock - lastRewardBlock and uint256(rewardPerBlock) > -1 / bonusEndBlock - lastRewardBlock:
                    revert with 0, 17
                if not bonusEndBlock - lastRewardBlock:
                    revert with 0, 18
                if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) / bonusEndBlock - lastRewardBlock != uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) and PRECISION_FACTOR > -1 / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    revert with 0, 17
                if not (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)):
                    revert with 0, 18
                if (bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / (bonusEndBlock * uint256(rewardPerBlock)) - (lastRewardBlock * uint256(rewardPerBlock)) != PRECISION_FACTOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) - (lastRewardBlock * uint256(rewardPerBlock) * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        else:
            if uint255(stor12) and block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 > -1 / 2 * uint256(rewardPerBlock):
                revert with 0, 17
            if not 2 * uint256(rewardPerBlock):
                revert with 0, 18
            if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 2 * uint256(rewardPerBlock) != block.timestamp - sub_40dfeb16 / 720 * 24 * 3600:
                revert with 0, 'SafeMath: multiplication overflow'
            if uint256(rewardPerBlock) > 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                if 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 > uint256(rewardPerBlock):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if uint256(rewardPerBlock) < 2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100:
                    revert with 0, 17
                if not bonusEndBlock - lastRewardBlock:
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if bonusEndBlock - lastRewardBlock and uint256(rewardPerBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100) > -1 / bonusEndBlock - lastRewardBlock:
                    revert with 0, 17
                if not bonusEndBlock - lastRewardBlock:
                    revert with 0, 18
                if (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) / bonusEndBlock - lastRewardBlock != uint256(rewardPerBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                    if not stakedSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if accTokenPerShare > !(0 / stakedSupply):
                        revert with 0, 17
                    if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[address(arg1)].field_0:
                        if not PRECISION_FACTOR:
                            revert with 0, 'SafeMath: division by zero', 0
                        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                            revert with 0, 17
                        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                    if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                        revert with 0, 17
                    if not userInfo[address(arg1)].field_0:
                        revert with 0, 18
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) and PRECISION_FACTOR > -1 / (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                    revert with 0, 17
                if not (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock):
                    revert with 0, 18
                if (uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / (uint256(rewardPerBlock) * bonusEndBlock) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock) - (uint256(rewardPerBlock) * lastRewardBlock) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock) != PRECISION_FACTOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if accTokenPerShare > !((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 17
                if accTokenPerShare + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if not PRECISION_FACTOR:
                        revert with 0, 'SafeMath: division by zero', 0
                    if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                        revert with 0, 17
                    return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
                if userInfo[address(arg1)].field_0 and accTokenPerShare + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not userInfo[address(arg1)].field_0:
                    revert with 0, 18
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not PRECISION_FACTOR:
                    revert with 0, 'SafeMath: division by zero', 0
                if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((uint256(rewardPerBlock) * bonusEndBlock * PRECISION_FACTOR) - (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * bonusEndBlock * PRECISION_FACTOR) - (uint256(rewardPerBlock) * lastRewardBlock * PRECISION_FACTOR) + (2 * uint256(rewardPerBlock) * block.timestamp - sub_40dfeb16 / 720 * 24 * 3600 / 100 * lastRewardBlock * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not uint256(rewardPerBlock):
        if bonusEndBlock - lastRewardBlock:
            if bonusEndBlock - lastRewardBlock and 0 > -1 / bonusEndBlock - lastRewardBlock:
                revert with 0, 17
            if not bonusEndBlock - lastRewardBlock:
                revert with 0, 18
            if 0 / bonusEndBlock - lastRewardBlock:
                revert with 0, 'SafeMath: multiplication overflow'
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !(0 / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if uint256(rewardPerBlock) and 2 > -1 / uint256(rewardPerBlock):
        revert with 0, 17
    if not uint256(rewardPerBlock):
        revert with 0, 18
    if 2 * uint256(rewardPerBlock) / uint256(rewardPerBlock) != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not bonusEndBlock - lastRewardBlock:
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !(0 / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if bonusEndBlock - lastRewardBlock and 2 * uint256(rewardPerBlock) / 100 > -1 / bonusEndBlock - lastRewardBlock:
        revert with 0, 17
    if not bonusEndBlock - lastRewardBlock:
        revert with 0, 18
    if (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) / bonusEndBlock - lastRewardBlock != 2 * uint256(rewardPerBlock) / 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
        if not stakedSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if accTokenPerShare > !(0 / stakedSupply):
            revert with 0, 17
        if accTokenPerShare + (0 / stakedSupply) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if not PRECISION_FACTOR:
                revert with 0, 'SafeMath: division by zero', 0
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / stakedSupply):
            revert with 0, 'SafeMath: multiplication overflow'
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) and PRECISION_FACTOR > -1 / (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
        revert with 0, 17
    if not (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100):
        revert with 0, 18
    if (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / (bonusEndBlock * 2 * uint256(rewardPerBlock) / 100) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100) != PRECISION_FACTOR:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stakedSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if accTokenPerShare > !((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply):
        revert with 0, 17
    if accTokenPerShare + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply) < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if not PRECISION_FACTOR:
            revert with 0, 'SafeMath: division by zero', 0
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not userInfo[address(arg1)].field_0:
        revert with 0, 18
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply):
        revert with 0, 'SafeMath: multiplication overflow'
    if not PRECISION_FACTOR:
        revert with 0, 'SafeMath: division by zero', 0
    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) - (lastRewardBlock * 2 * uint256(rewardPerBlock) / 100 * PRECISION_FACTOR) / stakedSupply * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}



}
