contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
uint256 stor1;
address SMART_CHEF_FACTORYAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address feeAddress;
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 poolLimitPerUser;
uint256 rewardPerBlock;
uint256 sub_54747a70;
uint256 sub_aa07547d;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
uint256 sub_7a988f97;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(uint8(stor3.field_168))
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function sub_54747a70(?) payable {
    return sub_54747a70
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
}

function sub_7a988f97(?) payable {
    return sub_7a988f97
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
    return bool(uint8(stor3.field_160))
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_aa07547d(?) payable {
    return sub_aa07547d
}

function SMART_CHEF_FACTORY() payable {
    return SMART_CHEF_FACTORYAddress
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
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

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
}

function updateFees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54747a70 = arg1
    sub_aa07547d = arg2
    emit NewFees(sub_54747a70, sub_aa07547d);
}

function updateFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe5365743a20596f7520646f206e6f742068617665207269676874207065726d697373696f,
                    mem[201 len 27]
    emit UpdatedFeeAddress(feeAddress, arg1);
    feeAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor3.field_160):
        revert with 0, 'Must be set'
    if not arg1:
        Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734e6577207374617274426c6f636b206d757374206265206c6f776572207468616e206e657720656e64426c6f63,
                    mem[210 len 18]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c4e6577207374617274426c6f636b206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[212 len 16]
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = startBlock
    emit NewStartAndEndBlocks(arg1, arg2);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(rewardTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    if uint8(stor3.field_168):
        revert with 0, 'Already initialized'
    if SMART_CHEF_FACTORYAddress != msg.sender:
        revert with 0, 'Not factory'
    if arg7 > 10000:
        revert with 0, 'Cannot be bigger than 100'
    if arg8 > 10000:
        revert with 0, 'Cannot be bigger than 100'
    Mask(88, 0, stor3.field_168) = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    rewardPerBlock = arg3
    startBlock = arg4
    bonusEndBlock = arg5
    sub_54747a70 = arg7
    sub_aa07547d = arg8
    if arg6 > 0:
        Mask(96, 0, stor3.field_160) = 1
        poolLimitPerUser = arg6
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if ext_call.return_data[31 len 1] > 30:
        revert with 0, 'SafeMath: subtraction overflow'
    PRECISION_FACTOR = 10^(-ext_call.return_data[31 len 1] + 30)
    lastRewardBlock = startBlock
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg9);
    owner = arg9
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == stakedTokenAddress:
        revert with 0, 'Cannot be staked token'
    if arg1 == rewardTokenAddress:
        revert with 0, 'Cannot be reward token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AdminTokenRecovery(address(arg1), arg2);
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    if userInfo[address(msg.sender)].field_0 > 0:
        if userInfo[address(msg.sender)].field_0 > sub_7a988f97:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_7a988f97 -= userInfo[address(msg.sender)].field_0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(stakedTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
        mem[324 len 0] = 0
        call stakedTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[address(msg.sender)].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[address(msg.sender)].field_0, msg.sender);
    stor1 = 1
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= lastRewardBlock:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not sub_7a988f97:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * accTokenPerShare / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - lastRewardBlock:
            if sub_7a988f97 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_7a988f97
            if accTokenPerShare + (0 / sub_7a988f97) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            require userInfo[address(arg1)].field_0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / sub_7a988f97):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require block.number - lastRewardBlock
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            if sub_7a988f97 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_7a988f97
            if accTokenPerShare + (0 / sub_7a988f97) < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            require userInfo[address(arg1)].field_0
            if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / sub_7a988f97):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_7a988f97 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_7a988f97
        if accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if sub_7a988f97 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_7a988f97
        if accTokenPerShare + (0 / sub_7a988f97) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / sub_7a988f97):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - lastRewardBlock:
        if sub_7a988f97 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_7a988f97
        if accTokenPerShare + (0 / sub_7a988f97) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / sub_7a988f97):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    require bonusEndBlock - lastRewardBlock
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if sub_7a988f97 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_7a988f97
        if accTokenPerShare + (0 / sub_7a988f97) < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        require userInfo[address(arg1)].field_0
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + (0 / sub_7a988f97):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    require (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock)
    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_7a988f97 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_7a988f97
    if accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97) < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    require userInfo[address(arg1)].field_0
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    require PRECISION_FACTOR
    if userInfo[address(arg1)].field_256 > (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / sub_7a988f97 * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}



}
