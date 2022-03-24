contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
address owner;
address rewardReferralAddress;
address sub_c3dee20bAddress;
address migratorAddress;
address stAddress;
address devaddr;
address sub_67bed16aAddress;
uint256 cakePerBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 devFee;
uint256 sub_2cf83631;
uint256 sub_115ee213;
uint256 burnfee;
uint256 sub_f6ce417e;

function burnfee() payable {
    return burnfee
}

function cakePerBlock() payable {
    return cakePerBlock
}

function poolLength() payable {
    return poolInfo.length
}

function rewardReferral() payable {
    return rewardReferralAddress
}

function sub_115ee213(?) payable {
    return sub_115ee213
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function sub_2cf83631(?) payable {
    return sub_2cf83631
}

function startBlock() payable {
    return startBlock
}

function sub_67bed16a(?) payable {
    return sub_67bed16aAddress
}

function devFee() payable {
    return devFee
}

function st() payable {
    return stAddress
}

function migrator() payable {
    return migratorAddress
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c3dee20b(?) payable {
    return sub_c3dee20bAddress
}

function devaddr() payable {
    return devaddr
}

function sub_f6ce417e(?) payable {
    return sub_f6ce417e
}

function _fallback() payable {
    revert
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not migratorAddress:
        revert with 0, 'migrate: no migrator'
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1594786a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    cakePerBlock = arg1
}

function sub_b3ab56fe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_67bed16aAddress = arg1
}

function setRewardVote(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c3dee20bAddress = arg1
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    BONUS_MULTIPLIER = arg1
}

function setRewardReferral(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardReferralAddress = arg1
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devFee = arg1
    sub_2cf83631 = arg2
    sub_115ee213 = arg3
    burnfee = arg4
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if arg2 - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndBlock)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / bonusEndBlock - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if arg2 - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (arg2 - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(stAddress)
                        call stAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(stAddress)
                        call stAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock) / block.number - poolInfo[arg1].field_512 != cakePerBlock:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) / block.number - bonusEndBlock != cakePerBlock:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(stAddress)
                                call stAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(stAddress)
                                call stAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(stAddress)
                            call stAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(stAddress)
                                call stAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(stAddress)
                                call stAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingCake(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock) / block.number - poolInfo[arg1].field_512 != cakePerBlock:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (poolInfo[arg1].field_512 * cakePerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) / block.number - bonusEndBlock != cakePerBlock:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if block.number - bonusEndBlock < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * cakePerBlock * poolInfo[arg1].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[arg1].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, bool arg3, uint256 arg4, uint256 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 30
                mem[_560 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _560 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_635] = 26
                    mem[_635 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _649 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _649 + 68] = mem[idx + _635 + 32]
                            idx = idx + 32
                            continue 
                        mem[_649 + 68] = mem[_649 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _649 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_746] = 26
                        mem[_746 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _785 + 68] = mem[idx + _746 + 32]
                            idx = idx + 32
                            continue 
                        mem[_785 + 68] = mem[_785 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _785 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_764] = 26
                    mem[_764 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _811 + 68] = mem[idx + _764 + 32]
                        idx = idx + 32
                        continue 
                    mem[_811 + 68] = mem[_811 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _811 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_642] = 26
                    mem[_642 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _659 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _659 + 68] = mem[idx + _642 + 32]
                            idx = idx + 32
                            continue 
                        mem[_659 + 68] = mem[_659 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _659 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_763] = 26
                        mem[_763 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _808 + 68] = mem[idx + _763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_808 + 68] = mem[_808 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _808 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_784] = 26
                    mem[_784 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _838 + 68] = mem[idx + _784 + 32]
                        idx = idx + 32
                        continue 
                    mem[_838 + 68] = mem[_838 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _838 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                    _648 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_648] = 26
                    mem[_648 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _669 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _669 + 68] = mem[idx + _648 + 32]
                            idx = idx + 32
                            continue 
                        mem[_669 + 68] = mem[_669 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _669 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_783] = 26
                        mem[_783 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _835 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _835 + 68] = mem[idx + _783 + 32]
                            idx = idx + 32
                            continue 
                        mem[_835 + 68] = mem[_835 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _835 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 26
                    mem[_807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _859 + 68] = mem[idx + _807 + 32]
                        idx = idx + 32
                        continue 
                    mem[_859 + 68] = mem[_859 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _859 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _658 = mem[64]
                mem[64] = mem[64] + 64
                mem[_658] = 26
                mem[_658 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _676 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _676 + 68] = mem[idx + _658 + 32]
                        idx = idx + 32
                        continue 
                    mem[_676 + 68] = mem[_676 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _676 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_806] = 26
                    mem[_806 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _856 + 68] = mem[idx + _806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_856 + 68] = mem[_856 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _856 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_834] = 26
                mem[_834 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _872 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _872 + 68] = mem[idx + _834 + 32]
                    idx = idx + 32
                    continue 
                mem[_872 + 68] = mem[_872 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _872 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_563] = 30
                mem[_563 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _563 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_624] = 26
                    mem[_624 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _629 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _629 + 68] = mem[idx + _624 + 32]
                            idx = idx + 32
                            continue 
                        mem[_629 + 68] = mem[_629 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _629 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_708] = 26
                        mem[_708 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _725 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _725 + 68] = mem[idx + _708 + 32]
                            idx = idx + 32
                            continue 
                        mem[_725 + 68] = mem[_725 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _725 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_717] = 26
                    mem[_717 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _741 + 68] = mem[idx + _717 + 32]
                        idx = idx + 32
                        continue 
                    mem[_741 + 68] = mem[_741 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _741 + -mem[64] + 100
                if (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock) / block.number - poolInfo[idx].field_512 != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock):
                    _627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_627] = 26
                    mem[_627 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _632 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _632 + 68] = mem[idx + _627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_632 + 68] = mem[_632 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _632 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_716] = 26
                        mem[_716 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _738 + 68] = mem[idx + _716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_738 + 68] = mem[_738 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _738 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_724] = 26
                    mem[_724 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _757 + 68] = mem[idx + _724 + 32]
                        idx = idx + 32
                        continue 
                    mem[_757 + 68] = mem[_757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _757 + -mem[64] + 100
                if (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_628] = 26
                mem[_628 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _636 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _636 + 68] = mem[idx + _628 + 32]
                        idx = idx + 32
                        continue 
                    mem[_636 + 68] = mem[_636 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _636 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_723] = 26
                    mem[_723 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _754 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _754 + 68] = mem[idx + _723 + 32]
                        idx = idx + 32
                        continue 
                    mem[_754 + 68] = mem[_754 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _754 + -mem[64] + 100
                if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _737 = mem[64]
                mem[64] = mem[64] + 64
                mem[_737] = 26
                mem[_737 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _774 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _774 + 68] = mem[idx + _737 + 32]
                    idx = idx + 32
                    continue 
                mem[_774 + 68] = mem[_774 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _774 + -mem[64] + 100
            _562 = mem[64]
            mem[64] = mem[64] + 64
            mem[_562] = 30
            mem[_562 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _562 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _587 = mem[64]
            mem[64] = mem[64] + 64
            mem[_587] = 30
            mem[_587 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _587 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_705] = 26
                    mem[_705 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _720 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _720 + 68] = mem[idx + _705 + 32]
                            idx = idx + 32
                            continue 
                        mem[_720 + 68] = mem[_720 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _720 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _911 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_911] = 26
                        mem[_911 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _938 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _938 + 68] = mem[idx + _911 + 32]
                            idx = idx + 32
                            continue 
                        mem[_938 + 68] = mem[_938 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _938 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _926 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_926] = 26
                    mem[_926 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _952 + 68] = mem[idx + _926 + 32]
                        idx = idx + 32
                        continue 
                    mem[_952 + 68] = mem[_952 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _952 + -mem[64] + 100
                if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) / block.number - bonusEndBlock != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock):
                    _713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_713] = 26
                    mem[_713 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _734 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _734 + 68] = mem[idx + _713 + 32]
                            idx = idx + 32
                            continue 
                        mem[_734 + 68] = mem[_734 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _734 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_925] = 26
                        mem[_925 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _949 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _949 + 68] = mem[idx + _925 + 32]
                            idx = idx + 32
                            continue 
                        mem[_949 + 68] = mem[_949 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _949 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_937] = 26
                    mem[_937 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _965 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _965 + 68] = mem[idx + _937 + 32]
                        idx = idx + 32
                        continue 
                    mem[_965 + 68] = mem[_965 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _965 + -mem[64] + 100
                if (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _719 = mem[64]
                mem[64] = mem[64] + 64
                mem[_719] = 26
                mem[_719 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _750 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _750 + 68] = mem[idx + _719 + 32]
                        idx = idx + 32
                        continue 
                    mem[_750 + 68] = mem[_750 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _750 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_936] = 26
                    mem[_936 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _962 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _962 + 68] = mem[idx + _936 + 32]
                        idx = idx + 32
                        continue 
                    mem[_962 + 68] = mem[_962 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _962 + -mem[64] + 100
                if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_948] = 26
                mem[_948 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _976 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _976 + 68] = mem[idx + _948 + 32]
                    idx = idx + 32
                    continue 
                mem[_976 + 68] = mem[_976 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _976 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_712] = 26
                mem[_712 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _731 + 68] = mem[idx + _712 + 32]
                        idx = idx + 32
                        continue 
                    mem[_731 + 68] = mem[_731 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _731 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_922] = 26
                    mem[_922 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _945 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _945 + 68] = mem[idx + _922 + 32]
                        idx = idx + 32
                        continue 
                    mem[_945 + 68] = mem[_945 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _945 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_935] = 26
                mem[_935 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _959 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _959 + 68] = mem[idx + _935 + 32]
                    idx = idx + 32
                    continue 
                mem[_959 + 68] = mem[_959 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _959 + -mem[64] + 100
            if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                _718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_718] = 26
                mem[_718 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _747 + 68] = mem[idx + _718 + 32]
                        idx = idx + 32
                        continue 
                    mem[_747 + 68] = mem[_747 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _747 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_934] = 26
                    mem[_934 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _956 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _956 + 68] = mem[idx + _934 + 32]
                        idx = idx + 32
                        continue 
                    mem[_956 + 68] = mem[_956 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _956 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 26
                mem[_944 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _972 + 68] = mem[idx + _944 + 32]
                    idx = idx + 32
                    continue 
                mem[_972 + 68] = mem[_972 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _972 + -mem[64] + 100
            if (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _730 = mem[64]
            mem[64] = mem[64] + 64
            mem[_730] = 26
            mem[_730 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _765 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _765 + 68] = mem[idx + _730 + 32]
                    idx = idx + 32
                    continue 
                mem[_765 + 68] = mem[_765 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _765 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(stAddress)
            call stAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_943] = 26
                mem[_943 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _969 + 68] = mem[idx + _943 + 32]
                    idx = idx + 32
                    continue 
                mem[_969 + 68] = mem[_969 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _969 + -mem[64] + 100
            if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _955 = mem[64]
            mem[64] = mem[64] + 64
            mem[_955] = 26
            mem[_955 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _983 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _983 + 68] = mem[idx + _955 + 32]
                idx = idx + 32
                continue 
            mem[_983 + 68] = mem[_983 + 74 len 26]
            revert with memory
              from mem[64]
               len _983 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    if arg4:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_512 = arg4
    if arg5:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_1024 = arg5
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4, uint256 arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 30
                mem[_638 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _638 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _723 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _723 + 68] = mem[idx + _709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_723 + 68] = mem[_723 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _723 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _820 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_820] = 26
                        mem[_820 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _859 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _859 + 68] = mem[idx + _820 + 32]
                            idx = idx + 32
                            continue 
                        mem[_859 + 68] = mem[_859 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _859 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 26
                    mem[_838 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _885 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _885 + 68] = mem[idx + _838 + 32]
                        idx = idx + 32
                        continue 
                    mem[_885 + 68] = mem[_885 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _885 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 26
                    mem[_716 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _733 + 68] = mem[idx + _716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 68] = mem[_733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_837] = 26
                        mem[_837 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _882 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _882 + 68] = mem[idx + _837 + 32]
                            idx = idx + 32
                            continue 
                        mem[_882 + 68] = mem[_882 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _882 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_858] = 26
                    mem[_858 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _912 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _912 + 68] = mem[idx + _858 + 32]
                        idx = idx + 32
                        continue 
                    mem[_912 + 68] = mem[_912 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _912 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _743 + 68] = mem[idx + _722 + 32]
                            idx = idx + 32
                            continue 
                        mem[_743 + 68] = mem[_743 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _743 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_857] = 26
                        mem[_857 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _909 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _909 + 68] = mem[idx + _857 + 32]
                            idx = idx + 32
                            continue 
                        mem[_909 + 68] = mem[_909 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _909 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _933 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _933 + 68] = mem[idx + _881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_933 + 68] = mem[_933 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _933 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_732] = 26
                mem[_732 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _750 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _750 + 68] = mem[idx + _732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_750 + 68] = mem[_750 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _750 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_880] = 26
                    mem[_880 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _930 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _930 + 68] = mem[idx + _880 + 32]
                        idx = idx + 32
                        continue 
                    mem[_930 + 68] = mem[_930 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _930 + -mem[64] + 100
                if 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_908] = 26
                mem[_908 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _946 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _946 + 68] = mem[idx + _908 + 32]
                    idx = idx + 32
                    continue 
                mem[_946 + 68] = mem[_946 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _946 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 30
                mem[_640 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _640 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_698] = 26
                    mem[_698 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _703 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _703 + 68] = mem[idx + _698 + 32]
                            idx = idx + 32
                            continue 
                        mem[_703 + 68] = mem[_703 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _703 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _782 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_782] = 26
                        mem[_782 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _799 + 68] = mem[idx + _782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_799 + 68] = mem[_799 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _799 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _791 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_791] = 26
                    mem[_791 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _815 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _815 + 68] = mem[idx + _791 + 32]
                        idx = idx + 32
                        continue 
                    mem[_815 + 68] = mem[_815 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _815 + -mem[64] + 100
                if (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock) / block.number - poolInfo[idx].field_512 != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock):
                    _701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_701] = 26
                    mem[_701 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _706 + 68] = mem[idx + _701 + 32]
                            idx = idx + 32
                            continue 
                        mem[_706 + 68] = mem[_706 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _706 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_790] = 26
                        mem[_790 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _812 + 68] = mem[idx + _790 + 32]
                            idx = idx + 32
                            continue 
                        mem[_812 + 68] = mem[_812 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _812 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 26
                    mem[_798 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _831 + 68] = mem[idx + _798 + 32]
                        idx = idx + 32
                        continue 
                    mem[_831 + 68] = mem[_831 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _831 + -mem[64] + 100
                if (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (poolInfo[idx].field_512 * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _702 = mem[64]
                mem[64] = mem[64] + 64
                mem[_702] = 26
                mem[_702 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _710 + 68] = mem[idx + _702 + 32]
                        idx = idx + 32
                        continue 
                    mem[_710 + 68] = mem[_710 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _710 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _828 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _828 + 68] = mem[idx + _797 + 32]
                        idx = idx + 32
                        continue 
                    mem[_828 + 68] = mem[_828 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _828 + -mem[64] + 100
                if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_811] = 26
                mem[_811 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _848 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _848 + 68] = mem[idx + _811 + 32]
                    idx = idx + 32
                    continue 
                mem[_848 + 68] = mem[_848 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _848 + -mem[64] + 100
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 30
            mem[_639 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _639 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            _661 = mem[64]
            mem[64] = mem[64] + 64
            mem[_661] = 30
            mem[_661 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _661 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_779] = 26
                    mem[_779 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _794 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _794 + 68] = mem[idx + _779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_794 + 68] = mem[_794 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _794 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_985] = 26
                        mem[_985 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1012 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1012 + 68] = mem[idx + _985 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1012 + 68] = mem[_1012 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1012 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1000] = 26
                    mem[_1000 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1026 + 68] = mem[idx + _1000 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1026 + 68] = mem[_1026 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1026 + -mem[64] + 100
                if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) / block.number - bonusEndBlock != cakePerBlock:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock):
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _808 + 68] = mem[idx + _787 + 32]
                            idx = idx + 32
                            continue 
                        mem[_808 + 68] = mem[_808 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _808 + -mem[64] + 100
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(stAddress)
                    call stAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_999] = 26
                        mem[_999 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1023 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1023 + 68] = mem[idx + _999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1023 + 68] = mem[_1023 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1023 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1011] = 26
                    mem[_1011 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1039 + 68] = mem[idx + _1011 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1039 + 68] = mem[_1039 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1039 + -mem[64] + 100
                if (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 26
                mem[_793 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _824 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _824 + 68] = mem[idx + _793 + 32]
                        idx = idx + 32
                        continue 
                    mem[_824 + 68] = mem[_824 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _824 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1010] = 26
                    mem[_1010 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1036 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1036 + 68] = mem[idx + _1010 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1036 + 68] = mem[_1036 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1036 + -mem[64] + 100
                if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1022 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1022] = 26
                mem[_1022 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1050 + 68] = mem[idx + _1022 + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / bonusEndBlock - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _786 = mem[64]
                mem[64] = mem[64] + 64
                mem[_786] = 26
                mem[_786 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _805 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _805 + 68] = mem[idx + _786 + 32]
                        idx = idx + 32
                        continue 
                    mem[_805 + 68] = mem[_805 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _805 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_996] = 26
                    mem[_996 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1019 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1019 + 68] = mem[idx + _996 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1019 + 68] = mem[_1019 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1019 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1009] = 26
                mem[_1009 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1033 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1033 + 68] = mem[idx + _1009 + 32]
                    idx = idx + 32
                    continue 
                mem[_1033 + 68] = mem[_1033 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1033 + -mem[64] + 100
            if (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) / block.number - bonusEndBlock + (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != cakePerBlock:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock):
                _792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_792] = 26
                mem[_792 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _821 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _821 + 68] = mem[idx + _792 + 32]
                        idx = idx + 32
                        continue 
                    mem[_821 + 68] = mem[_821 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _821 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stAddress)
                call stAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1008] = 26
                    mem[_1008 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1030 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1030 + 68] = mem[idx + _1008 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1030 + 68] = mem[_1030 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1030 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1018] = 26
                mem[_1018 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1046 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1046 + 68] = mem[idx + _1018 + 32]
                    idx = idx + 32
                    continue 
                mem[_1046 + 68] = mem[_1046 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1046 + -mem[64] + 100
            if (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / (block.number * cakePerBlock) - (bonusEndBlock * cakePerBlock) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _804 = mem[64]
            mem[64] = mem[64] + 64
            mem[_804] = 26
            mem[_804 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _839 + 68] = mem[idx + _804 + 32]
                    idx = idx + 32
                    continue 
                mem[_839 + 68] = mem[_839 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _839 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(stAddress)
            call stAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1017 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1017] = 26
                mem[_1017 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1043 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1043 + 68] = mem[idx + _1017 + 32]
                    idx = idx + 32
                    continue 
                mem[_1043 + 68] = mem[_1043 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1043 + -mem[64] + 100
            if 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1029 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1029] = 26
            mem[_1029 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * cakePerBlock * poolInfo[idx].field_256) - (bonusEndBlock * cakePerBlock * poolInfo[idx].field_256) + (bonusEndBlock * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * cakePerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1057 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1057 + 68] = mem[idx + _1029 + 32]
                idx = idx + 32
                continue 
            mem[_1057 + 68] = mem[_1057 + 74 len 26]
            revert with memory
              from mem[64]
               len _1057 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if arg4:
        poolInfo[poolInfo.length].field_512 = arg4
        poolInfo[poolInfo.length].field_768 = 0
        if 0 == arg5:
            poolInfo[poolInfo.length].field_1024 = sub_f6ce417e
        else:
            poolInfo[poolInfo.length].field_1024 = arg5
    else:
        if block.number > startBlock:
            poolInfo[poolInfo.length].field_512 = block.number
            poolInfo[poolInfo.length].field_768 = 0
            if 0 == arg5:
                poolInfo[poolInfo.length].field_1024 = sub_f6ce417e
            else:
                poolInfo[poolInfo.length].field_1024 = arg5
        else:
            poolInfo[poolInfo.length].field_512 = startBlock
            poolInfo[poolInfo.length].field_768 = 0
            if 0 == arg5:
                poolInfo[poolInfo.length].field_1024 = sub_f6ce417e
            else:
                poolInfo[poolInfo.length].field_1024 = arg5
}



}
