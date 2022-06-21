contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c84c263(?)
#
address owner;
array of address stor1;
uint256 unlockTime;
uint256 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 hasUserLimit; offset 168
uint8 hasPoolLimit; offset 176
uint8 isInitialized; offset 184
uint128 stor9; offset 176
uint128 stor9; offset 168
address sub_bfca2e8cAddress; offset 8
mapping of uint256 accTokenPerShare;
uint256 stakingBlock;
uint256 stakingEndBlock;
uint256 unStakingBlock;
uint256 unStakingFee;
uint256 feePeriod;
address feeCollectorAddress;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint256 poolLimitPerUser;
uint256 poolCap;
uint8 stor22;
mapping of uint256 rewardPerBlock;
mapping of uint256 pRECISION_FACTOR;
array of struct rewardTokens;
address stakedTokenAddress;
mapping of struct lastStakingBlock;
array of struct sub_fd35f8fe;
uint256 sub_cea8c746;
array of address stor67072331549493647622825787457569556318728415786901242217649037894484240406165;

function getLastStakingBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(lastStakingBlock[address(arg1)].field_256)
}

function name() payable {
    return name[0 len name.length]
}

function stakingEndBlock() payable {
    return stakingEndBlock
}

function rewardPerBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardPerBlock[arg1]
}

function getFeeCollector() payable {
    return feeCollectorAddress
}

function totalSupply() payable {
    return totalSupply
}

function PRECISION_FACTOR(address arg1) payable {
    require calldata.size - 4 >= 32
    return pRECISION_FACTOR[arg1]
}

function unStakingBlock() payable {
    return unStakingBlock
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(lastStakingBlock[arg1].field_0), uint256(lastStakingBlock[arg1].field_256)
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function decimals() payable {
    return decimals
}

function isInitialized() payable {
    return bool(isInitialized)
}

function stakingBlock() payable {
    return stakingBlock
}

function feePeriod() payable {
    return feePeriod
}

function startBlock() payable {
    return startBlock
}

function getUnlockTime() payable {
    return unlockTime
}

function poolLimitPerUser() payable {
    return poolLimitPerUser
}

function accTokenPerShare(address arg1) payable {
    require calldata.size - 4 >= 32
    return accTokenPerShare[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1].field_0
}

function owner() payable {
    return owner
}

function hasUserLimit() payable {
    return bool(hasUserLimit)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function hasPoolLimit() payable {
    return bool(hasPoolLimit)
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function getStakingEndBlock() payable {
    return stakingEndBlock
}

function poolCap() payable {
    return poolCap
}

function getUnStakingFee() payable {
    return unStakingFee
}

function sub_bfca2e8c(?) payable {
    return sub_bfca2e8cAddress
}

function feeCollector() payable {
    return feeCollectorAddress
}

function stakedToken() payable {
    return stakedTokenAddress
}

function sub_cea8c746(?) payable {
    return sub_cea8c746
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getFeePeriod() payable {
    return feePeriod
}

function unStakingFee() payable {
    return unStakingFee
}

function getUserDebtByToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0)
}

function sub_fd35f8fe(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_fd35f8fe[arg1].field_0)
    return sub_fd35f8fe[arg1][arg2].field_0, 
           uint256(sub_fd35f8fe[arg1][arg2].field_256),
           uint256(sub_fd35f8fe[arg1][arg2].field_512),
           uint256(sub_fd35f8fe[arg1][arg2].field_768)
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    bonusEndBlock = block.number
}

function updateFeePeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    feePeriod = arg1
}

function updateUnstakingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    unStakingFee = arg1
}

function setLockingDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_cea8c746 = arg1
}

function updateFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if feeCollectorAddress == arg1:
        revert with 0, 'Already the fee collector'
    feeCollectorAddress = arg1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor1.length = owner
    owner = 0
    unlockTime = arg1 + block.timestamp
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function updatePoolCap(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not hasPoolLimit:
        revert with 0, 'Must be set'
    if arg1:
        poolCap = arg2
    else:
        Mask(80, 0, stor9.field_176) = Mask(80, 0, arg1)
        poolCap = 0
    emit NewPoolCap(poolCap);
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not hasUserLimit:
        revert with 0, 'Must be set'
    if arg1:
        poolLimitPerUser = arg2
    else:
        Mask(88, 0, stor9.field_168) = Mask(88, 0, arg1)
        poolLimitPerUser = 0
    emit NewPoolLimit(poolLimitPerUser);
}

function updateRewardPerBlock(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        if rewardTokens[idx].field_0 != arg2:
            idx = idx + 1
            continue 
        rewardPerBlock[address(arg2)] = arg1
        emit 0x27294c6f: arg1, arg2
    revert with 0, 'Cannot find token'
}

