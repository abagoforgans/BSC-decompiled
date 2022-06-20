contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint256 accTokenPerShare;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 poolLimitPerUser;
uint256 rewardPerBlock;
uint256 PRECISION_FACTOR;
uint256 burnRate;
address rewardTokenAddress;
address stakedTokenAddress;
address burnAddress;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(uint8(stor2.field_8))
}

function startBlock() payable {
    return startBlock
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
}

function burnAddress() payable {
    return burnAddress
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
    return bool(uint8(stor2.field_0))
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function burnRate() payable {
    return burnRate
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
        revert with 0, 'wOwnable: caller is not the owne'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    burnRate = arg1
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

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not uint8(stor2.field_0):
        revert with 0, 'Must be set'
    if not arg1:
        uint8(stor2.field_0) = uint8(arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
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

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.number >= startBlock:
        revert with 0, ' Pool has started'
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
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
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

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakedTokenAddress)
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
    if not ext_call.return_data[0]:
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - lastRewardBlock:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    require PRECISION_FACTOR
    if userInfo[address(arg1)].field_256 > ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        if userInfo[msg.sender].field_0 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[msg.sender].field_0 + arg1 > poolLimitPerUser:
            revert with 0, 'User amount above limit'
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
                if lastRewardBlock > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - lastRewardBlock:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / ext_call.return_data[0]
                else:
                    if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / block.number - lastRewardBlock != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / ext_call.return_data[0]
                    else:
                        if (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]
            else:
                if lastRewardBlock >= bonusEndBlock:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / ext_call.return_data[0]
                else:
                    if lastRewardBlock > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - lastRewardBlock:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / ext_call.return_data[0]
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) / bonusEndBlock - lastRewardBlock != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / ext_call.return_data[0]
                        else:
                            if (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) != PRECISION_FACTOR:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / ext_call.return_data[0]
        lastRewardBlock = block.number
    if not userInfo[msg.sender].field_0:
        if not arg1:
            if not userInfo[msg.sender].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
            else:
                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(stakedTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call stakedTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_0 += arg1
                if not userInfo[msg.sender].field_0:
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                else:
                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[msg.sender].field_0 += arg1
                if not userInfo[msg.sender].field_0:
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                else:
                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
    else:
        if not userInfo[msg.sender].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                if not arg1:
                    if not userInfo[msg.sender].field_0:
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                    else:
                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call stakedTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                mem[324 len 0] = 0
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args arg1, mem[392 len 60], mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeBEP20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 
                                                'SafeMath: division by zero',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 
                                                'SafeMath: division by zero',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
        else:
            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                if not arg1:
                    if not userInfo[msg.sender].field_0:
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                    else:
                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call stakedTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[msg.sender].field_0 += arg1
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                mem[324 len 0] = 0
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args arg1, mem[392 len 60], mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeBEP20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[msg.sender].field_0 += arg1
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 
                                                'SafeMath: division by zero',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 
                                                'SafeMath: division by zero',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
    emit Deposit(arg1, msg.sender);
    stor1 = 1
}



}
