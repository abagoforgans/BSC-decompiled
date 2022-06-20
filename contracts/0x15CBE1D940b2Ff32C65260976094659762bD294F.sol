contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 hasUserLimit; offset 160
uint8 isInitialized; offset 168
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
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(isInitialized)
}

function startBlock() payable {
    return startBlock
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
    return bool(hasUserLimit)
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

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not hasUserLimit:
        revert with 0, 'Must be set'
    if not arg1:
        stor2 = Mask(96, 0, arg1)
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
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if isInitialized:
        revert with 0, 'Already initialized'
    if SMART_CHEF_FACTORYAddress != msg.sender:
        revert with 0, 'Not factory'
    isInitialized = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    rewardPerBlock = arg3
    startBlock = arg4
    bonusEndBlock = arg5
    if arg6:
        hasUserLimit = 1
        poolLimitPerUser = arg6
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.decimals() with:
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
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg7);
    owner = arg7
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
    if stakedTokenAddress == arg1:
        revert with 0, 'Cannot be staked token'
    if rewardTokenAddress == arg1:
        revert with 0, 'Cannot be reward token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, arg2
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_32
        call stakedTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[msg.sender].field_0
            if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
    staticcall stakedTokenAddress.balanceOf(address arg1) with:
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > userInfo[msg.sender].field_0:
        revert with 0, 'Amount to withdraw too high'
    if block.number > lastRewardBlock:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.balanceOf(address arg1) with:
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
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
            emit Withdraw(arg1, msg.sender);
        else:
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 -= arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(stakedTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1) >> 32
            call stakedTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[525 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
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
                                            mem[ceil32(return_data.size) + 526 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                emit Withdraw(arg1, msg.sender);
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
                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                    emit Withdraw(arg1, msg.sender);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                                            mem[ceil32(return_data.size) + 526 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 527 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Withdraw(address arg1, uint256 arg2):
                                      arg1,
                                      mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
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
        if not arg1:
            if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                    revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                call rewardTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), 
                                    msg.sender,
                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                    if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
            emit Withdraw(arg1, msg.sender);
        else:
            if arg1 > userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[msg.sender].field_0 -= arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(stakedTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg1) >> 32
            call stakedTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                        revert with 0, 32, 38, 0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[525 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
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
                                            mem[ceil32(return_data.size) + 526 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                emit Withdraw(arg1, msg.sender);
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
                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
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
                    emit Withdraw(arg1, msg.sender);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6b416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), msg.sender, arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                                            mem[ceil32(return_data.size) + 526 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Withdraw(arg1, msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 527 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Withdraw(address arg1, uint256 arg2):
                                      arg1,
                                      mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                      msg.sender,
    stor1 = 1
}



}