function unlock() payable {
    if stor1.length != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6b596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1.length);
    owner = stor1.length
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6b4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3412a764(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
        require idx < uint256(sub_fd35f8fe[address(arg1)].field_0)
        if uint256(sub_fd35f8fe[address(arg1)][idx].field_768) >= block.number:
            mem[0] = arg1
            mem[32] = 28
            idx = idx + 1
            s = s
            continue 
        require idx < uint256(sub_fd35f8fe[address(arg1)].field_0)
        mem[0] = arg1
        mem[32] = 28
        idx = idx + 1
        s = s + uint256(sub_fd35f8fe[address(arg1)][idx].field_256)
        continue 
    return s
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        mem[100] = msg.sender
        mem[132] = arg1
        require ext_code.size(rewardTokens[idx].field_0)
        call rewardTokens[idx].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stakedTokenAddress == arg1:
        revert with 0, 'Cannot be staked token'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        if rewardTokens[idx].field_0 == arg1:
            revert with 0, 'Cannot be reward token'
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AdminTokenRecovery(address(arg1), arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function emergencyRemoval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor22:
        revert with 0, 'The pool is not removable'
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Amount exceeds pool balance'
    if arg1:
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function updateUnStakingBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if block.number >= unStakingBlock:
        revert with 0, 'Unstaking has started'
    if stakingBlock > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x735374616b696e6720626c6f636b206578636565647320756e7374616b696e6720626c6f63,
                    mem[201 len 27]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x734e657720556e5374616b696e67426c6f636b206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[216 len 12]
    unStakingBlock = arg1
    emit NewUnStakingBlock(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function getAllPreFactor(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 24
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function getAllRewardPerBlock(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 23
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = rewardPerBlock[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function getAllAccTokenPerShared(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = accTokenPerShare[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addRewardToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Must be a real token'
    if this.address == arg1:
        revert with 0, 'Must be a real token'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        if rewardTokens[idx].field_0 == arg1:
            revert with 0, 'Token exists'
        idx = idx + 1
        continue 
    rewardTokens.length++
    stor9449[stor25.length] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if uint8(ext_call.return_data[0]) > 30:
        revert with 0, 'SafeMath: subtraction overflow'
    pRECISION_FACTOR[address(arg1)] = 10^(-uint8(ext_call.return_data[0]) + 30)
    rewardPerBlock[address(arg1)] = arg2
    accTokenPerShare[address(arg1)] = 0
    emit 0x6503357b: address(arg1), arg2, pRECISION_FACTOR[address(arg1)]
}

function getUserDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require rewardTokens.length <= test266151307()
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = rewardTokens[idx].field_0
        mem[32] = sha3(address(arg1), 27) + 2
        require idx < rewardTokens.length
        mem[(32 * idx) + 128] = uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
        idx = idx + 1
        continue 
    if rewardTokens.length:
        mem[(32 * rewardTokens.length) + 160] = address(rewardTokens.field_0)
        idx = (32 * rewardTokens.length) + 160
        s = 0
        while (64 * rewardTokens.length) + 128 > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * rewardTokens.length) + 160] = 64
    mem[(64 * rewardTokens.length) + 224] = rewardTokens.length
    mem[(64 * rewardTokens.length) + 256 len floor32(rewardTokens.length)] = mem[(32 * rewardTokens.length) + 160 len floor32(rewardTokens.length)]
    mem[(64 * rewardTokens.length) + 192] = (32 * rewardTokens.length) + 96
    mem[(98 * rewardTokens.length) + 256] = rewardTokens.length
    return Array(len=rewardTokens.length, data=mem[(32 * rewardTokens.length) + 160 len floor32(rewardTokens.length)], mem[(64 * rewardTokens.length) + floor32(rewardTokens.length) + 256 len (64 * rewardTokens.length) + -floor32(rewardTokens.length) + 32]), 
           (32 * rewardTokens.length) + 96
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x654e6577207374617274426c6f636b206d757374206265206c6f776572207468616e206e657720656e64426c6f63,
                    mem[210 len 18]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6b4e6577207374617274426c6f636b206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[212 len 16]
    if stakingBlock > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x735374616b696e6720626c6f636b206578636565647320737461727420626c6f63,
                    mem[197 len 31]
    if stakingEndBlock > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65456e64207374616b696e6720626c6f636b206578636565647320626f6e757320656e6420626c6f63,
                    mem[205 len 23]
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function updateStakingBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x735374616b696e6720626c6f636b206578636565647320737461727420626c6f63,
                    mem[197 len 31]
    if arg1 > unStakingBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x735374616b696e6720626c6f636b206578636565647320756e7374616b696e6720626c6f63,
                    mem[201 len 27]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6b4e6577207374616b696e67426c6f636b206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[214 len 14]
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6b5374616b696e6720626c6f636b206578636565647320656e64207374616b696e6720626c6f63,
                    mem[203 len 25]
    if arg2 > bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65456e64207374616b696e6720626c6f636b206578636565647320626f6e757320656e6420626c6f63,
                    mem[205 len 23]
    stakingBlock = arg1
    stakingEndBlock = arg2
    emit NewStakingBlocks(arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function removeRewardToken(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Must be a real token'
    if this.address == arg1:
        revert with 0, 'Must be a real token'
    if not rewardTokens.length:
        revert with 0, 'List of token is empty'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        if rewardTokens[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if idx >= rewardTokens.length:
            if rewardTokens.length:
                mem[128] = address(rewardTokens.field_0)
                idx = 128
                s = sha3(25)
                while (32 * rewardTokens.length) + 96 > idx:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
            if not rewardTokens.length:
                idx = sha3(25)
                while sha3(25) + rewardTokens.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = sha3(25)
                idx = 128
                while (32 * rewardTokens.length) + 128 > idx:
                    stor[s] = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(25) + (Mask(251, 0, (32 * rewardTokens.length) + 31) >> 5)
                while sha3(25) + rewardTokens.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            revert with 0, 'Remove token unsuccessfully'
        s = idx
        while s < rewardTokens.length - 1:
            require s + 1 < rewardTokens.length
            require s < rewardTokens.length
            mem[0] = 25
            rewardTokens[s].field_0 = rewardTokens[s].field_256
            s = s + 1
            continue 
        require rewardTokens.length
        rewardTokens[rewardTokens.length].field_0 = 0
        rewardTokens.length--
        mem[128] = address(rewardTokens.field_0)
        idx = 128
        s = sha3(25)
        while (32 * rewardTokens.length) + 96 > idx:
            mem[idx + 32] = stor1[s]
            idx = idx + 32
            s = s + 1
            continue 
        if not rewardTokens.length:
            idx = sha3(25)
            while sha3(25) + rewardTokens.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = sha3(25)
            idx = 128
            while (32 * rewardTokens.length) + 128 > idx:
                stor[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(25) + (Mask(251, 0, (32 * rewardTokens.length) + 31) >> 5)
            while sha3(25) + rewardTokens.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        pRECISION_FACTOR[address(arg1)] = 0
        rewardPerBlock[address(arg1)] = 0
        accTokenPerShare[address(arg1)] = 0
        emit RemoveRewardToken(arg1);
    revert with 0, 'Cannot find token'
}

function sub_06e672e9(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 28
    idx = 0
    s = 0
    while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
        mem[0] = arg1
        mem[32] = 28
        idx = idx + 1
        s = s + 1
        continue 
    require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
    mem[96] = uint256(sub_fd35f8fe[address(arg1)].field_0)
    if not uint256(sub_fd35f8fe[address(arg1)].field_0):
        require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
        mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128] = uint256(sub_fd35f8fe[address(arg1)].field_0)
        if not uint256(sub_fd35f8fe[address(arg1)].field_0):
            require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
            mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[address(arg1)].field_0)
            mem[64] = (98 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192
            if not uint256(sub_fd35f8fe[address(arg1)].field_0):
                idx = 0
                while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
                    require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
                    require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                    require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                    mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
                    mem[32] = 28
                    require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                    mem[0] = sha3(msg.sender, 28)
                    require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                    mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[96]
                _194 = mem[96]
                mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * _194) + 128
                mem[(32 * _194) + _192 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                _345 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                mem[(32 * _194) + _192 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
                var24001 = floor32(_345)
                mem[_192 + 64] = (32 * _345) + (32 * _194) + 160
                mem[(32 * _345) + (32 * _194) + _192 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                _409 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                mem[(32 * _345) + (32 * _194) + _192 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
                return memory
                  from mem[64]
                   len (32 * _409) + (32 * _345) + (32 * _194) + _192 + -mem[64] + 192
            mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
            idx = 0
            while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
                mem[32] = 28
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 28)
                require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _197 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _199 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _199) + 128
            mem[(32 * _199) + _197 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            _348 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * _199) + _197 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
            var25001 = floor32(_348)
            mem[_197 + 64] = (32 * _348) + (32 * _199) + 160
            mem[(32 * _348) + (32 * _199) + _197 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            _412 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * _348) + (32 * _199) + _197 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _412) + (32 * _348) + (32 * _199) + _197 + -mem[64] + 192
        mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
        require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
        mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[address(arg1)].field_0)
        mem[64] = (98 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192
        if not uint256(sub_fd35f8fe[address(arg1)].field_0):
            idx = 0
            while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
                mem[32] = 28
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 28)
                require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _202 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _204 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _204) + 128
            mem[(32 * _204) + _202 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            _351 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * _204) + _202 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
            var25001 = floor32(_351)
            mem[_202 + 64] = (32 * _351) + (32 * _204) + 160
            mem[(32 * _351) + (32 * _204) + _202 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            _415 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * _351) + (32 * _204) + _202 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _415) + (32 * _351) + (32 * _204) + _202 + -mem[64] + 192
        mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
            mem[32] = 28
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 28)
            require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _207 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _209 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        var23001 = floor32(_209)
        mem[mem[64] + 32] = (32 * _209) + 128
        mem[(32 * _209) + _207 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        _354 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        mem[(32 * _209) + _207 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
        var26001 = floor32(_354)
        mem[_207 + 64] = (32 * _354) + (32 * _209) + 160
        mem[(32 * _354) + (32 * _209) + _207 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        _418 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        mem[(32 * _354) + (32 * _209) + _207 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _418) + (32 * _354) + (32 * _209) + _207 + -mem[64] + 192
    mem[128 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
    require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
    mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128] = uint256(sub_fd35f8fe[address(arg1)].field_0)
    if not uint256(sub_fd35f8fe[address(arg1)].field_0):
        require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
        mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[address(arg1)].field_0)
        mem[64] = (98 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192
        if not uint256(sub_fd35f8fe[address(arg1)].field_0):
            idx = 0
            while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
                mem[32] = 28
                require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 28)
                require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _214 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_212 + 32] = (32 * _214) + 128
            mem[(32 * _214) + _212 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            _357 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * _214) + _212 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
            var25001 = floor32(_357)
            mem[_212 + 64] = (32 * _357) + (32 * _214) + 160
            mem[(32 * _357) + (32 * _214) + _212 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            _421 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * _357) + (32 * _214) + _212 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _421) + (32 * _357) + (32 * _214) + _212 + -mem[64] + 192
        mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
            mem[32] = 28
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 28)
            require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _217 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _219 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        var23001 = floor32(_219)
        mem[mem[64] + 32] = (32 * _219) + 128
        mem[(32 * _219) + _217 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        _360 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        mem[(32 * _219) + _217 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
        var26001 = floor32(_360)
        mem[_217 + 64] = (32 * _360) + (32 * _219) + 160
        mem[(32 * _360) + (32 * _219) + _217 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        _424 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        mem[(32 * _360) + (32 * _219) + _217 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _424) + (32 * _360) + (32 * _219) + _217 + -mem[64] + 192
    mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
    require uint256(sub_fd35f8fe[address(arg1)].field_0) <= test266151307()
    mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[address(arg1)].field_0)
    mem[64] = (98 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192
    if not uint256(sub_fd35f8fe[address(arg1)].field_0):
        idx = 0
        while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
            mem[32] = 28
            require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 28)
            require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _222 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _224 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        var23001 = floor32(_224)
        mem[mem[64] + 32] = (32 * _224) + 128
        mem[(32 * _224) + _222 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        _363 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        mem[(32 * _224) + _222 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
        var26001 = floor32(_363)
        mem[_222 + 64] = (32 * _363) + (32 * _224) + 160
        mem[(32 * _363) + (32 * _224) + _222 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        _427 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        mem[(32 * _363) + (32 * _224) + _222 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _427) + (32 * _363) + (32 * _224) + _222 + -mem[64] + 192
    mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_fd35f8fe[address(arg1)].field_0)]
    idx = 0
    while idx < uint256(sub_fd35f8fe[address(arg1)].field_0):
        require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
        require idx < mem[96]
        mem[(32 * idx) + 128] = uint256(sub_fd35f8fe[msg.sender][idx].field_512)
        require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
        require idx < mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
        mem[(32 * idx) + (32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160] = uint256(sub_fd35f8fe[msg.sender][idx].field_768)
        mem[32] = 28
        require idx < uint256(sub_fd35f8fe[msg.sender].field_0)
        mem[0] = sha3(msg.sender, 28)
        require idx < mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
        mem[(32 * idx) + (64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192] = uint256(sub_fd35f8fe[msg.sender][idx].field_256)
        idx = idx + 1
        continue 
    _227 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _229 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    var24001 = floor32(_229)
    mem[mem[64] + 32] = (32 * _229) + 128
    mem[(32 * _229) + _227 + 128] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
    _366 = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128]
    mem[(32 * _229) + _227 + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 128])]
    mem[_227 + 64] = (32 * _366) + (32 * _229) + 160
    mem[(32 * _366) + (32 * _229) + _227 + 160] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
    _430 = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160]
    mem[(32 * _366) + (32 * _229) + _227 + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_fd35f8fe[address(arg1)].field_0)) + 160])]
    return memory
      from mem[64]
       len (32 * _430) + (32 * _366) + (32 * _229) + _227 + -mem[64] + 192
}

function initialize(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5, uint256 arg6, uint256[] arg7, address arg8, uint256 arg9, uint256 arg10, bool arg11, address arg12) payable {
    require calldata.size - 4 >= 384
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 256
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = arg7.length
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 256] = 0
    if isInitialized:
        revert with 0, 'Already initialized'
    if sub_bfca2e8cAddress != msg.sender:
        revert with 0, 'Not factory'
    if arg2.length != arg3.length:
        revert with 0, 'Mismatch length'
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg8:
        revert with 0, 'Invalid address'
    if not arg12:
        revert with 0, 'Invalid address'
    isInitialized = 1
    stakedTokenAddress = arg1
    rewardTokens.length = arg2.length
    mem[0] = 25
    if not arg2.length:
        idx = 0
        while rewardTokens.length > idx:
            rewardTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 0 < arg4.length
        startBlock = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        require 1 < arg4.length
        bonusEndBlock = mem[(32 * arg2.length) + (32 * arg3.length) + 224]
        require 1 < arg5.length
        require 0 < arg5.length
        if mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] >= mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
            revert with 0, 
                        32,
                        39,
                        0x6b5374616b696e6720626c6f636b206578636565647320656e64207374616b696e6720626c6f63,
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 363 len 25]
        require 0 < arg5.length
        stakingBlock = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require 1 < arg5.length
        stakingEndBlock = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        unStakingBlock = arg6
        require 0 < arg7.length
        unStakingFee = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        require 1 < arg7.length
        feePeriod = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
        feeCollectorAddress = arg8
        stor22 = uint8(arg11)
        if not arg9:
            if not arg10:
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_679] = 30
                    mem[_679 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _687 + 68] = mem[idx + _679 + 32]
                            idx = idx + 32
                            continue 
                        mem[_687 + 68] = mem[_687 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _687 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
            else:
                hasPoolLimit = 1
                poolCap = arg10
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_680] = 30
                    mem[_680 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _690 + 68] = mem[idx + _680 + 32]
                            idx = idx + 32
                            continue 
                        mem[_690 + 68] = mem[_690 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _690 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
        else:
            hasUserLimit = 1
            poolLimitPerUser = arg9
            if not arg10:
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_681] = 30
                    mem[_681 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _693 + 68] = mem[idx + _681 + 32]
                            idx = idx + 32
                            continue 
                        mem[_693 + 68] = mem[_693 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _693 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
            else:
                hasPoolLimit = 1
                poolCap = arg10
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_682] = 30
                    mem[_682 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _696 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _696 + 68] = mem[idx + _682 + 32]
                            idx = idx + 32
                            continue 
                        mem[_696 + 68] = mem[_696 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _696 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            rewardTokens[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while rewardTokens.length > idx:
            rewardTokens[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 0 < arg4.length
        startBlock = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        require 1 < arg4.length
        bonusEndBlock = mem[(32 * arg2.length) + (32 * arg3.length) + 224]
        require 1 < arg5.length
        require 0 < arg5.length
        if mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] >= mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
            revert with 0, 
                        32,
                        39,
                        0x6b5374616b696e6720626c6f636b206578636565647320656e64207374616b696e6720626c6f63,
                        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg7.length) + 363 len 25]
        require 0 < arg5.length
        stakingBlock = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require 1 < arg5.length
        stakingEndBlock = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        unStakingBlock = arg6
        require 0 < arg7.length
        unStakingFee = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        require 1 < arg7.length
        feePeriod = mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]
        feeCollectorAddress = arg8
        stor22 = uint8(arg11)
        if not arg9:
            if not arg10:
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_962] = 30
                    mem[_962 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _966 + 68] = mem[idx + _962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_966 + 68] = mem[_966 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _966 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
            else:
                hasPoolLimit = 1
                poolCap = arg10
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_963] = 30
                    mem[_963 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _969 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _969 + 68] = mem[idx + _963 + 32]
                            idx = idx + 32
                            continue 
                        mem[_969 + 68] = mem[_969 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _969 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
        else:
            hasUserLimit = 1
            poolLimitPerUser = arg9
            if not arg10:
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_964] = 30
                    mem[_964 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _972 + 68] = mem[idx + _964 + 32]
                            idx = idx + 32
                            continue 
                        mem[_972 + 68] = mem[_972 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _972 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
            else:
                hasPoolLimit = 1
                poolCap = arg10
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint8(ext_call.return_data[0]) >= 30:
                        revert with 0, 'Must be inferior to 30'
                    _965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_965] = 30
                    mem[_965 + 32] = 'SafeMath: subtraction overflow'
                    if uint8(ext_call.return_data[0]) > 30:
                        _975 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _975 + 68] = mem[idx + _965 + 32]
                            idx = idx + 32
                            continue 
                        mem[_975 + 68] = mem[_975 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _975 + -mem[64] + 100
                    require idx < mem[96]
                    pRECISION_FACTOR[mem[(32 * idx) + 140 len 20]] = 10^(-uint8(ext_call.return_data[0]) + 30)
                    require idx < mem[(32 * arg2.length) + 128]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 23
                    rewardPerBlock[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg2.length) + 160]
                    idx = idx + 1
                    s = uint8(ext_call.return_data[0])
                    continue 
    lastRewardBlock = startBlock
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg12:
        revert with 0, 32, 38, 0x6b4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573, mem[mem[64] + 106 len 26]
    emit OwnershipTransferred(owner, arg12);
    owner = arg12
}

