contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 160
address SMART_CHEF_FACTORYAddress;
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 poolLimitPerUser;
uint256 rewardPerBlock;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
uint256 stor12; offset 32
uint256 sub_da15309a;
big480 stor12;
uint256 sub_42a8c320;
uint256 totalStaked;
uint256 sub_3a19dbac;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(uint8(stor2.field_168))
}

function sub_3a19dbac(?) payable {
    return sub_3a19dbac
}

function sub_42a8c320(?) payable {
    return sub_42a8c320
}

function startBlock() payable {
    return startBlock
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
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

function hasUserLimit() payable {
    return bool(uint8(stor2.field_160))
}

function lastRewardBlock() payable {
    return lastRewardBlock
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

function sub_da15309a(?) payable {
    return sub_da15309a
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
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

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not uint8(stor2.field_160):
        revert with 0, 'Must be set'
    if not arg1:
        Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
}

function sub_91af6541(?) payable {
    require calldata.size - 4 >= 96
    if uint8(stor2.field_168):
        revert with 0, 'Already initialized'
    if SMART_CHEF_FACTORYAddress != msg.sender:
        revert with 0, 'Not factory'
    uint8(stor2.field_168) = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    if arg3:
        uint8(stor2.field_160) = 1
        poolLimitPerUser = arg3
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
    sub_3a19dbac = 0
    totalStaked = 0
    sub_da15309a = 0
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x674e6577207374617274426c6f636b206d757374206265206c6f776572207468616e206e657720656e64426c6f63,
                    mem[210 len 18]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c4e6577207374617274426c6f636b206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[212 len 16]
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
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
    sub_3a19dbac -= arg1
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    totalStaked -= userInfo[msg.sender].field_0
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakedTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_32
        mem[324 len 0] = 0
        call stakedTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_0
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
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
    stor1 = 1
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.number >= bonusEndBlock + (800 * 3600):
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
    else:
        if stakedTokenAddress == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x2943616e6e6f74206265207374616b656420746f6b656e28666f722033206d6f6e746873,
                        mem[200 len 28]
        if rewardTokenAddress == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7243616e6e6f742062652072657761726420746f6b656e28666f722033206d6f6e746873,
                        mem[200 len 28]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
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
    emit AdminTokenRecovery(address(arg1), arg2);
}

function sub_d7d4ca9a(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bonusEndBlock <= block.number:
        revert with 0, 'Pool has Ended, use RenewPool'
    if block.number > lastRewardBlock:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if rewardTokenAddress != stakedTokenAddress:
            sub_da15309a = ext_call.return_data[0] - totalStaked
        else:
            sub_da15309a = ext_call.return_data[0] - sub_3a19dbac - totalStaked
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if rewardTokenAddress != stakedTokenAddress:
            sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac
        else:
            sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac - totalStaked
        if totalStaked:
            if block.number <= bonusEndBlock:
                if lastRewardBlock > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - lastRewardBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / totalStaked
                else:
                    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / totalStaked
                    else:
                        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / totalStaked
                else:
                    if lastRewardBlock > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - lastRewardBlock:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / totalStaked
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                        else:
                            if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
        lastRewardBlock = block.number
    if sub_42a8c320 <= 0:
        revert with 0, 'No funds to start new pool with'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokenAddress != stakedTokenAddress:
        sub_3a19dbac = ext_call.return_data[0]
    else:
        sub_3a19dbac = ext_call.return_data[0] - totalStaked
    require rewardPerBlock
    bonusEndBlock += sub_42a8c320 / rewardPerBlock
    sub_42a8c320 = 0
}

function sub_03c80111(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bonusEndBlock >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73506f6f6c20686173206e6f7420656e6465642c2054727920457874656e64696e,
                    mem[197 len 31]
    if block.number > lastRewardBlock:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if rewardTokenAddress != stakedTokenAddress:
            sub_da15309a = ext_call.return_data[0] - totalStaked
        else:
            sub_da15309a = ext_call.return_data[0] - sub_3a19dbac - totalStaked
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if rewardTokenAddress != stakedTokenAddress:
            sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac
        else:
            sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac - totalStaked
        if totalStaked:
            if block.number <= bonusEndBlock:
                if lastRewardBlock > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - lastRewardBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / totalStaked
                else:
                    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / totalStaked
                    else:
                        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if totalStaked <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStaked
                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / totalStaked
                else:
                    if lastRewardBlock > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - lastRewardBlock:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / totalStaked
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                        else:
                            if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
        lastRewardBlock = block.number
    if sub_42a8c320 <= 0:
        revert with 0, 'No funds to start new pool with'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardTokenAddress != stakedTokenAddress:
        sub_3a19dbac = ext_call.return_data[0]
    else:
        sub_3a19dbac = ext_call.return_data[0] - totalStaked
    startBlock = (8 * 3600 * arg1) + block.number
    lastRewardBlock = (8 * 3600 * arg1) + block.number
    bonusEndBlock = (8 * 3600 * arg2) + (8 * 3600 * arg1) + block.number
    require 8 * 3600 * arg2
    rewardPerBlock = sub_42a8c320 / 8 * 3600 * arg2
    sub_42a8c320 = 0
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
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - lastRewardBlock:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - lastRewardBlock:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    require PRECISION_FACTOR
    if userInfo[address(arg1)].field_256 > ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}

function sub_822aee57(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.number <= lastRewardBlock:
        if sub_da15309a <= 0:
            revert with 0, 'No extra Tokens to Withdrawl'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakedTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
    else:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if rewardTokenAddress != stakedTokenAddress:
            sub_da15309a = ext_call.return_data[0] - totalStaked
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if rewardTokenAddress != stakedTokenAddress:
                sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac
                if not totalStaked:
                    lastRewardBlock = block.number
                    if sub_da15309a <= 0:
                        revert with 0, 'No extra Tokens to Withdrawl'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                else:
                    if block.number <= bonusEndBlock:
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            mem[324 len 0] = 0
                        else:
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            else:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                mem[324 len 0] = 0
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                        else:
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - lastRewardBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            else:
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                else:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += 0 / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                    mem[324 len 0] = 0
            else:
                sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac - totalStaked
                if not totalStaked:
                    lastRewardBlock = block.number
                    if sub_da15309a <= 0:
                        revert with 0, 'No extra Tokens to Withdrawl'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    mem[324 len 0] = 0
                else:
                    if block.number > bonusEndBlock:
                        if lastRewardBlock >= bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                        else:
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - lastRewardBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                mem[324 len 0] = 0
                            else:
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += 0 / totalStaked
                                else:
                                    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    else:
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            mem[324 len 0] = 0
                        else:
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            else:
                                if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                mem[324 len 0] = 0
        else:
            sub_da15309a = ext_call.return_data[0] - sub_3a19dbac - totalStaked
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if rewardTokenAddress != stakedTokenAddress:
                sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac
                if not totalStaked:
                    lastRewardBlock = block.number
                    if sub_da15309a <= 0:
                        revert with 0, 'No extra Tokens to Withdrawl'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    mem[324 len 0] = 0
                else:
                    if block.number <= bonusEndBlock:
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                        else:
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                            else:
                                if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                        lastRewardBlock = block.number
                        if sub_da15309a <= 0:
                            revert with 0, 'No extra Tokens to Withdrawl'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                        else:
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - lastRewardBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            else:
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += 0 / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                else:
                                    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                    mem[324 len 0] = 0
            else:
                sub_42a8c320 = ext_call.return_data[0] - sub_3a19dbac - totalStaked
                if not totalStaked:
                    lastRewardBlock = block.number
                    if sub_da15309a <= 0:
                        revert with 0, 'No extra Tokens to Withdrawl'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    mem[324 len 0] = 0
                else:
                    if block.number <= bonusEndBlock:
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - lastRewardBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            mem[324 len 0] = 0
                        else:
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                            else:
                                if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / totalStaked
                            lastRewardBlock = block.number
                            if sub_da15309a <= 0:
                                revert with 0, 'No extra Tokens to Withdrawl'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            mem[324 len 0] = 0
                        else:
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not bonusEndBlock - lastRewardBlock:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                    revert with 0, 'SafeMath: addition overflow'
                                accTokenPerShare += 0 / totalStaked
                                lastRewardBlock = block.number
                                if sub_da15309a <= 0:
                                    revert with 0, 'No extra Tokens to Withdrawl'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                            else:
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += 0 / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                else:
                                    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) + accTokenPerShare < accTokenPerShare:
                                        revert with 0, 'SafeMath: addition overflow'
                                    accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                                    lastRewardBlock = block.number
                                    if sub_da15309a <= 0:
                                        revert with 0, 'No extra Tokens to Withdrawl'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                                    mem[324 len 0] = 0
    call stakedTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, stor12.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, sub_da15309a
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
    sub_da15309a = 0
}



}