function pendingRewardByToken(address arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 25
        if rewardTokens[idx].field_0 != arg2:
            idx = idx + 1
            continue 
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.number <= lastRewardBlock:
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                if not pRECISION_FACTOR[address(arg2)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[192] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                    return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            else:
                if accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not pRECISION_FACTOR[address(arg2)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[192] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[address(arg2)]:
                    return ((accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[228] = 32
            idx = 0
            while idx < 30:
                mem[idx + 292] = mem[idx + 192]
                idx = idx + 32
                continue 
            mem[292] = mem[294 len 30]
            revert with 0, 32, 30, mem[292]
        if not ext_call.return_data[0]:
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                if not pRECISION_FACTOR[address(arg2)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[192] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                    return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            else:
                if accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not pRECISION_FACTOR[address(arg2)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[192] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[address(arg2)]:
                    return ((accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[228] = 32
            idx = 0
            while idx < 30:
                mem[idx + 292] = mem[idx + 192]
                idx = idx + 32
                continue 
            mem[292] = mem[294 len 30]
            revert with 0, 32, 30, mem[292]
        if block.number <= bonusEndBlock:
            mem[128] = 'SafeMath: subtraction overflow'
            if lastRewardBlock > block.number:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[228] = mem[230 len 30]
                revert with 0, 32, 30, mem[228]
            if not block.number - lastRewardBlock:
                if not ext_call.return_data[0]:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[320] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                        return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                else:
                    if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[320] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                        return (((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            else:
                if (block.number * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]) / block.number - lastRewardBlock != rewardPerBlock[address(arg2)]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.number * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]):
                    if not ext_call.return_data[0]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                            return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                    else:
                        if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                            return (((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                else:
                    if (block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / (block.number * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]) != pRECISION_FACTOR[address(arg2)]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if ((block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                            return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                    else:
                        if ((block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= ((block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                            return ((((block.number * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
        else:
            if lastRewardBlock >= bonusEndBlock:
                if not ext_call.return_data[0]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[256] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                        return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                else:
                    if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[256] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                        return (((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[292] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 356] = mem[idx + 256]
                    idx = idx + 32
                    continue 
                mem[356] = mem[358 len 30]
                revert with 0, 32, 30, mem[356]
            mem[128] = 'SafeMath: subtraction overflow'
            if lastRewardBlock > bonusEndBlock:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[228] = mem[230 len 30]
                revert with 0, 32, 30, mem[228]
            if not bonusEndBlock - lastRewardBlock:
                if not ext_call.return_data[0]:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 32
                    while idx < 26:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[320] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                        return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                else:
                    if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not pRECISION_FACTOR[address(arg2)]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[320] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                        return (((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
            else:
                if (bonusEndBlock * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[address(arg2)]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (bonusEndBlock * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]):
                    if not ext_call.return_data[0]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                            return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                    else:
                        if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                            return (((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                else:
                    if (bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / (bonusEndBlock * rewardPerBlock[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)]) != pRECISION_FACTOR[address(arg2)]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[228] = 32
                        idx = 32
                        while idx < 26:
                            mem[idx + 292] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if ((bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0]) + accTokenPerShare[address(arg2)] < accTokenPerShare[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= 0 / pRECISION_FACTOR[address(arg2)]:
                            return ((0 / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
                    else:
                        if ((bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0]) + accTokenPerShare[address(arg2)]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not pRECISION_FACTOR[address(arg2)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 32
                            while idx < 26:
                                mem[idx + 356] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[320] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0) <= ((bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]:
                            return ((((bonusEndBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) - (lastRewardBlock * rewardPerBlock[address(arg2)] * pRECISION_FACTOR[address(arg2)]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[address(arg2)] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[address(arg2)]) - uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0))
        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[356] = 32
        idx = 0
        while idx < 30:
            mem[idx + 420] = mem[idx + 320]
            idx = idx + 32
            continue 
        mem[420] = mem[422 len 30]
        revert with 0, 32, 30, mem[420]
    return 0
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 27
    mem[100] = this.address
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require rewardTokens.length <= test266151307()
    mem[96] = rewardTokens.length
    mem[64] = (32 * rewardTokens.length) + 128
    if not rewardTokens.length:
        if block.number <= lastRewardBlock:
            idx = 0
            while idx < rewardTokens.length:
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 10
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1471] = 26
                    mem[_1471 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1471 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1577 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1577] = 30
                    mem[_1577 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        continue 
                    _1658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _1658 + 68] = mem[s + _1577 + 32]
                        s = s + 32
                        continue 
                    mem[_1658 + 68] = mem[_1658 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1658 + -mem[64] + 100
                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1475] = 26
                mem[_1475 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1475 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _1613 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1613] = 30
                mem[_1613 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    continue 
                _1697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1697 + 68] = mem[idx + _1613 + 32]
                    idx = idx + 32
                    continue 
                mem[_1697 + 68] = mem[_1697 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1697 + -mem[64] + 100
            _1283 = mem[64]
            mem[64] = mem[64] + (32 * rewardTokens.length) + 32
            mem[_1283] = rewardTokens.length
            if not rewardTokens.length:
                _1347 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1349 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _1347 + 96] = rewardTokens.length
                mem[(32 * _1349) + _1347 + 128 len floor32(rewardTokens.length)] = mem[_1283 + 32 len floor32(rewardTokens.length)]
                return memory
                  from mem[64]
                   len (32 * rewardTokens.length) + (32 * _1349) + _1347 + -mem[64] + 128
            mem[0] = 25
            mem[_1283 + 32] = address(rewardTokens.field_0)
            idx = _1283 + 32
            s = 0
            while _1283 + (32 * rewardTokens.length) > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _2957 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2959 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2957 + 96] = rewardTokens.length
            mem[(32 * _2959) + _2957 + 128 len floor32(rewardTokens.length)] = mem[_1283 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _2959) + _2957 + -mem[64] + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < rewardTokens.length:
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 10
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1472] = 26
                    mem[_1472 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1472 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _1582 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1582] = 30
                    mem[_1582 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        continue 
                    _1662 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _1662 + 68] = mem[s + _1582 + 32]
                        s = s + 32
                        continue 
                    mem[_1662 + 68] = mem[_1662 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1662 + -mem[64] + 100
                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1476] = 26
                mem[_1476 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1476 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _1617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1617] = 30
                mem[_1617 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    continue 
                _1700 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1700 + 68] = mem[idx + _1617 + 32]
                    idx = idx + 32
                    continue 
                mem[_1700 + 68] = mem[_1700 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1700 + -mem[64] + 100
            _1284 = mem[64]
            mem[64] = mem[64] + (32 * rewardTokens.length) + 32
            mem[_1284] = rewardTokens.length
            if not rewardTokens.length:
                _1352 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1354 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _1352 + 96] = rewardTokens.length
                mem[(32 * _1354) + _1352 + 128 len floor32(rewardTokens.length)] = mem[_1284 + 32 len floor32(rewardTokens.length)]
                return memory
                  from mem[64]
                   len (32 * rewardTokens.length) + (32 * _1354) + _1352 + -mem[64] + 128
            mem[0] = 25
            mem[_1284 + 32] = address(rewardTokens.field_0)
            idx = _1284 + 32
            s = 0
            while _1284 + (32 * rewardTokens.length) > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _2960 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2962 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2960 + 96] = rewardTokens.length
            mem[(32 * _2962) + _2960 + 128 len floor32(rewardTokens.length)] = mem[_1284 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _2962) + _2960 + -mem[64] + 128
        if block.number <= bonusEndBlock:
            mem[64] = (32 * rewardTokens.length) + 192
            mem[(32 * rewardTokens.length) + 128] = 30
            mem[(32 * rewardTokens.length) + 160] = 'SafeMath: subtraction overflow'
            if lastRewardBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = 0
            while idx < rewardTokens.length:
                if not block.number - lastRewardBlock:
                    require idx < rewardTokens.length
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 24
                    _1505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1505] = 26
                    mem[_1505 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1505 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    require idx < rewardTokens.length
                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < rewardTokens.length
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 24
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        _1945 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1945] = 26
                        mem[_1945 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1945 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2161 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2161] = 30
                        mem[_2161 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                            continue 
                        _2280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _2280 + 68] = mem[s + _2161 + 32]
                            s = s + 32
                            continue 
                        mem[_2280 + 68] = mem[_2280 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2280 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1961] = 26
                    mem[_1961 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1961 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2219] = 30
                    mem[_2219 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2335 + 68] = mem[idx + _2219 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2335 + 68] = mem[_2335 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2335 + -mem[64] + 100
                if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                    _1528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1528] = 26
                    mem[_1528 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1528 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    require idx < rewardTokens.length
                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < rewardTokens.length
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 24
                    if not uint256(lastStakingBlock[address(arg1)].field_0):
                        _1960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1960] = 26
                        mem[_1960 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1960 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _2216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2216] = 30
                        mem[_2216 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                            continue 
                        _2332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2332 + 68] = mem[idx + _2216 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2332 + 68] = mem[_2332 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2332 + -mem[64] + 100
                    if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1980] = 26
                    mem[_1980 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1980 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2275] = 30
                    mem[_2275 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2378 + 68] = mem[idx + _2275 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2378 + 68] = mem[_2378 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2378 + -mem[64] + 100
                if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1552] = 26
                mem[_1552 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1552 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1979] = 26
                    mem[_1979 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1979 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2272] = 30
                    mem[_2272 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2375 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2375 + 68] = mem[idx + _2272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2375 + 68] = mem[_2375 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2375 + -mem[64] + 100
                if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2009] = 26
                mem[_2009 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2009 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2327] = 30
                mem[_2327 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2416 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2416 + 68] = mem[idx + _2327 + 32]
                    idx = idx + 32
                    continue 
                mem[_2416 + 68] = mem[_2416 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2416 + -mem[64] + 100
            _1288 = mem[64]
            mem[64] = mem[64] + (32 * rewardTokens.length) + 32
            mem[_1288] = rewardTokens.length
            if not rewardTokens.length:
                _1363 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1365 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _1363 + 96] = rewardTokens.length
                mem[(32 * _1365) + _1363 + 128 len floor32(rewardTokens.length)] = mem[_1288 + 32 len floor32(rewardTokens.length)]
                return memory
                  from mem[64]
                   len (32 * rewardTokens.length) + (32 * _1365) + _1363 + -mem[64] + 128
            mem[0] = 25
            mem[_1288 + 32] = address(rewardTokens.field_0)
            idx = _1288 + 32
            s = 0
            while _1288 + (32 * rewardTokens.length) > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _2969 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2971 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2969 + 96] = rewardTokens.length
            mem[(32 * _2971) + _2969 + 128 len floor32(rewardTokens.length)] = mem[_1288 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _2971) + _2969 + -mem[64] + 128
        if lastRewardBlock >= bonusEndBlock:
            idx = 0
            s = 0
            while idx < rewardTokens.length:
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                _1502 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1502] = 26
                mem[_1502 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1502 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1942] = 26
                    mem[_1942 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1942 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2149] = 30
                    mem[_2149 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2267 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _2267 + 68] = mem[s + _2149 + 32]
                        s = s + 32
                        continue 
                    mem[_2267 + 68] = mem[_2267 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2267 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1957] = 26
                mem[_1957 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1957 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2206] = 30
                mem[_2206 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2324 + 68] = mem[idx + _2206 + 32]
                    idx = idx + 32
                    continue 
                mem[_2324 + 68] = mem[_2324 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2324 + -mem[64] + 100
            _1287 = mem[64]
            mem[64] = mem[64] + (32 * rewardTokens.length) + 32
            mem[_1287] = rewardTokens.length
            if not rewardTokens.length:
                _1360 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                _1362 = mem[96]
                mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                mem[(32 * mem[96]) + _1360 + 96] = rewardTokens.length
                mem[(32 * _1362) + _1360 + 128 len floor32(rewardTokens.length)] = mem[_1287 + 32 len floor32(rewardTokens.length)]
                return memory
                  from mem[64]
                   len (32 * rewardTokens.length) + (32 * _1362) + _1360 + -mem[64] + 128
            mem[0] = 25
            mem[_1287 + 32] = address(rewardTokens.field_0)
            idx = _1287 + 32
            s = 0
            while _1287 + (32 * rewardTokens.length) > idx:
                mem[idx + 32] = rewardTokens[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _2966 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _2968 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _2966 + 96] = rewardTokens.length
            mem[(32 * _2968) + _2966 + 128 len floor32(rewardTokens.length)] = mem[_1287 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _2968) + _2966 + -mem[64] + 128
        mem[64] = (32 * rewardTokens.length) + 192
        mem[(32 * rewardTokens.length) + 128] = 30
        mem[(32 * rewardTokens.length) + 160] = 'SafeMath: subtraction overflow'
        if lastRewardBlock > bonusEndBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 0
        while idx < rewardTokens.length:
            if not bonusEndBlock - lastRewardBlock:
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                _1501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1501] = 26
                mem[_1501 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1501 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1941] = 26
                    mem[_1941 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1941 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2144] = 30
                    mem[_2144 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2263 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _2263 + 68] = mem[s + _2144 + 32]
                        s = s + 32
                        continue 
                    mem[_2263 + 68] = mem[_2263 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2263 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1956 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1956] = 26
                mem[_1956 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1956 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2202] = 30
                mem[_2202 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2321 + 68] = mem[idx + _2202 + 32]
                    idx = idx + 32
                    continue 
                mem[_2321 + 68] = mem[_2321 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2321 + -mem[64] + 100
            if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                _1527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1527] = 26
                mem[_1527 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1527 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1955] = 26
                    mem[_1955 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1955 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2199] = 30
                    mem[_2199 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2318 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2318 + 68] = mem[idx + _2199 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2318 + 68] = mem[_2318 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2318 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1972 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1972] = 26
                mem[_1972 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1972 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2258] = 30
                mem[_2258 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2367 + 68] = mem[idx + _2258 + 32]
                    idx = idx + 32
                    continue 
                mem[_2367 + 68] = mem[_2367 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2367 + -mem[64] + 100
            if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1545 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1545] = 26
            mem[_1545 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1545 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < rewardTokens.length
            if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1971 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1971] = 26
                mem[_1971 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1971 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2255 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2255] = 30
                mem[_2255 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2364 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2364 + 68] = mem[idx + _2255 + 32]
                    idx = idx + 32
                    continue 
                mem[_2364 + 68] = mem[_2364 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2364 + -mem[64] + 100
            if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1997 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1997] = 26
            mem[_1997 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1997 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2313 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2313] = 30
            mem[_2313 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = (((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2403 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2403 + 68] = mem[idx + _2313 + 32]
                idx = idx + 32
                continue 
            mem[_2403 + 68] = mem[_2403 + 70 len 30]
            revert with memory
              from mem[64]
               len _2403 + -mem[64] + 100
        _1285 = mem[64]
        mem[64] = mem[64] + (32 * rewardTokens.length) + 32
        mem[_1285] = rewardTokens.length
        if not rewardTokens.length:
            _1357 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1359 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1357 + 96] = rewardTokens.length
            mem[(32 * _1359) + _1357 + 128 len floor32(rewardTokens.length)] = mem[_1285 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _1359) + _1357 + -mem[64] + 128
        mem[0] = 25
        mem[_1285 + 32] = address(rewardTokens.field_0)
        idx = _1285 + 32
        s = 0
        while _1285 + (32 * rewardTokens.length) > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _2963 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2965 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2963 + 96] = rewardTokens.length
        mem[(32 * _2965) + _2963 + 128 len floor32(rewardTokens.length)] = mem[_1285 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _2965) + _2963 + -mem[64] + 128
    mem[128 len 32 * rewardTokens.length] = call.data[calldata.size len 32 * rewardTokens.length]
    if block.number <= lastRewardBlock:
        idx = 0
        while idx < rewardTokens.length:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 10
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1473] = 26
                mem[_1473 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1473 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _1596 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1596] = 30
                mem[_1596 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    continue 
                _1678 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[s + _1678 + 68] = mem[s + _1596 + 32]
                    s = s + 32
                    continue 
                mem[_1678 + 68] = mem[_1678 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1678 + -mem[64] + 100
            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1477 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1477] = 26
            mem[_1477 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1477 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _1635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1635] = 30
            mem[_1635 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                continue 
            _1723 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1723 + 68] = mem[idx + _1635 + 32]
                idx = idx + 32
                continue 
            mem[_1723 + 68] = mem[_1723 + 70 len 30]
            revert with memory
              from mem[64]
               len _1723 + -mem[64] + 100
        _1290 = mem[64]
        mem[64] = mem[64] + (32 * rewardTokens.length) + 32
        mem[_1290] = rewardTokens.length
        if not rewardTokens.length:
            _1366 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1368 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1366 + 96] = rewardTokens.length
            mem[(32 * _1368) + _1366 + 128 len floor32(rewardTokens.length)] = mem[_1290 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _1368) + _1366 + -mem[64] + 128
        mem[0] = 25
        mem[_1290 + 32] = address(rewardTokens.field_0)
        idx = _1290 + 32
        s = 0
        while _1290 + (32 * rewardTokens.length) > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _2972 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2974 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2972 + 96] = rewardTokens.length
        mem[(32 * _2974) + _2972 + 128 len floor32(rewardTokens.length)] = mem[_1290 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _2974) + _2972 + -mem[64] + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < rewardTokens.length:
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 10
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1474] = 26
                mem[_1474 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1474 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 30
                mem[_1601 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    continue 
                _1682 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[s + _1682 + 68] = mem[s + _1601 + 32]
                    s = s + 32
                    continue 
                mem[_1682 + 68] = mem[_1682 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1682 + -mem[64] + 100
            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / uint256(lastStakingBlock[address(arg1)].field_0) != accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1478 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1478] = 26
            mem[_1478 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1478 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _1639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1639] = 30
            mem[_1639 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                continue 
            _1726 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1726 + 68] = mem[idx + _1639 + 32]
                idx = idx + 32
                continue 
            mem[_1726 + 68] = mem[_1726 + 70 len 30]
            revert with memory
              from mem[64]
               len _1726 + -mem[64] + 100
        _1291 = mem[64]
        mem[64] = mem[64] + (32 * rewardTokens.length) + 32
        mem[_1291] = rewardTokens.length
        if not rewardTokens.length:
            _1371 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1373 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1371 + 96] = rewardTokens.length
            mem[(32 * _1373) + _1371 + 128 len floor32(rewardTokens.length)] = mem[_1291 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _1373) + _1371 + -mem[64] + 128
        mem[0] = 25
        mem[_1291 + 32] = address(rewardTokens.field_0)
        idx = _1291 + 32
        s = 0
        while _1291 + (32 * rewardTokens.length) > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _2975 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2977 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2975 + 96] = rewardTokens.length
        mem[(32 * _2977) + _2975 + 128 len floor32(rewardTokens.length)] = mem[_1291 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _2977) + _2975 + -mem[64] + 128
    if block.number <= bonusEndBlock:
        mem[64] = (32 * rewardTokens.length) + 192
        mem[(32 * rewardTokens.length) + 128] = 30
        mem[(32 * rewardTokens.length) + 160] = 'SafeMath: subtraction overflow'
        if lastRewardBlock > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 0
        while idx < rewardTokens.length:
            if not block.number - lastRewardBlock:
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                _1520 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1520] = 26
                mem[_1520 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1520 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1952] = 26
                    mem[_1952 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1952 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2190] = 30
                    mem[_2190 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _2310 + 68] = mem[s + _2190 + 32]
                        s = s + 32
                        continue 
                    mem[_2310 + 68] = mem[_2310 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2310 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1970 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1970] = 26
                mem[_1970 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1970 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2249] = 30
                mem[_2249 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2360 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2360 + 68] = mem[idx + _2249 + 32]
                    idx = idx + 32
                    continue 
                mem[_2360 + 68] = mem[_2360 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2360 + -mem[64] + 100
            if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                _1536 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1536] = 26
                mem[_1536 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1536 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require idx < rewardTokens.length
                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < rewardTokens.length
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 24
                if not uint256(lastStakingBlock[address(arg1)].field_0):
                    _1969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1969] = 26
                    mem[_1969 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1969 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 30
                    mem[_2246 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                        continue 
                    _2357 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2357 + 68] = mem[idx + _2246 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2357 + 68] = mem[_2357 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2357 + -mem[64] + 100
                if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1993] = 26
                mem[_1993 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1993 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2305] = 30
                mem[_2305 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2398 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2398 + 68] = mem[idx + _2305 + 32]
                    idx = idx + 32
                    continue 
                mem[_2398 + 68] = mem[_2398 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2398 + -mem[64] + 100
            if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1571 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1571] = 26
            mem[_1571 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1571 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < rewardTokens.length
            if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1992] = 26
                mem[_1992 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1992 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2302] = 30
                mem[_2302 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2395 + 68] = mem[idx + _2302 + 32]
                    idx = idx + 32
                    continue 
                mem[_2395 + 68] = mem[_2395 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2395 + -mem[64] + 100
            if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _2029 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2029] = 26
            mem[_2029 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _2029 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2352] = 30
            mem[_2352 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = (((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2438 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2438 + 68] = mem[idx + _2352 + 32]
                idx = idx + 32
                continue 
            mem[_2438 + 68] = mem[_2438 + 70 len 30]
            revert with memory
              from mem[64]
               len _2438 + -mem[64] + 100
        _1295 = mem[64]
        mem[64] = mem[64] + (32 * rewardTokens.length) + 32
        mem[_1295] = rewardTokens.length
        if not rewardTokens.length:
            _1382 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1384 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1382 + 96] = rewardTokens.length
            mem[(32 * _1384) + _1382 + 128 len floor32(rewardTokens.length)] = mem[_1295 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _1384) + _1382 + -mem[64] + 128
        mem[0] = 25
        mem[_1295 + 32] = address(rewardTokens.field_0)
        idx = _1295 + 32
        s = 0
        while _1295 + (32 * rewardTokens.length) > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _2984 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2986 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2984 + 96] = rewardTokens.length
        mem[(32 * _2986) + _2984 + 128 len floor32(rewardTokens.length)] = mem[_1295 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _2986) + _2984 + -mem[64] + 128
    if lastRewardBlock >= bonusEndBlock:
        idx = 0
        s = 0
        while idx < rewardTokens.length:
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            _1517 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1517] = 26
            mem[_1517 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1517 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < rewardTokens.length
            if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1949] = 26
                mem[_1949 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1949 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2178] = 30
                mem[_2178 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2297 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[s + _2297 + 68] = mem[s + _2178 + 32]
                    s = s + 32
                    continue 
                mem[_2297 + 68] = mem[_2297 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2297 + -mem[64] + 100
            if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1966 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1966] = 26
            mem[_1966 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1966 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2236] = 30
            mem[_2236 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2349 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2349 + 68] = mem[idx + _2236 + 32]
                idx = idx + 32
                continue 
            mem[_2349 + 68] = mem[_2349 + 70 len 30]
            revert with memory
              from mem[64]
               len _2349 + -mem[64] + 100
        _1294 = mem[64]
        mem[64] = mem[64] + (32 * rewardTokens.length) + 32
        mem[_1294] = rewardTokens.length
        if not rewardTokens.length:
            _1379 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[96]
            _1381 = mem[96]
            mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            mem[(32 * mem[96]) + _1379 + 96] = rewardTokens.length
            mem[(32 * _1381) + _1379 + 128 len floor32(rewardTokens.length)] = mem[_1294 + 32 len floor32(rewardTokens.length)]
            return memory
              from mem[64]
               len (32 * rewardTokens.length) + (32 * _1381) + _1379 + -mem[64] + 128
        mem[0] = 25
        mem[_1294 + 32] = address(rewardTokens.field_0)
        idx = _1294 + 32
        s = 0
        while _1294 + (32 * rewardTokens.length) > idx:
            mem[idx + 32] = rewardTokens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _2981 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _2983 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _2981 + 96] = rewardTokens.length
        mem[(32 * _2983) + _2981 + 128 len floor32(rewardTokens.length)] = mem[_1294 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _2983) + _2981 + -mem[64] + 128
    mem[64] = (32 * rewardTokens.length) + 192
    mem[(32 * rewardTokens.length) + 128] = 30
    mem[(32 * rewardTokens.length) + 160] = 'SafeMath: subtraction overflow'
    if lastRewardBlock > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    s = 0
    while idx < rewardTokens.length:
        if not bonusEndBlock - lastRewardBlock:
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            _1516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1516] = 26
            mem[_1516 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1516 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < rewardTokens.length
            if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1948] = 26
                mem[_1948 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1948 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2173] = 30
                mem[_2173 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[s + _2293 + 68] = mem[s + _2173 + 32]
                    s = s + 32
                    continue 
                mem[_2293 + 68] = mem[_2293 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2293 + -mem[64] + 100
            if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1965] = 26
            mem[_1965 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1965 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2232] = 30
            mem[_2232 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2346 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2346 + 68] = mem[idx + _2232 + 32]
                idx = idx + 32
                continue 
            mem[_2346 + 68] = mem[_2346 + 70 len 30]
            revert with memory
              from mem[64]
               len _2346 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < rewardTokens.length
        mem[0] = rewardTokens[idx].field_0
        mem[32] = 24
        if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
            _1535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1535] = 26
            mem[_1535 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1535 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < rewardTokens.length
            if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < rewardTokens.length
            mem[0] = rewardTokens[idx].field_0
            mem[32] = 24
            if not uint256(lastStakingBlock[address(arg1)].field_0):
                _1964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1964] = 26
                mem[_1964 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1964 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _2229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2229] = 30
                mem[_2229 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                    continue 
                _2343 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2343 + 68] = mem[idx + _2229 + 32]
                    idx = idx + 32
                    continue 
                mem[_2343 + 68] = mem[_2343 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2343 + -mem[64] + 100
            if (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1985 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1985] = 26
            mem[_1985 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1985 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2288 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2288] = 30
            mem[_2288 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= (0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = ((0 / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2387 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2387 + 68] = mem[idx + _2288 + 32]
                idx = idx + 32
                continue 
            mem[_2387 + 68] = mem[_2387 + 70 len 30]
            revert with memory
              from mem[64]
               len _2387 + -mem[64] + 100
        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1564 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1564] = 26
        mem[_1564 + 32] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _1564 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < rewardTokens.length
        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < rewardTokens.length
        mem[0] = rewardTokens[idx].field_0
        mem[32] = 24
        if not uint256(lastStakingBlock[address(arg1)].field_0):
            _1984 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1984] = 26
            mem[_1984 + 32] = 'SafeMath: division by zero'
            if not pRECISION_FACTOR[stor25[idx].field_0]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1984 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            _2285 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2285] = 30
            mem[_2285 + 32] = 'SafeMath: subtraction overflow'
            if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
                idx = idx + 1
                s = ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
                continue 
            _2384 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2384 + 68] = mem[idx + _2285 + 32]
                idx = idx + 32
                continue 
            mem[_2384 + 68] = mem[_2384 + 70 len 30]
            revert with memory
              from mem[64]
               len _2384 + -mem[64] + 100
        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / uint256(lastStakingBlock[address(arg1)].field_0) != ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]:
            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _2017 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2017] = 26
        mem[_2017 + 32] = 'SafeMath: division by zero'
        if not pRECISION_FACTOR[stor25[idx].field_0]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _2017 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        _2338 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2338] = 30
        mem[_2338 + 32] = 'SafeMath: subtraction overflow'
        if uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0) <= ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]:
            require idx < mem[96]
            mem[(32 * idx) + 128] = (((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0] * uint256(lastStakingBlock[address(arg1)].field_0)) + (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[address(arg1)].field_0)) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[address(arg1)][2][stor25[idx].field_0].field_0)
            idx = idx + 1
            s = ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0]
            continue 
        _2425 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _2425 + 68] = mem[idx + _2338 + 32]
            idx = idx + 32
            continue 
        mem[_2425 + 68] = mem[_2425 + 70 len 30]
        revert with memory
          from mem[64]
           len _2425 + -mem[64] + 100
    _1292 = mem[64]
    mem[64] = mem[64] + (32 * rewardTokens.length) + 32
    mem[_1292] = rewardTokens.length
    if not rewardTokens.length:
        _1376 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _1378 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _1376 + 96] = rewardTokens.length
        mem[(32 * _1378) + _1376 + 128 len floor32(rewardTokens.length)] = mem[_1292 + 32 len floor32(rewardTokens.length)]
        return memory
          from mem[64]
           len (32 * rewardTokens.length) + (32 * _1378) + _1376 + -mem[64] + 128
    mem[0] = 25
    mem[_1292 + 32] = address(rewardTokens.field_0)
    idx = _1292 + 32
    s = 0
    while _1292 + (32 * rewardTokens.length) > idx:
        mem[idx + 32] = rewardTokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _2978 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _2980 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _2978 + 96] = rewardTokens.length
    mem[(32 * _2980) + _2978 + 128 len floor32(rewardTokens.length)] = mem[_1292 + 32 len floor32(rewardTokens.length)]
    return memory
      from mem[64]
       len (32 * rewardTokens.length) + (32 * _2980) + _2978 + -mem[64] + 128
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if block.number < stakingBlock:
        revert with 0, 'Staking has not started'
    if stakingEndBlock < block.number:
        revert with 0, 'Staking has ended'
    mem[64] = 224
    mem[96] = msg.sender
    mem[128] = arg1
    mem[160] = block.number
    mem[192] = block.number + sub_cea8c746
    mem[32] = 28
    uint256(sub_fd35f8fe[msg.sender].field_0)++
    mem[0] = sha3(msg.sender, 28)
    sub_fd35f8fe[msg.sender][uint256(sub_fd35f8fe[msg.sender].field_0)].field_0 = msg.sender
    uint256(sub_fd35f8fe[msg.sender][uint256(sub_fd35f8fe[msg.sender].field_0)].field_256) = arg1
    uint256(sub_fd35f8fe[msg.sender][uint256(sub_fd35f8fe[msg.sender].field_0)].field_512) = block.number
    uint256(sub_fd35f8fe[msg.sender][uint256(sub_fd35f8fe[msg.sender].field_0)].field_768) = block.number + sub_cea8c746
    if not hasPoolLimit:
        if not hasUserLimit:
            if block.number <= lastRewardBlock:
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5762 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5762] = 26
                                mem[_5762 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5762 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5878 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5878] = 26
                                mem[_5878 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5878 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[228] = msg.sender
                        mem[260] = this.address
                        mem[292] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[224] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5763 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5763] = 26
                                mem[_5763 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5763 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5879 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5879] = 26
                                mem[_5879 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5879 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                else:
                    idx = 0
                    s = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _5880 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5880] = 26
                            mem[_5880 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5880 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _6817 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6817] = 30
                            mem[_6817 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7297 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7297 + 68] = mem[idx + _6817 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7297 + 68] = mem[_7297 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7297 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5963] = 26
                        mem[_5963 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _5963 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _7041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7041] = 30
                        mem[_7041 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _7533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7533 + 68] = mem[idx + _7041 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7533 + 68] = mem[_7533 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7533 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11320 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11320] = 26
                                mem[_11320 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11320 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11390 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11390] = 26
                                mem[_11390 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11390 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[mem[64]] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11321 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11321] = 26
                                mem[_11321 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11321 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11391 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11391] = 26
                                mem[_11391 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11391 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
            else:
                mem[228] = this.address
                require ext_code.size(stakedTokenAddress)
                staticcall stakedTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    lastRewardBlock = block.number
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5757 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5757] = 26
                                    mem[_5757 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5757 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5875 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5875] = 26
                                    mem[_5875 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5875 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[228] = msg.sender
                            mem[260] = this.address
                            mem[292] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[224] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5758 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5758] = 26
                                    mem[_5758 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5758 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5876 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5876] = 26
                                    mem[_5876 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5876 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                    else:
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5877 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5877] = 26
                                mem[_5877 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5877 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6798 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6798] = 30
                                mem[_6798 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7288 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7288 + 68] = mem[idx + _6798 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7288 + 68] = mem[_7288 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7288 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5956 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5956] = 26
                            mem[_5956 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5956 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7030] = 30
                            mem[_7030 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7524 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7524 + 68] = mem[idx + _7030 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7524 + 68] = mem[_7524 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7524 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11318 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11318] = 26
                                    mem[_11318 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11318 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11388 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11388] = 26
                                    mem[_11388 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11388 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[mem[64]] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11319 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11319] = 26
                                    mem[_11319 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11319 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11389 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11389] = 26
                                    mem[_11389 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11389 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                else:
                    if block.number <= bonusEndBlock:
                        mem[64] = 288
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not block.number - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6231 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6231] = 26
                                mem[_6231 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6231 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                    _6381 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6381] = 26
                                    mem[_6381 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6381 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6560 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6560] = 26
                                    mem[_6560 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6560 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        lastRewardBlock = block.number
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            if not arg1:
                                s = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11313 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11313] = 26
                                        mem[_11313 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11313 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11385 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11385] = 26
                                        mem[_11385 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11385 + 32]
                                            s = s + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11314 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11314] = 26
                                        mem[_11314 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11314 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11386 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11386] = 26
                                        mem[_11386 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11386 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                        else:
                            s = 0
                            t = 0
                            while s < rewardTokens.length:
                                mem[0] = rewardTokens[s].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11387 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11387] = 26
                                    mem[_11387 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11387 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12573 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12573] = 30
                                    mem[_12573 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                        _12999 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _12999 + 68] = mem[idx + _12573 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_12999 + 68] = mem[_12999 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _12999 + -mem[64] + 100
                                    if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11451 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11451] = 26
                                mem[_11451 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[s].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11451 + 32]
                                        s = s + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _12856 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12856] = 30
                                mem[_12856 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                    _13107 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13107 + 68] = mem[idx + _12856 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13107 + 68] = mem[_13107 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13107 + -mem[64] + 100
                                if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                    require s < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    require ext_code.size(rewardTokens[s].field_0)
                                    call rewardTokens[s].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                s = s + 1
                                t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                continue 
                            if not arg1:
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14655 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14655] = 26
                                        mem[_14655 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14655 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14679 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14679] = 26
                                        mem[_14679 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14679 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14656 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14656] = 26
                                        mem[_14656 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14656 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14680 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14680] = 26
                                        mem[_14680 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14680 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            idx = 0
                            while idx < rewardTokens.length:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6226 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6226] = 26
                                mem[_6226 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6226 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11308 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11308] = 26
                                            mem[_11308 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11308 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11382 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11382] = 26
                                            mem[_11382 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11382 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11309 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11309] = 26
                                            mem[_11309 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11309 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11383 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11383] = 26
                                            mem[_11383 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11383 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11384 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11384] = 26
                                        mem[_11384 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11384 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12554 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12554] = 30
                                        mem[_12554 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _12990 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _12990 + 68] = mem[idx + _12554 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_12990 + 68] = mem[_12990 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _12990 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11444 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11444] = 26
                                    mem[_11444 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11444 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12845 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12845] = 30
                                    mem[_12845 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13098 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13098 + 68] = mem[idx + _12845 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13098 + 68] = mem[_13098 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13098 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14653 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14653] = 26
                                            mem[_14653 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14653 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14677 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14677] = 26
                                            mem[_14677 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14677 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14654 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14654] = 26
                                            mem[_14654 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14654 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14678 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14678] = 26
                                            mem[_14678 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14678 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                        else:
                            mem[64] = 288
                            mem[224] = 30
                            mem[256] = 'SafeMath: subtraction overflow'
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < rewardTokens.length:
                                if not bonusEndBlock - lastRewardBlock:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    _6223 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6223] = 26
                                    mem[_6223 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6223 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                        _6366 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6366] = 26
                                        mem[_6366 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6366 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                    else:
                                        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6549 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6549] = 26
                                        mem[_6549 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6549 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11303 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11303] = 26
                                            mem[_11303 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11303 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11379 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11379] = 26
                                            mem[_11379 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11379 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11304 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11304] = 26
                                            mem[_11304 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11304 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11380 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11380] = 26
                                            mem[_11380 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11380 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11381 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11381] = 26
                                        mem[_11381 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11381 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12535 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12535] = 30
                                        mem[_12535 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _12981 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _12981 + 68] = mem[idx + _12535 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_12981 + 68] = mem[_12981 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _12981 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11437 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11437] = 26
                                    mem[_11437 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11437 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12834 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12834] = 30
                                    mem[_12834 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13089 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13089 + 68] = mem[idx + _12834 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13089 + 68] = mem[_13089 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13089 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14651 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14651] = 26
                                            mem[_14651 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14651 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14675 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14675] = 26
                                            mem[_14675 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14675 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14652 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14652] = 26
                                            mem[_14652 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14652 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14676 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14676] = 26
                                            mem[_14676 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14676 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
        else:
            if uint256(lastStakingBlock[msg.sender].field_0) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if uint256(lastStakingBlock[msg.sender].field_0) + arg1 > poolLimitPerUser:
                revert with 0, 'User amount above limit'
            if block.number <= lastRewardBlock:
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5794 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5794] = 26
                                mem[_5794 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5794 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5896 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5896] = 26
                                mem[_5896 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5896 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[228] = msg.sender
                        mem[260] = this.address
                        mem[292] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[224] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5795 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5795] = 26
                                mem[_5795 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5795 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5897 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5897] = 26
                                mem[_5897 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5897 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                else:
                    idx = 0
                    s = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _5898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5898] = 26
                            mem[_5898 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5898 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _6870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6870] = 30
                            mem[_6870 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7354 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7354 + 68] = mem[idx + _6870 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7354 + 68] = mem[_7354 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7354 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _5992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5992] = 26
                        mem[_5992 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _5992 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _7107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7107] = 30
                        mem[_7107 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _7598 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7598 + 68] = mem[idx + _7107 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7598 + 68] = mem[_7598 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7598 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11339 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11339] = 26
                                mem[_11339 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11339 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11403 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11403] = 26
                                mem[_11403 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11403 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[mem[64]] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11340 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11340] = 26
                                mem[_11340 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11340 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11404] = 26
                                mem[_11404 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11404 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
            else:
                mem[228] = this.address
                require ext_code.size(stakedTokenAddress)
                staticcall stakedTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    lastRewardBlock = block.number
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5789 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5789] = 26
                                    mem[_5789 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5789 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5893 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5893] = 26
                                    mem[_5893 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5893 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[228] = msg.sender
                            mem[260] = this.address
                            mem[292] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[224] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5790] = 26
                                    mem[_5790 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5790 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5894 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5894] = 26
                                    mem[_5894 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5894 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                    else:
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5895 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5895] = 26
                                mem[_5895 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5895 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6851 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6851] = 30
                                mem[_6851 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7345 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7345 + 68] = mem[idx + _6851 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7345 + 68] = mem[_7345 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7345 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _5985 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5985] = 26
                            mem[_5985 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5985 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7096 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7096] = 30
                            mem[_7096 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7589 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7589 + 68] = mem[idx + _7096 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7589 + 68] = mem[_7589 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7589 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11337 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11337] = 26
                                    mem[_11337 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11337 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11401 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11401] = 26
                                    mem[_11401 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11401 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[mem[64]] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11338 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11338] = 26
                                    mem[_11338 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11338 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11402 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11402] = 26
                                    mem[_11402 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11402 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                else:
                    if block.number <= bonusEndBlock:
                        mem[64] = 288
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not block.number - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6266 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6266] = 26
                                mem[_6266 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6266 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                    _6428 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6428] = 26
                                    mem[_6428 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6428 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6615 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6615] = 26
                                    mem[_6615 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6615 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        lastRewardBlock = block.number
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            if not arg1:
                                s = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11332 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11332] = 26
                                        mem[_11332 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11332 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11398 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11398] = 26
                                        mem[_11398 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11398 + 32]
                                            s = s + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11333 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11333] = 26
                                        mem[_11333 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11333 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11399 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11399] = 26
                                        mem[_11399 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11399 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                        else:
                            s = 0
                            t = 0
                            while s < rewardTokens.length:
                                mem[0] = rewardTokens[s].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11400 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11400] = 26
                                    mem[_11400 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11400 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12650 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12650] = 30
                                    mem[_12650 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13026 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13026 + 68] = mem[idx + _12650 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13026 + 68] = mem[_13026 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13026 + -mem[64] + 100
                                    if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11484] = 26
                                mem[_11484 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[s].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11484 + 32]
                                        s = s + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _12893 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12893] = 30
                                mem[_12893 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                    _13134 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13134 + 68] = mem[idx + _12893 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13134 + 68] = mem[_13134 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13134 + -mem[64] + 100
                                if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                    require s < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    require ext_code.size(rewardTokens[s].field_0)
                                    call rewardTokens[s].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                s = s + 1
                                t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                continue 
                            if not arg1:
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14661 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14661] = 26
                                        mem[_14661 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14661 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14685 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14685] = 26
                                        mem[_14685 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14685 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14662 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14662] = 26
                                        mem[_14662 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14662 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14686 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14686] = 26
                                        mem[_14686 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14686 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            idx = 0
                            while idx < rewardTokens.length:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6261 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6261] = 26
                                mem[_6261 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6261 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11327 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11327] = 26
                                            mem[_11327 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11327 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11395 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11395] = 26
                                            mem[_11395 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11395 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11328 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11328] = 26
                                            mem[_11328 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11328 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11396 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11396] = 26
                                            mem[_11396 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11396 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11397 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11397] = 26
                                        mem[_11397 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11397 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12631 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12631] = 30
                                        mem[_12631 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13017 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13017 + 68] = mem[idx + _12631 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13017 + 68] = mem[_13017 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13017 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11477 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11477] = 26
                                    mem[_11477 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11477 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12882 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12882] = 30
                                    mem[_12882 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13125 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13125 + 68] = mem[idx + _12882 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13125 + 68] = mem[_13125 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13125 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14659 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14659] = 26
                                            mem[_14659 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14659 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14683 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14683] = 26
                                            mem[_14683 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14683 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14660 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14660] = 26
                                            mem[_14660 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14660 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14684 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14684] = 26
                                            mem[_14684 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14684 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                        else:
                            mem[64] = 288
                            mem[224] = 30
                            mem[256] = 'SafeMath: subtraction overflow'
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < rewardTokens.length:
                                if not bonusEndBlock - lastRewardBlock:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    _6258 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6258] = 26
                                    mem[_6258 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6258 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                        _6413 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6413] = 26
                                        mem[_6413 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6413 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                    else:
                                        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6604 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6604] = 26
                                        mem[_6604 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6604 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11322 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11322] = 26
                                            mem[_11322 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11322 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11392 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11392] = 26
                                            mem[_11392 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11392 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11323 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11323] = 26
                                            mem[_11323 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11323 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11393 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11393] = 26
                                            mem[_11393 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11393 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11394 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11394] = 26
                                        mem[_11394 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11394 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12612 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12612] = 30
                                        mem[_12612 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13008 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13008 + 68] = mem[idx + _12612 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13008 + 68] = mem[_13008 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13008 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11470 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11470] = 26
                                    mem[_11470 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11470 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12871 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12871] = 30
                                    mem[_12871 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13116 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13116 + 68] = mem[idx + _12871 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13116 + 68] = mem[_13116 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13116 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14657 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14657] = 26
                                            mem[_14657 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14657 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14681 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14681] = 26
                                            mem[_14681 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14681 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14658 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14658] = 26
                                            mem[_14658 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14658 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14682 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14682] = 26
                                            mem[_14682 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14682 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
    else:
        mem[228] = this.address
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + arg1 > poolCap:
            revert with 0, 'Pool cap reached'
        if not hasUserLimit:
            if block.number <= lastRewardBlock:
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5826 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5826] = 26
                                mem[_5826 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5826 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5914 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5914] = 26
                                mem[_5914 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5914 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[228] = msg.sender
                        mem[260] = this.address
                        mem[292] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[224] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5827 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5827] = 26
                                mem[_5827 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5827 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5915] = 26
                                mem[_5915 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5915 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                else:
                    idx = 0
                    s = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _5916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5916] = 26
                            mem[_5916 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5916 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _6923 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6923] = 30
                            mem[_6923 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7411 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7411 + 68] = mem[idx + _6923 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7411 + 68] = mem[_7411 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7411 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6021 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6021] = 26
                        mem[_6021 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _6021 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _7173 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7173] = 30
                        mem[_7173 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _7663 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7663 + 68] = mem[idx + _7173 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7663 + 68] = mem[_7663 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7663 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11358 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11358] = 26
                                mem[_11358 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11358 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11416 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11416] = 26
                                mem[_11416 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11416 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[mem[64]] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11359 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11359] = 26
                                mem[_11359 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11359 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11417 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11417] = 26
                                mem[_11417 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11417 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
            else:
                mem[228] = this.address
                require ext_code.size(stakedTokenAddress)
                staticcall stakedTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    lastRewardBlock = block.number
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5821] = 26
                                    mem[_5821 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5821 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5911 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5911] = 26
                                    mem[_5911 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5911 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[228] = msg.sender
                            mem[260] = this.address
                            mem[292] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[224] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5822 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5822] = 26
                                    mem[_5822 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5822 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5912 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5912] = 26
                                    mem[_5912 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5912 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                    else:
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5913 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5913] = 26
                                mem[_5913 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5913 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6904 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6904] = 30
                                mem[_6904 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7402 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7402 + 68] = mem[idx + _6904 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7402 + 68] = mem[_7402 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7402 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6014] = 26
                            mem[_6014 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _6014 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7162] = 30
                            mem[_7162 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7654 + 68] = mem[idx + _7162 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7654 + 68] = mem[_7654 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7654 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11356 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11356] = 26
                                    mem[_11356 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11356 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11414 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11414] = 26
                                    mem[_11414 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11414 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[mem[64]] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11357 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11357] = 26
                                    mem[_11357 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11357 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11415 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11415] = 26
                                    mem[_11415 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11415 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                else:
                    if block.number <= bonusEndBlock:
                        mem[64] = 288
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not block.number - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6301 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6301] = 26
                                mem[_6301 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6301 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                    _6475 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6475] = 26
                                    mem[_6475 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6475 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6670 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6670] = 26
                                    mem[_6670 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6670 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        lastRewardBlock = block.number
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            if not arg1:
                                s = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11351 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11351] = 26
                                        mem[_11351 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11351 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11411 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11411] = 26
                                        mem[_11411 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11411 + 32]
                                            s = s + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11352 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11352] = 26
                                        mem[_11352 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11352 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11412 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11412] = 26
                                        mem[_11412 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11412 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                        else:
                            s = 0
                            t = 0
                            while s < rewardTokens.length:
                                mem[0] = rewardTokens[s].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11413 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11413] = 26
                                    mem[_11413 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11413 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12727 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12727] = 30
                                    mem[_12727 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13053 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13053 + 68] = mem[idx + _12727 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13053 + 68] = mem[_13053 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13053 + -mem[64] + 100
                                    if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11517] = 26
                                mem[_11517 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[s].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11517 + 32]
                                        s = s + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _12930 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12930] = 30
                                mem[_12930 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                    _13161 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13161 + 68] = mem[idx + _12930 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13161 + 68] = mem[_13161 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13161 + -mem[64] + 100
                                if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                    require s < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    require ext_code.size(rewardTokens[s].field_0)
                                    call rewardTokens[s].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                s = s + 1
                                t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                continue 
                            if not arg1:
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14667 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14667] = 26
                                        mem[_14667 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14667 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14691 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14691] = 26
                                        mem[_14691 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14691 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14668 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14668] = 26
                                        mem[_14668 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14668 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14692 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14692] = 26
                                        mem[_14692 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14692 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            idx = 0
                            while idx < rewardTokens.length:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6296 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6296] = 26
                                mem[_6296 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6296 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11346 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11346] = 26
                                            mem[_11346 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11346 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11408 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11408] = 26
                                            mem[_11408 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11408 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11347 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11347] = 26
                                            mem[_11347 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11347 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11409 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11409] = 26
                                            mem[_11409 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11409 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11410 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11410] = 26
                                        mem[_11410 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11410 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12708 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12708] = 30
                                        mem[_12708 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13044 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13044 + 68] = mem[idx + _12708 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13044 + 68] = mem[_13044 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13044 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11510 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11510] = 26
                                    mem[_11510 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11510 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12919 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12919] = 30
                                    mem[_12919 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13152 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13152 + 68] = mem[idx + _12919 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13152 + 68] = mem[_13152 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13152 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14665 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14665] = 26
                                            mem[_14665 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14665 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14689 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14689] = 26
                                            mem[_14689 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14689 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14666 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14666] = 26
                                            mem[_14666 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14666 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14690 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14690] = 26
                                            mem[_14690 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14690 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                        else:
                            mem[64] = 288
                            mem[224] = 30
                            mem[256] = 'SafeMath: subtraction overflow'
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < rewardTokens.length:
                                if not bonusEndBlock - lastRewardBlock:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    _6293 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6293] = 26
                                    mem[_6293 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6293 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                        _6460 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6460] = 26
                                        mem[_6460 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6460 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                    else:
                                        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6659 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6659] = 26
                                        mem[_6659 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6659 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11341 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11341] = 26
                                            mem[_11341 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11341 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11405 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11405] = 26
                                            mem[_11405 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11405 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11342 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11342] = 26
                                            mem[_11342 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11342 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11406 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11406] = 26
                                            mem[_11406 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11406 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11407 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11407] = 26
                                        mem[_11407 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11407 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12689 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12689] = 30
                                        mem[_12689 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13035 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13035 + 68] = mem[idx + _12689 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13035 + 68] = mem[_13035 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13035 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11503 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11503] = 26
                                    mem[_11503 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11503 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12908 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12908] = 30
                                    mem[_12908 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13143 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13143 + 68] = mem[idx + _12908 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13143 + 68] = mem[_13143 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13143 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14663 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14663] = 26
                                            mem[_14663 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14663 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14687 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14687] = 26
                                            mem[_14687 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14687 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14664 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14664] = 26
                                            mem[_14664 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14664 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14688 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14688] = 26
                                            mem[_14688 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14688 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
        else:
            if uint256(lastStakingBlock[msg.sender].field_0) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if uint256(lastStakingBlock[msg.sender].field_0) + arg1 > poolLimitPerUser:
                revert with 0, 'User amount above limit'
            if block.number <= lastRewardBlock:
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5858 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5858] = 26
                                mem[_5858 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5858 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5932 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5932] = 26
                                mem[_5932 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5932 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[228] = msg.sender
                        mem[260] = this.address
                        mem[292] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[224] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5859 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5859] = 26
                                mem[_5859 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _5859 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5933 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5933] = 26
                                mem[_5933 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5933 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                else:
                    idx = 0
                    s = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _5934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5934] = 26
                            mem[_5934 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5934 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _6976 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6976] = 30
                            mem[_6976 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7468 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7468 + 68] = mem[idx + _6976 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7468 + 68] = mem[_7468 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7468 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6050] = 26
                        mem[_6050 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _6050 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _7239 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7239] = 30
                        mem[_7239 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _7728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7728 + 68] = mem[idx + _7239 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7728 + 68] = mem[_7728 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7728 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if not arg1:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11377 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11377] = 26
                                mem[_11377 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11377 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11429 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11429] = 26
                                mem[_11429 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11429 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) += arg1
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 4
                        balanceOf[address(msg.sender)] += arg1
                        mem[mem[64]] = arg1
                        emit Transfer(arg1, 0, msg.sender);
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _11378 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11378] = 26
                                mem[_11378 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                s = 32
                                while s < 26:
                                    mem[s + mem[64] + 68] = mem[s + _11378 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11430] = 26
                                mem[_11430 + 32] = 'SafeMath: division by zero'
                                if pRECISION_FACTOR[stor25[idx].field_0]:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = sha3(msg.sender, 27) + 2
                                    uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _11430 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
            else:
                mem[228] = this.address
                require ext_code.size(stakedTokenAddress)
                staticcall stakedTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    lastRewardBlock = block.number
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5853 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5853] = 26
                                    mem[_5853 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5853 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5929 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5929] = 26
                                    mem[_5929 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5929 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[228] = msg.sender
                            mem[260] = this.address
                            mem[292] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[224] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _5854 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5854] = 26
                                    mem[_5854 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _5854 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5930 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5930] = 26
                                    mem[_5930 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5930 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                    else:
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _5931 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5931] = 26
                                mem[_5931 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5931 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6957 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6957] = 30
                                mem[_6957 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7459 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7459 + 68] = mem[idx + _6957 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7459 + 68] = mem[_7459 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7459 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6043 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6043] = 26
                            mem[_6043 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _6043 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7228 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7228] = 30
                            mem[_7228 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7719 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7719 + 68] = mem[idx + _7228 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7719 + 68] = mem[_7719 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7719 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not arg1:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11375 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11375] = 26
                                    mem[_11375 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11375 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11427 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11427] = 26
                                    mem[_11427 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11427 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                        else:
                            if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) += arg1
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 4
                            balanceOf[address(msg.sender)] += arg1
                            mem[mem[64]] = arg1
                            emit Transfer(arg1, 0, msg.sender);
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11376 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11376] = 26
                                    mem[_11376 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11376 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11428 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11428] = 26
                                    mem[_11428 + 32] = 'SafeMath: division by zero'
                                    if pRECISION_FACTOR[stor25[idx].field_0]:
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = sha3(msg.sender, 27) + 2
                                        uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _11428 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                else:
                    if block.number <= bonusEndBlock:
                        mem[64] = 288
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not block.number - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6336 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6336] = 26
                                mem[_6336 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6336 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                            else:
                                if (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / block.number - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                if not (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                    _6522 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6522] = 26
                                    mem[_6522 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6522 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (block.number * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6725 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6725] = 26
                                    mem[_6725 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6725 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if ((block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += (block.number * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        lastRewardBlock = block.number
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            if not arg1:
                                s = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11370 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11370] = 26
                                        mem[_11370 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11370 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11424 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11424] = 26
                                        mem[_11424 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[s].field_0]:
                                            require s < rewardTokens.length
                                            mem[0] = rewardTokens[s].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                            s = s + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11424 + 32]
                                            s = s + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11371 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11371] = 26
                                        mem[_11371 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11371 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _11425 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11425] = 26
                                        mem[_11425 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11425 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                        else:
                            s = 0
                            t = 0
                            while s < rewardTokens.length:
                                mem[0] = rewardTokens[s].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _11426 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11426] = 26
                                    mem[_11426 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _11426 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12804 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12804] = 30
                                    mem[_12804 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13080 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13080 + 68] = mem[idx + _12804 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13080 + 68] = mem[_13080 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13080 + -mem[64] + 100
                                    if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _11550 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_11550] = 26
                                mem[_11550 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[s].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    s = 32
                                    while s < 26:
                                        mem[s + mem[64] + 68] = mem[s + _11550 + 32]
                                        s = s + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _12967 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12967] = 30
                                mem[_12967 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                    _13188 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13188 + 68] = mem[idx + _12967 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13188 + 68] = mem[_13188 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13188 + -mem[64] + 100
                                if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                    require s < rewardTokens.length
                                    mem[0] = 25
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    require ext_code.size(rewardTokens[s].field_0)
                                    call rewardTokens[s].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                s = s + 1
                                t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                continue 
                            if not arg1:
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14673 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14673] = 26
                                        mem[_14673 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14673 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14697 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14697] = 26
                                        mem[_14697 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14697 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                            else:
                                if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[32] = 4
                                balanceOf[address(msg.sender)] += arg1
                                mem[mem[64]] = arg1
                                emit Transfer(arg1, 0, msg.sender);
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _14674 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14674] = 26
                                        mem[_14674 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _14674 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _14698 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_14698] = 26
                                        mem[_14698 + 32] = 'SafeMath: division by zero'
                                        if pRECISION_FACTOR[stor25[idx].field_0]:
                                            require idx < rewardTokens.length
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = sha3(msg.sender, 27) + 2
                                            uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _14698 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            idx = 0
                            while idx < rewardTokens.length:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _6331 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6331] = 26
                                mem[_6331 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6331 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                require idx < rewardTokens.length
                                if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11365 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11365] = 26
                                            mem[_11365 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11365 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11421 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11421] = 26
                                            mem[_11421 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11421 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11366 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11366] = 26
                                            mem[_11366 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11366 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11422 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11422] = 26
                                            mem[_11422 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11422 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11423 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11423] = 26
                                        mem[_11423 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11423 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12785 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12785] = 30
                                        mem[_12785 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13071 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13071 + 68] = mem[idx + _12785 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13071 + 68] = mem[_13071 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13071 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11543 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11543] = 26
                                    mem[_11543 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11543 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12956 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12956] = 30
                                    mem[_12956 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13179 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13179 + 68] = mem[idx + _12956 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13179 + 68] = mem[_13179 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13179 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14671 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14671] = 26
                                            mem[_14671 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14671 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14695 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14695] = 26
                                            mem[_14695 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14695 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14672 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14672] = 26
                                            mem[_14672 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14672 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14696 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14696] = 26
                                            mem[_14696 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14696 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                        else:
                            mem[64] = 288
                            mem[224] = 30
                            mem[256] = 'SafeMath: subtraction overflow'
                            if lastRewardBlock > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < rewardTokens.length:
                                if not bonusEndBlock - lastRewardBlock:
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    _6328 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6328] = 26
                                    mem[_6328 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6328 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    require idx < rewardTokens.length
                                    if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                else:
                                    if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) / bonusEndBlock - lastRewardBlock != rewardPerBlock[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    require idx < rewardTokens.length
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 24
                                    if not (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]):
                                        _6507 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6507] = 26
                                        mem[_6507 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6507 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if (0 / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += 0 / ext_call.return_data[0]
                                    else:
                                        if (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / (bonusEndBlock * rewardPerBlock[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0]) != pRECISION_FACTOR[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6714 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6714] = 26
                                        mem[_6714 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _6714 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        require idx < rewardTokens.length
                                        if ((bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]) + accTokenPerShare[stor25[idx].field_0] < accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < rewardTokens.length
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        accTokenPerShare[stor25[idx].field_0] += (bonusEndBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) - (lastRewardBlock * rewardPerBlock[stor25[idx].field_0] * pRECISION_FACTOR[stor25[idx].field_0]) / ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            lastRewardBlock = block.number
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                if not arg1:
                                    s = 0
                                    while s < rewardTokens.length:
                                        mem[0] = rewardTokens[s].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11360 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11360] = 26
                                            mem[_11360 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11360 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11418 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11418] = 26
                                            mem[_11418 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[s].field_0]:
                                                require s < rewardTokens.length
                                                mem[0] = rewardTokens[s].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) = accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]
                                                s = s + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11418 + 32]
                                                s = s + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _11361 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11361] = 26
                                            mem[_11361 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _11361 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _11419 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_11419] = 26
                                            mem[_11419 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11419 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                s = 0
                                t = 0
                                while s < rewardTokens.length:
                                    mem[0] = rewardTokens[s].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _11420 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_11420] = 26
                                        mem[_11420 + 32] = 'SafeMath: division by zero'
                                        if not pRECISION_FACTOR[stor25[s].field_0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _11420 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _12766 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_12766] = 30
                                        mem[_12766 + 32] = 'SafeMath: subtraction overflow'
                                        if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[s].field_0]:
                                            _13062 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + _13062 + 68] = mem[idx + _12766 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_13062 + 68] = mem[_13062 + 70 len 30]
                                            revert with memory
                                              from mem[64]
                                               len _13062 + -mem[64] + 100
                                        if (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                            require s < rewardTokens.length
                                            mem[0] = 25
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            require ext_code.size(rewardTokens[s].field_0)
                                            call rewardTokens[s].field_0.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                        s = s + 1
                                        t = (0 / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        continue 
                                    if accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[s].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _11536 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_11536] = 26
                                    mem[_11536 + 32] = 'SafeMath: division by zero'
                                    if not pRECISION_FACTOR[stor25[s].field_0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _11536 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _12945 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12945] = 30
                                    mem[_12945 + 32] = 'SafeMath: subtraction overflow'
                                    if uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0) > accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]:
                                        _13170 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13170 + 68] = mem[idx + _12945 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13170 + 68] = mem[_13170 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13170 + -mem[64] + 100
                                    if (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0):
                                        require s < rewardTokens.length
                                        mem[0] = 25
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        require ext_code.size(rewardTokens[s].field_0)
                                        call rewardTokens[s].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    s = s + 1
                                    t = (accTokenPerShare[stor25[s].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[s].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[s].field_0].field_0)
                                    continue 
                                if not arg1:
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14669 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14669] = 26
                                            mem[_14669 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14669 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14693 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14693] = 26
                                            mem[_14693 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14693 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                else:
                                    if arg1 + uint256(lastStakingBlock[msg.sender].field_0) < uint256(lastStakingBlock[msg.sender].field_0):
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(lastStakingBlock[msg.sender].field_0) += arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not msg.sender:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[32] = 4
                                    balanceOf[address(msg.sender)] += arg1
                                    mem[mem[64]] = arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _14670 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14670] = 26
                                            mem[_14670 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = 0 / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            s = 32
                                            while s < 26:
                                                mem[s + mem[64] + 68] = mem[s + _14670 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _14694 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_14694] = 26
                                            mem[_14694 + 32] = 'SafeMath: division by zero'
                                            if pRECISION_FACTOR[stor25[idx].field_0]:
                                                require idx < rewardTokens.length
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = sha3(msg.sender, 27) + 2
                                                uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) = accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _14694 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
    uint256(lastStakingBlock[msg.sender].field_256) = block.number
    emit Deposit(arg1, msg.sender);
    stor3 = 1
}



}
