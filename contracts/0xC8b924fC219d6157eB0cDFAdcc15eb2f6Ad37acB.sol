contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
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
uint8 stor9; offset 168
uint8 stor9; offset 176
uint8 stor9; offset 184
uint128 stor9; offset 176
uint128 stor9; offset 168
address sub_197046f4Address; offset 8
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
uint8 sub_c7b01a97;
array of struct sub_ea73c96d;
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

function sub_197046f4(?) payable {
    return sub_197046f4Address
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function decimals() payable {
    return decimals
}

function isInitialized() payable {
    return bool(uint8(stor9.field_184))
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
    return bool(uint8(stor9.field_168))
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function hasPoolLimit() payable {
    return bool(uint8(stor9.field_176))
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

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_c7b01a97(?) payable {
    return bool(sub_c7b01a97)
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

function sub_ea73c96d(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
        mem[0] = arg1
        mem[32] = 29
        idx = idx + 1
        s = s + 1
        continue 
    return uint256(sub_ea73c96d[address(arg1)].field_0)
}

function getUserDebtByToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return uint256(lastStakingBlock[address(arg1)][2][address(arg2)].field_0)
}

function sub_fd35f8fe(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_ea73c96d[arg1].field_0)
    return sub_ea73c96d[arg1][arg2].field_0, 
           uint256(sub_ea73c96d[arg1][arg2].field_256),
           uint256(sub_ea73c96d[arg1][arg2].field_512),
           uint256(sub_ea73c96d[arg1][arg2].field_768)
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

function setPoolStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_c7b01a97 = uint8(arg1)
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
    if not uint8(stor9.field_176):
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
    if not uint8(stor9.field_168):
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
    while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
        require idx < uint256(sub_ea73c96d[address(arg1)].field_0)
        if uint256(sub_ea73c96d[address(arg1)][idx].field_768) >= block.number:
            mem[0] = arg1
            mem[32] = 29
            idx = idx + 1
            s = s
            continue 
        require idx < uint256(sub_ea73c96d[address(arg1)].field_0)
        mem[0] = arg1
        mem[32] = 29
        idx = idx + 1
        s = s + uint256(sub_ea73c96d[address(arg1)][idx].field_256)
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
    mem[32] = 29
    require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
    mem[96] = uint256(sub_ea73c96d[address(arg1)].field_0)
    if not uint256(sub_ea73c96d[address(arg1)].field_0):
        require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
        mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128] = uint256(sub_ea73c96d[address(arg1)].field_0)
        if not uint256(sub_ea73c96d[address(arg1)].field_0):
            require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
            mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[address(arg1)].field_0)
            mem[64] = (98 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192
            if not uint256(sub_ea73c96d[address(arg1)].field_0):
                idx = 0
                while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
                    require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
                    require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                    require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                    mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
                    mem[32] = 29
                    require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                    mem[0] = sha3(msg.sender, 29)
                    require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                    mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
                    idx = idx + 1
                    continue 
                _177 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[96]
                _179 = mem[96]
                mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * _179) + 128
                mem[(32 * _179) + _177 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                _330 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                mem[(32 * _179) + _177 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
                mem[_177 + 64] = (32 * _330) + (32 * _179) + 160
                mem[(32 * _330) + (32 * _179) + _177 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                _394 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                mem[(32 * _330) + (32 * _179) + _177 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
                return memory
                  from mem[64]
                   len (32 * _394) + (32 * _330) + (32 * _179) + _177 + -mem[64] + 192
            mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
            idx = 0
            while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
                mem[32] = 29
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 29)
                require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _182 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _184 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_182 + 32] = (32 * _184) + 128
            mem[(32 * _184) + _182 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            _333 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * _184) + _182 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
            mem[_182 + 64] = (32 * _333) + (32 * _184) + 160
            mem[(32 * _333) + (32 * _184) + _182 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            _397 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * _333) + (32 * _184) + _182 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _397) + (32 * _333) + (32 * _184) + _182 + -mem[64] + 192
        mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
        require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
        mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[address(arg1)].field_0)
        mem[64] = (98 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192
        if not uint256(sub_ea73c96d[address(arg1)].field_0):
            idx = 0
            while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
                mem[32] = 29
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 29)
                require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _187 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _189 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_187 + 32] = (32 * _189) + 128
            mem[(32 * _189) + _187 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            _336 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * _189) + _187 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
            mem[_187 + 64] = (32 * _336) + (32 * _189) + 160
            mem[(32 * _336) + (32 * _189) + _187 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            _400 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * _336) + (32 * _189) + _187 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _400) + (32 * _336) + (32 * _189) + _187 + -mem[64] + 192
        mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
            mem[32] = 29
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 29)
            require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _192 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _194 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * _194) + 128
        mem[(32 * _194) + _192 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        _339 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        mem[(32 * _194) + _192 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
        mem[_192 + 64] = (32 * _339) + (32 * _194) + 160
        mem[(32 * _339) + (32 * _194) + _192 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        _403 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        mem[(32 * _339) + (32 * _194) + _192 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _403) + (32 * _339) + (32 * _194) + _192 + -mem[64] + 192
    mem[128 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
    require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
    mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128] = uint256(sub_ea73c96d[address(arg1)].field_0)
    if not uint256(sub_ea73c96d[address(arg1)].field_0):
        require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
        mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[address(arg1)].field_0)
        mem[64] = (98 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192
        if not uint256(sub_ea73c96d[address(arg1)].field_0):
            idx = 0
            while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
                mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
                mem[32] = 29
                require idx < uint256(sub_ea73c96d[msg.sender].field_0)
                mem[0] = sha3(msg.sender, 29)
                require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
                mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
                idx = idx + 1
                continue 
            _197 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _199 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * _199) + 128
            mem[(32 * _199) + _197 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            _342 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * _199) + _197 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
            mem[_197 + 64] = (32 * _342) + (32 * _199) + 160
            mem[(32 * _342) + (32 * _199) + _197 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            _406 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * _342) + (32 * _199) + _197 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
            return memory
              from mem[64]
               len (32 * _406) + (32 * _342) + (32 * _199) + _197 + -mem[64] + 192
        mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
        idx = 0
        while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
            mem[32] = 29
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 29)
            require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _204 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_202 + 32] = (32 * _204) + 128
        mem[(32 * _204) + _202 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        _345 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        mem[(32 * _204) + _202 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
        mem[_202 + 64] = (32 * _345) + (32 * _204) + 160
        mem[(32 * _345) + (32 * _204) + _202 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        _409 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        mem[(32 * _345) + (32 * _204) + _202 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _409) + (32 * _345) + (32 * _204) + _202 + -mem[64] + 192
    mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
    require uint256(sub_ea73c96d[address(arg1)].field_0) <= test266151307()
    mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[address(arg1)].field_0)
    mem[64] = (98 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192
    if not uint256(sub_ea73c96d[address(arg1)].field_0):
        idx = 0
        while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
            mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
            mem[32] = 29
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            mem[0] = sha3(msg.sender, 29)
            require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
            mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
            idx = idx + 1
            continue 
        _207 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _209 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_207 + 32] = (32 * _209) + 128
        mem[(32 * _209) + _207 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        _348 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        mem[(32 * _209) + _207 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
        mem[_207 + 64] = (32 * _348) + (32 * _209) + 160
        mem[(32 * _348) + (32 * _209) + _207 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        _412 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        mem[(32 * _348) + (32 * _209) + _207 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
        return memory
          from mem[64]
           len (32 * _412) + (32 * _348) + (32 * _209) + _207 + -mem[64] + 192
    mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_ea73c96d[address(arg1)].field_0)]
    idx = 0
    while idx < uint256(sub_ea73c96d[address(arg1)].field_0):
        require idx < uint256(sub_ea73c96d[msg.sender].field_0)
        require idx < mem[96]
        mem[(32 * idx) + 128] = uint256(sub_ea73c96d[msg.sender][idx].field_512)
        require idx < uint256(sub_ea73c96d[msg.sender].field_0)
        require idx < mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
        mem[(32 * idx) + (32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160] = uint256(sub_ea73c96d[msg.sender][idx].field_768)
        mem[32] = 29
        require idx < uint256(sub_ea73c96d[msg.sender].field_0)
        mem[0] = sha3(msg.sender, 29)
        require idx < mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
        mem[(32 * idx) + (64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192] = uint256(sub_ea73c96d[msg.sender][idx].field_256)
        idx = idx + 1
        continue 
    _212 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _214 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * _214) + 128
    mem[(32 * _214) + _212 + 128] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
    _351 = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128]
    mem[(32 * _214) + _212 + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])] = mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160 len floor32(mem[(32 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 128])]
    mem[_212 + 64] = (32 * _351) + (32 * _214) + 160
    mem[(32 * _351) + (32 * _214) + _212 + 160] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
    _415 = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160]
    mem[(32 * _351) + (32 * _214) + _212 + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])] = mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 192 len floor32(mem[(64 * uint256(sub_ea73c96d[address(arg1)].field_0)) + 160])]
    return memory
      from mem[64]
       len (32 * _415) + (32 * _351) + (32 * _214) + _212 + -mem[64] + 192
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
    if uint8(stor9.field_184):
        revert with 0, 'Already initialized'
    if sub_197046f4Address != msg.sender:
        revert with 0, 'Not factory'
    if arg2.length != arg3.length:
        revert with 0, 'Mismatch length'
    if not arg1:
        revert with 0, 'Invalid address'
    if not arg8:
        revert with 0, 'Invalid address'
    if not arg12:
        revert with 0, 'Invalid address'
    uint8(stor9.field_184) = 1
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
                uint8(stor9.field_176) = 1
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
            uint8(stor9.field_168) = 1
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
                uint8(stor9.field_176) = 1
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
                uint8(stor9.field_176) = 1
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
            uint8(stor9.field_168) = 1
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
                uint8(stor9.field_176) = 1
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

function withdraw(bool arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if arg1:
        mem[0] = msg.sender
        mem[32] = 27
        if 0 > uint256(lastStakingBlock[msg.sender].field_0):
            revert with 0, 'Amount to withdraw too high'
        if block.number <= lastRewardBlock:
            idx = 0
            s = 0
            while idx < rewardTokens.length:
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 10
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    _617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_617] = 26
                    mem[_617 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _617 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_765] = 30
                    mem[_765 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        _874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _874 + 68] = mem[idx + _765 + 32]
                            idx = idx + 32
                            continue 
                        mem[_874 + 68] = mem[_874 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _874 + -mem[64] + 100
                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                        require idx < rewardTokens.length
                        mem[0] = 25
                        require ext_code.size(rewardTokens[idx].field_0)
                        staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    idx = idx + 1
                    s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    continue 
                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _630 = mem[64]
                mem[64] = mem[64] + 64
                mem[_630] = 26
                mem[_630 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _630 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _816 = mem[64]
                mem[64] = mem[64] + 64
                mem[_816] = 30
                mem[_816 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                    _943 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _943 + 68] = mem[idx + _816 + 32]
                        idx = idx + 32
                        continue 
                    mem[_943 + 68] = mem[_943 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _943 + -mem[64] + 100
                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                    require idx < rewardTokens.length
                    mem[0] = 25
                    require ext_code.size(rewardTokens[idx].field_0)
                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = msg.sender
                    if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                        mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        require ext_code.size(rewardTokens[idx].field_0)
                        call rewardTokens[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    else:
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(rewardTokens[idx].field_0)
                        call rewardTokens[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                continue 
            idx = 0
            while idx < rewardTokens.length:
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 10
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    _3527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3527] = 26
                    mem[_3527 + 32] = 'SafeMath: division by zero'
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
                        mem[s + mem[64] + 68] = mem[s + _3527 + 32]
                        s = s + 32
                        continue 
                else:
                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3556] = 26
                    mem[_3556 + 32] = 'SafeMath: division by zero'
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
                        mem[idx + mem[64] + 68] = mem[idx + _3556 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
        else:
            mem[100] = this.address
            require ext_code.size(stakedTokenAddress)
            staticcall stakedTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                lastRewardBlock = block.number
                idx = 0
                s = 0
                while idx < rewardTokens.length:
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 10
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        _616 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_616] = 26
                        mem[_616 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _616 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_757] = 30
                        mem[_757 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                            _864 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _864 + 68] = mem[idx + _757 + 32]
                                idx = idx + 32
                                continue 
                            mem[_864 + 68] = mem[_864 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _864 + -mem[64] + 100
                        if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            require ext_code.size(rewardTokens[idx].field_0)
                            staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_627] = 26
                    mem[_627 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _627 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_808] = 30
                    mem[_808 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                        _935 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _935 + 68] = mem[idx + _808 + 32]
                            idx = idx + 32
                            continue 
                        mem[_935 + 68] = mem[_935 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _935 + -mem[64] + 100
                    if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                        require idx < rewardTokens.length
                        mem[0] = 25
                        require ext_code.size(rewardTokens[idx].field_0)
                        staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    idx = idx + 1
                    s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    continue 
                idx = 0
                while idx < rewardTokens.length:
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 10
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        _3526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3526] = 26
                        mem[_3526 + 32] = 'SafeMath: division by zero'
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
                            mem[s + mem[64] + 68] = mem[s + _3526 + 32]
                            s = s + 32
                            continue 
                    else:
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3555] = 26
                        mem[_3555 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + mem[64] + 68] = mem[idx + _3555 + 32]
                            idx = idx + 32
                            continue 
                    revert with 0, 'SafeMath: division by zero'
            else:
                if block.number <= bonusEndBlock:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < rewardTokens.length:
                        if not block.number - lastRewardBlock:
                            require idx < rewardTokens.length
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 24
                            _653 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_653] = 26
                            mem[_653 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _653 + 32]
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
                                _671 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_671] = 26
                                mem[_671 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _671 + 32]
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
                                _705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_705] = 26
                                mem[_705 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _705 + 32]
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
                    idx = 0
                    s = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _3554 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3554] = 26
                            mem[_3554 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3554 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _3843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3843] = 30
                            mem[_3843 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _4003 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4003 + 68] = mem[idx + _3843 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4003 + 68] = mem[_4003 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4003 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3588 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3588] = 26
                        mem[_3588 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3588 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _3915 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3915] = 30
                        mem[_3915 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _4081 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4081 + 68] = mem[idx + _3915 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4081 + 68] = mem[_4081 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4081 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            require ext_code.size(rewardTokens[idx].field_0)
                            staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    idx = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _6480 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6480] = 26
                            mem[_6480 + 32] = 'SafeMath: division by zero'
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
                                mem[s + mem[64] + 68] = mem[s + _6480 + 32]
                                s = s + 32
                                continue 
                        else:
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6509] = 26
                            mem[_6509 + 32] = 'SafeMath: division by zero'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6509 + 32]
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
                            _648 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_648] = 26
                            mem[_648 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _648 + 32]
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
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _3553 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3553] = 26
                                mem[_3553 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3553 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _3835 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3835] = 30
                                mem[_3835 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _3993 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3993 + 68] = mem[idx + _3835 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3993 + 68] = mem[_3993 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3993 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = msg.sender
                                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    else:
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3585] = 26
                            mem[_3585 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3585 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _3907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3907] = 30
                            mem[_3907 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _4073 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4073 + 68] = mem[idx + _3907 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4073 + 68] = mem[_4073 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4073 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6479 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6479] = 26
                                mem[_6479 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _6479 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6508 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6508] = 26
                                mem[_6508 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _6508 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                    else:
                        mem[64] = 160
                        mem[96] = 30
                        mem[128] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not bonusEndBlock - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _645 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_645] = 26
                                mem[_645 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _645 + 32]
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
                                    _668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_668] = 26
                                    mem[_668 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _668 + 32]
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
                                    _692 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_692] = 26
                                    mem[_692 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _692 + 32]
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
                        idx = 0
                        s = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _3552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3552] = 26
                                mem[_3552 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3552 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _3827 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3827] = 30
                                mem[_3827 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _3983 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3983 + 68] = mem[idx + _3827 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3983 + 68] = mem[_3983 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3983 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = msg.sender
                                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    else:
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                s = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3582 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3582] = 26
                            mem[_3582 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3582 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _3899 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3899] = 30
                            mem[_3899 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _4065 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4065 + 68] = mem[idx + _3899 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4065 + 68] = mem[_4065 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4065 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            s = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6478 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6478] = 26
                                mem[_6478 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _6478 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6507] = 26
                                mem[_6507 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _6507 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
        emit Withdraw(0, msg.sender);
    else:
        if not msg.sender:
            revert with 0, 'Invalid address'
        idx = 0
        s = 0
        while idx < uint256(sub_ea73c96d[msg.sender].field_0):
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            if uint256(sub_ea73c96d[msg.sender][idx].field_768) >= block.number:
                if bonusEndBlock >= block.number:
                    mem[0] = msg.sender
                    mem[32] = 29
                    idx = idx + 1
                    s = s
                    continue 
            require idx < uint256(sub_ea73c96d[msg.sender].field_0)
            require idx < uint256(sub_ea73c96d[address(msg.sender)].field_0)
            sub_ea73c96d[address(msg.sender)][idx].field_0 = 0
            uint256(sub_ea73c96d[address(msg.sender)][idx].field_256) = 0
            uint256(sub_ea73c96d[address(msg.sender)][idx].field_512) = 0
            uint256(sub_ea73c96d[address(msg.sender)][idx].field_768) = 0
            mem[0] = msg.sender
            mem[32] = 29
            idx = idx + 1
            s = s + uint256(sub_ea73c96d[msg.sender][idx].field_256)
            continue 
        if s <= 0:
            revert with 0, 'Invalid amount'
        mem[0] = msg.sender
        mem[32] = 27
        if s > uint256(lastStakingBlock[msg.sender].field_0):
            revert with 0, 'Amount to withdraw too high'
        if block.number <= lastRewardBlock:
            idx = 0
            t = 0
            while idx < rewardTokens.length:
                mem[0] = rewardTokens[idx].field_0
                mem[32] = 10
                if not uint256(lastStakingBlock[msg.sender].field_0):
                    _3579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3579] = 26
                    mem[_3579 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3579 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _3892 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3892] = 30
                    mem[_3892 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                        _4057 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4057 + 68] = mem[idx + _3892 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4057 + 68] = mem[_4057 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4057 + -mem[64] + 100
                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                        require idx < rewardTokens.length
                        mem[0] = 25
                        require ext_code.size(rewardTokens[idx].field_0)
                        staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    idx = idx + 1
                    t = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    continue 
                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3606 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3606] = 26
                mem[_3606 + 32] = 'SafeMath: division by zero'
                if not pRECISION_FACTOR[stor25[idx].field_0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3606 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                _3972 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3972] = 30
                mem[_3972 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                    _4158 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4158 + 68] = mem[idx + _3972 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4158 + 68] = mem[_4158 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4158 + -mem[64] + 100
                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                    require idx < rewardTokens.length
                    mem[0] = 25
                    require ext_code.size(rewardTokens[idx].field_0)
                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = msg.sender
                    if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                        mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        require ext_code.size(rewardTokens[idx].field_0)
                        call rewardTokens[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    else:
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(rewardTokens[idx].field_0)
                        call rewardTokens[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                idx = idx + 1
                t = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                continue 
            if not s:
                idx = 0
                while idx < rewardTokens.length:
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 10
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        _6500 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6500] = 26
                        mem[_6500 + 32] = 'SafeMath: division by zero'
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
                            mem[s + mem[64] + 68] = mem[s + _6500 + 32]
                            s = s + 32
                            continue 
                    else:
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6529 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6529] = 26
                        mem[_6529 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + mem[64] + 68] = mem[idx + _6529 + 32]
                            idx = idx + 32
                            continue 
                    revert with 0, 'SafeMath: division by zero'
                emit Withdraw(s, msg.sender);
            else:
                _3440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3440] = 30
                mem[_3440 + 32] = 'SafeMath: subtraction overflow'
                if s > uint256(lastStakingBlock[msg.sender].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                uint256(lastStakingBlock[msg.sender].field_0) -= s
                if not msg.sender:
                    revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                _3686 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3686] = 34
                mem[_3686 + 32 len 34] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if s > balanceOf[address(msg.sender)]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 34
                    mem[mem[64] + 68 len 64] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_3686 + 66 len 30]
                    mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                    revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                mem[0] = msg.sender
                mem[32] = 4
                balanceOf[address(msg.sender)] -= s
                _3970 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3970] = 30
                mem[_3970 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= s
                emit Transfer(s, msg.sender, 0);
                _4341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4341] = uint256(lastStakingBlock[msg.sender].field_0)
                mem[_4341 + 32] = uint256(lastStakingBlock[msg.sender].field_256)
                _4437 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4437] = 30
                mem[_4437 + 32] = 'SafeMath: subtraction overflow'
                if uint256(lastStakingBlock[msg.sender].field_256) > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 == feePeriod:
                    if not s:
                        _4689 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4689] = 26
                        mem[_4689 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args feeCollectorAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4827 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4827] = 30
                        mem[_4827 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = s
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6502] = 26
                                mem[_6502 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _6502 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6531] = 26
                                mem[_6531 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _6531 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                        emit Withdraw(s, msg.sender);
                    else:
                        if unStakingFee * s / s != unStakingFee:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4700] = 26
                        mem[_4700 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args feeCollectorAddress, unStakingFee * s / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _4848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4848] = 30
                        mem[_4848 + 32] = 'SafeMath: subtraction overflow'
                        if unStakingFee * s / 10000 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, s - (unStakingFee * s / 10000)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6501] = 26
                                mem[_6501 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _6501 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6530] = 26
                                mem[_6530 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _6530 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                        emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                else:
                    if feePeriod <= 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = s
                        require ext_code.size(stakedTokenAddress)
                        call stakedTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6503 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6503] = 26
                                mem[_6503 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _6503 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _6532 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6532] = 26
                                mem[_6532 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _6532 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                        emit Withdraw(s, msg.sender);
                    else:
                        if feePeriod < block.number - uint256(lastStakingBlock[msg.sender].field_256):
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = s
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _6504 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6504] = 26
                                    mem[_6504 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _6504 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6533 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6533] = 26
                                    mem[_6533 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _6533 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw(s, msg.sender);
                        else:
                            if not s:
                                _4710 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4710] = 26
                                mem[_4710 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args feeCollectorAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4873 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4873] = 30
                                mem[_4873 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _6506 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6506] = 26
                                        mem[_6506 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _6506 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6535 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6535] = 26
                                        mem[_6535 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _6535 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw(s, msg.sender);
                            else:
                                if unStakingFee * s / s != unStakingFee:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4725 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4725] = 26
                                mem[_4725 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args feeCollectorAddress, unStakingFee * s / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _4898 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4898] = 30
                                mem[_4898 + 32] = 'SafeMath: subtraction overflow'
                                if unStakingFee * s / 10000 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s - (unStakingFee * s / 10000)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _6505 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6505] = 26
                                        mem[_6505 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _6505 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6534 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6534] = 26
                                        mem[_6534 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _6534 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
        else:
            mem[100] = this.address
            require ext_code.size(stakedTokenAddress)
            staticcall stakedTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                lastRewardBlock = block.number
                idx = 0
                t = 0
                while idx < rewardTokens.length:
                    mem[0] = rewardTokens[idx].field_0
                    mem[32] = 10
                    if not uint256(lastStakingBlock[msg.sender].field_0):
                        _3575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3575] = 26
                        mem[_3575 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3575 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _3883 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3883] = 30
                        mem[_3883 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                            _4045 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4045 + 68] = mem[idx + _3883 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4045 + 68] = mem[_4045 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4045 + -mem[64] + 100
                        if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            require ext_code.size(rewardTokens[idx].field_0)
                            staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        t = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3603] = 26
                    mem[_3603 + 32] = 'SafeMath: division by zero'
                    if not pRECISION_FACTOR[stor25[idx].field_0]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3603 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    _3962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3962] = 30
                    mem[_3962 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                        _4146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4146 + 68] = mem[idx + _3962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4146 + 68] = mem[_4146 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4146 + -mem[64] + 100
                    if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                        require idx < rewardTokens.length
                        mem[0] = 25
                        require ext_code.size(rewardTokens[idx].field_0)
                        staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = msg.sender
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                            mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        else:
                            mem[mem[64] + 36] = ext_call.return_data[0]
                            require ext_code.size(rewardTokens[idx].field_0)
                            call rewardTokens[idx].field_0.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    idx = idx + 1
                    t = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                    continue 
                if not s:
                    idx = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _6493 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6493] = 26
                            mem[_6493 + 32] = 'SafeMath: division by zero'
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
                                mem[s + mem[64] + 68] = mem[s + _6493 + 32]
                                s = s + 32
                                continue 
                        else:
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6522 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6522] = 26
                            mem[_6522 + 32] = 'SafeMath: division by zero'
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
                                mem[idx + mem[64] + 68] = mem[idx + _6522 + 32]
                                idx = idx + 32
                                continue 
                        revert with 0, 'SafeMath: division by zero'
                    emit Withdraw(s, msg.sender);
                else:
                    _3437 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3437] = 30
                    mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                    if s > uint256(lastStakingBlock[msg.sender].field_0):
                        revert with 0, 'SafeMath: subtraction overflow'
                    uint256(lastStakingBlock[msg.sender].field_0) -= s
                    if not msg.sender:
                        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                    _3679 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3679] = 34
                    mem[_3679 + 32 len 34] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if s > balanceOf[address(msg.sender)]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 34
                        mem[mem[64] + 68 len 64] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_3679 + 66 len 30]
                        mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                        revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                    mem[0] = msg.sender
                    mem[32] = 4
                    balanceOf[address(msg.sender)] -= s
                    _3960 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3960] = 30
                    mem[_3960 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= s
                    emit Transfer(s, msg.sender, 0);
                    _4334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4334] = uint256(lastStakingBlock[msg.sender].field_0)
                    mem[_4334 + 32] = uint256(lastStakingBlock[msg.sender].field_256)
                    _4434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4434] = 30
                    mem[_4434 + 32] = 'SafeMath: subtraction overflow'
                    if uint256(lastStakingBlock[msg.sender].field_256) > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == feePeriod:
                        if not s:
                            _4687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4687] = 26
                            mem[_4687 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args feeCollectorAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _4823 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4823] = 30
                            mem[_4823 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = s
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _6495 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6495] = 26
                                    mem[_6495 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _6495 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6524 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6524] = 26
                                    mem[_6524 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _6524 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw(s, msg.sender);
                        else:
                            if unStakingFee * s / s != unStakingFee:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4697 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4697] = 26
                            mem[_4697 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args feeCollectorAddress, unStakingFee * s / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _4843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4843] = 30
                            mem[_4843 + 32] = 'SafeMath: subtraction overflow'
                            if unStakingFee * s / 10000 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, s - (unStakingFee * s / 10000)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _6494 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6494] = 26
                                    mem[_6494 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _6494 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6523 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6523] = 26
                                    mem[_6523 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _6523 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                    else:
                        if feePeriod <= 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = s
                            require ext_code.size(stakedTokenAddress)
                            call stakedTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _6496 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6496] = 26
                                    mem[_6496 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _6496 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _6525 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6525] = 26
                                    mem[_6525 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _6525 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw(s, msg.sender);
                        else:
                            if feePeriod < block.number - uint256(lastStakingBlock[msg.sender].field_256):
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _6497 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6497] = 26
                                        mem[_6497 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _6497 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _6526 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6526] = 26
                                        mem[_6526 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _6526 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw(s, msg.sender);
                            else:
                                if not s:
                                    _4709 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4709] = 26
                                    mem[_4709 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4867 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4867] = 30
                                    mem[_4867 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _6499 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6499] = 26
                                            mem[_6499 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _6499 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _6528 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6528] = 26
                                            mem[_6528 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _6528 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if unStakingFee * s / s != unStakingFee:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4722 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4722] = 26
                                    mem[_4722 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, unStakingFee * s / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _4890 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4890] = 30
                                    mem[_4890 + 32] = 'SafeMath: subtraction overflow'
                                    if unStakingFee * s / 10000 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (unStakingFee * s / 10000)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _6498 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6498] = 26
                                            mem[_6498 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _6498 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _6527 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6527] = 26
                                            mem[_6527 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _6527 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
            else:
                if block.number <= bonusEndBlock:
                    mem[64] = 160
                    mem[96] = 30
                    mem[128] = 'SafeMath: subtraction overflow'
                    if lastRewardBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 0
                    while idx < rewardTokens.length:
                        if not block.number - lastRewardBlock:
                            require idx < rewardTokens.length
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 24
                            _3677 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3677] = 26
                            mem[_3677 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3677 + 32]
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
                                _3731 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3731] = 26
                                mem[_3731 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3731 + 32]
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
                                _3796 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3796] = 26
                                mem[_3796 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3796 + 32]
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
                    idx = 0
                    t = 0
                    while idx < rewardTokens.length:
                        mem[0] = rewardTokens[idx].field_0
                        mem[32] = 10
                        if not uint256(lastStakingBlock[msg.sender].field_0):
                            _6521 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6521] = 26
                            mem[_6521 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _6521 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7008] = 30
                            mem[_7008 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7161 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7161 + 68] = mem[idx + _7008 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7161 + 68] = mem[_7161 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7161 + -mem[64] + 100
                            if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            t = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _6553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6553] = 26
                        mem[_6553 + 32] = 'SafeMath: division by zero'
                        if not pRECISION_FACTOR[stor25[idx].field_0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _6553 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _7110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7110] = 30
                        mem[_7110 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                            _7197 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7197 + 68] = mem[idx + _7110 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7197 + 68] = mem[_7197 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7197 + -mem[64] + 100
                        if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                            require idx < rewardTokens.length
                            mem[0] = 25
                            require ext_code.size(rewardTokens[idx].field_0)
                            staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = msg.sender
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            else:
                                mem[mem[64] + 36] = ext_call.return_data[0]
                                require ext_code.size(rewardTokens[idx].field_0)
                                call rewardTokens[idx].field_0.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        idx = idx + 1
                        t = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                        continue 
                    if not s:
                        idx = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _8661 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8661] = 26
                                mem[_8661 + 32] = 'SafeMath: division by zero'
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
                                    mem[s + mem[64] + 68] = mem[s + _8661 + 32]
                                    s = s + 32
                                    continue 
                            else:
                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _8682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8682] = 26
                                mem[_8682 + 32] = 'SafeMath: division by zero'
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
                                    mem[idx + mem[64] + 68] = mem[idx + _8682 + 32]
                                    idx = idx + 32
                                    continue 
                            revert with 0, 'SafeMath: division by zero'
                        emit Withdraw(s, msg.sender);
                    else:
                        _6350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6350] = 30
                        mem[_6350 + 32] = 'SafeMath: subtraction overflow'
                        if s > uint256(lastStakingBlock[msg.sender].field_0):
                            revert with 0, 'SafeMath: subtraction overflow'
                        uint256(lastStakingBlock[msg.sender].field_0) -= s
                        if not msg.sender:
                            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                        _6700 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_6700] = 34
                        mem[_6700 + 32 len 34] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if s > balanceOf[address(msg.sender)]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 34
                            mem[mem[64] + 68 len 64] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6700 + 66 len 30]
                            mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                            revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                        mem[0] = msg.sender
                        mem[32] = 4
                        balanceOf[address(msg.sender)] -= s
                        _7108 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7108] = 30
                        mem[_7108 + 32] = 'SafeMath: subtraction overflow'
                        if s > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= s
                        emit Transfer(s, msg.sender, 0);
                        _7238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7238] = uint256(lastStakingBlock[msg.sender].field_0)
                        mem[_7238 + 32] = uint256(lastStakingBlock[msg.sender].field_256)
                        _7269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7269] = 30
                        mem[_7269 + 32] = 'SafeMath: subtraction overflow'
                        if uint256(lastStakingBlock[msg.sender].field_256) > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == feePeriod:
                            if not s:
                                _7366 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7366] = 26
                                mem[_7366 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args feeCollectorAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _7457 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7457] = 30
                                mem[_7457 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _8663 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8663] = 26
                                        mem[_8663 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _8663 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8684 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8684] = 26
                                        mem[_8684 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _8684 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw(s, msg.sender);
                            else:
                                if unStakingFee * s / s != unStakingFee:
                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _7374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7374] = 26
                                mem[_7374 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args feeCollectorAddress, unStakingFee * s / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _7471 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7471] = 30
                                mem[_7471 + 32] = 'SafeMath: subtraction overflow'
                                if unStakingFee * s / 10000 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s - (unStakingFee * s / 10000)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _8662 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8662] = 26
                                        mem[_8662 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _8662 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8683 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8683] = 26
                                        mem[_8683 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _8683 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                        else:
                            if feePeriod <= 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = s
                                require ext_code.size(stakedTokenAddress)
                                call stakedTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, s
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                while idx < rewardTokens.length:
                                    mem[0] = rewardTokens[idx].field_0
                                    mem[32] = 10
                                    if not uint256(lastStakingBlock[msg.sender].field_0):
                                        _8664 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8664] = 26
                                        mem[_8664 + 32] = 'SafeMath: division by zero'
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
                                            mem[s + mem[64] + 68] = mem[s + _8664 + 32]
                                            s = s + 32
                                            continue 
                                    else:
                                        if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _8685 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8685] = 26
                                        mem[_8685 + 32] = 'SafeMath: division by zero'
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
                                            mem[idx + mem[64] + 68] = mem[idx + _8685 + 32]
                                            idx = idx + 32
                                            continue 
                                    revert with 0, 'SafeMath: division by zero'
                                emit Withdraw(s, msg.sender);
                            else:
                                if feePeriod < block.number - uint256(lastStakingBlock[msg.sender].field_256):
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8665 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8665] = 26
                                            mem[_8665 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8665 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8686 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8686] = 26
                                            mem[_8686 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8686 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if not s:
                                        _7379 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7379] = 26
                                        mem[_7379 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args feeCollectorAddress, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _7493 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7493] = 30
                                        mem[_7493 + 32] = 'SafeMath: subtraction overflow'
                                        if 0 > s:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = 0
                                        while idx < rewardTokens.length:
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = 10
                                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                                _8667 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8667] = 26
                                                mem[_8667 + 32] = 'SafeMath: division by zero'
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
                                                    mem[s + mem[64] + 68] = mem[s + _8667 + 32]
                                                    s = s + 32
                                                    continue 
                                            else:
                                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8688 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8688] = 26
                                                mem[_8688 + 32] = 'SafeMath: division by zero'
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
                                                    mem[idx + mem[64] + 68] = mem[idx + _8688 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        emit Withdraw(s, msg.sender);
                                    else:
                                        if unStakingFee * s / s != unStakingFee:
                                            revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _7388 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7388] = 26
                                        mem[_7388 + 32] = 'SafeMath: division by zero'
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args feeCollectorAddress, unStakingFee * s / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        _7517 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7517] = 30
                                        mem[_7517 + 32] = 'SafeMath: subtraction overflow'
                                        if unStakingFee * s / 10000 > s:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, s - (unStakingFee * s / 10000)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = 0
                                        while idx < rewardTokens.length:
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = 10
                                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                                _8666 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8666] = 26
                                                mem[_8666 + 32] = 'SafeMath: division by zero'
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
                                                    mem[s + mem[64] + 68] = mem[s + _8666 + 32]
                                                    s = s + 32
                                                    continue 
                                            else:
                                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8687 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8687] = 26
                                                mem[_8687 + 32] = 'SafeMath: division by zero'
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
                                                    mem[idx + mem[64] + 68] = mem[idx + _8687 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                else:
                    if lastRewardBlock >= bonusEndBlock:
                        idx = 0
                        while idx < rewardTokens.length:
                            require idx < rewardTokens.length
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 24
                            _3670 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3670] = 26
                            mem[_3670 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3670 + 32]
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
                        idx = 0
                        t = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6517] = 26
                                mem[_6517 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6517 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6999 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6999] = 30
                                mem[_6999 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7149 + 68] = mem[idx + _6999 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7149 + 68] = mem[_7149 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7149 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = msg.sender
                                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    else:
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                t = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6550 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6550] = 26
                            mem[_6550 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _6550 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7100 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7100] = 30
                            mem[_7100 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7185 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7185 + 68] = mem[idx + _7100 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7185 + 68] = mem[_7185 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7185 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            t = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not s:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _8654 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8654] = 26
                                    mem[_8654 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _8654 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8675 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8675] = 26
                                    mem[_8675 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _8675 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw(s, msg.sender);
                        else:
                            _6346 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6346] = 30
                            mem[_6346 + 32] = 'SafeMath: subtraction overflow'
                            if s > uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) -= s
                            if not msg.sender:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                            _6693 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6693] = 34
                            mem[_6693 + 32 len 34] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            if s > balanceOf[address(msg.sender)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 34
                                mem[mem[64] + 68 len 64] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6693 + 66 len 30]
                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            mem[0] = msg.sender
                            mem[32] = 4
                            balanceOf[address(msg.sender)] -= s
                            _7098 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7098] = 30
                            mem[_7098 + 32] = 'SafeMath: subtraction overflow'
                            if s > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= s
                            emit Transfer(s, msg.sender, 0);
                            _7231 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7231] = uint256(lastStakingBlock[msg.sender].field_0)
                            mem[_7231 + 32] = uint256(lastStakingBlock[msg.sender].field_256)
                            _7266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7266] = 30
                            mem[_7266 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender].field_256) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == feePeriod:
                                if not s:
                                    _7364 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7364] = 26
                                    mem[_7364 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _7453 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7453] = 30
                                    mem[_7453 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8656 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8656] = 26
                                            mem[_8656 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8656 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8677 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8677] = 26
                                            mem[_8677 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8677 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if unStakingFee * s / s != unStakingFee:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7371 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7371] = 26
                                    mem[_7371 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, unStakingFee * s / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _7466 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7466] = 30
                                    mem[_7466 + 32] = 'SafeMath: subtraction overflow'
                                    if unStakingFee * s / 10000 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (unStakingFee * s / 10000)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8655 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8655] = 26
                                            mem[_8655 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8655 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8676 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8676] = 26
                                            mem[_8676 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8676 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                            else:
                                if feePeriod <= 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8657 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8657] = 26
                                            mem[_8657 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8657 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8678 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8678] = 26
                                            mem[_8678 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8678 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if feePeriod < block.number - uint256(lastStakingBlock[msg.sender].field_256):
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = 0
                                        while idx < rewardTokens.length:
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = 10
                                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                                _8658 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8658] = 26
                                                mem[_8658 + 32] = 'SafeMath: division by zero'
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
                                                    mem[s + mem[64] + 68] = mem[s + _8658 + 32]
                                                    s = s + 32
                                                    continue 
                                            else:
                                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8679 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8679] = 26
                                                mem[_8679 + 32] = 'SafeMath: division by zero'
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
                                                    mem[idx + mem[64] + 68] = mem[idx + _8679 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        emit Withdraw(s, msg.sender);
                                    else:
                                        if not s:
                                            _7378 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7378] = 26
                                            mem[_7378 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args feeCollectorAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _7487 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7487] = 30
                                            mem[_7487 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > s:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = s
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, s
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = 0
                                            while idx < rewardTokens.length:
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = 10
                                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                                    _8660 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8660] = 26
                                                    mem[_8660 + 32] = 'SafeMath: division by zero'
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
                                                        mem[s + mem[64] + 68] = mem[s + _8660 + 32]
                                                        s = s + 32
                                                        continue 
                                                else:
                                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8681 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8681] = 26
                                                    mem[_8681 + 32] = 'SafeMath: division by zero'
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
                                                        mem[idx + mem[64] + 68] = mem[idx + _8681 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            emit Withdraw(s, msg.sender);
                                        else:
                                            if unStakingFee * s / s != unStakingFee:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _7385 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7385] = 26
                                            mem[_7385 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args feeCollectorAddress, unStakingFee * s / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _7509 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7509] = 30
                                            mem[_7509 + 32] = 'SafeMath: subtraction overflow'
                                            if unStakingFee * s / 10000 > s:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (unStakingFee * s / 10000)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = 0
                                            while idx < rewardTokens.length:
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = 10
                                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                                    _8659 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8659] = 26
                                                    mem[_8659 + 32] = 'SafeMath: division by zero'
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
                                                        mem[s + mem[64] + 68] = mem[s + _8659 + 32]
                                                        s = s + 32
                                                        continue 
                                                else:
                                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8680 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8680] = 26
                                                    mem[_8680 + 32] = 'SafeMath: division by zero'
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
                                                        mem[idx + mem[64] + 68] = mem[idx + _8680 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                    else:
                        mem[64] = 160
                        mem[96] = 30
                        mem[128] = 'SafeMath: subtraction overflow'
                        if lastRewardBlock > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < rewardTokens.length:
                            if not bonusEndBlock - lastRewardBlock:
                                require idx < rewardTokens.length
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 24
                                _3665 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3665] = 26
                                mem[_3665 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3665 + 32]
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
                                    _3722 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3722] = 26
                                    mem[_3722 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3722 + 32]
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
                                    _3783 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3783] = 26
                                    mem[_3783 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3783 + 32]
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
                        idx = 0
                        t = 0
                        while idx < rewardTokens.length:
                            mem[0] = rewardTokens[idx].field_0
                            mem[32] = 10
                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                _6513 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6513] = 26
                                mem[_6513 + 32] = 'SafeMath: division by zero'
                                if not pRECISION_FACTOR[stor25[idx].field_0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6513 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6990 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6990] = 30
                                mem[_6990 + 32] = 'SafeMath: subtraction overflow'
                                if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > 0 / pRECISION_FACTOR[stor25[idx].field_0]:
                                    _7137 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _7137 + 68] = mem[idx + _6990 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7137 + 68] = mem[_7137 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7137 + -mem[64] + 100
                                if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                    require idx < rewardTokens.length
                                    mem[0] = 25
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = msg.sender
                                    if (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                        mem[mem[64] + 36] = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    else:
                                        mem[mem[64] + 36] = ext_call.return_data[0]
                                        require ext_code.size(rewardTokens[idx].field_0)
                                        call rewardTokens[idx].field_0.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                idx = idx + 1
                                t = (0 / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                continue 
                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _6547 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6547] = 26
                            mem[_6547 + 32] = 'SafeMath: division by zero'
                            if not pRECISION_FACTOR[stor25[idx].field_0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _6547 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _7090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7090] = 30
                            mem[_7090 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) > accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]:
                                _7173 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7173 + 68] = mem[idx + _7090 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7173 + 68] = mem[_7173 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _7173 + -mem[64] + 100
                            if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0):
                                require idx < rewardTokens.length
                                mem[0] = 25
                                require ext_code.size(rewardTokens[idx].field_0)
                                staticcall rewardTokens[idx].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = msg.sender
                                if (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0) <= ext_call.return_data[0]:
                                    mem[mem[64] + 36] = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                                else:
                                    mem[mem[64] + 36] = ext_call.return_data[0]
                                    require ext_code.size(rewardTokens[idx].field_0)
                                    call rewardTokens[idx].field_0.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            idx = idx + 1
                            t = (accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / pRECISION_FACTOR[stor25[idx].field_0]) - uint256(lastStakingBlock[msg.sender][2][stor25[idx].field_0].field_0)
                            continue 
                        if not s:
                            idx = 0
                            while idx < rewardTokens.length:
                                mem[0] = rewardTokens[idx].field_0
                                mem[32] = 10
                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                    _8647 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8647] = 26
                                    mem[_8647 + 32] = 'SafeMath: division by zero'
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
                                        mem[s + mem[64] + 68] = mem[s + _8647 + 32]
                                        s = s + 32
                                        continue 
                                else:
                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _8668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8668] = 26
                                    mem[_8668 + 32] = 'SafeMath: division by zero'
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
                                        mem[idx + mem[64] + 68] = mem[idx + _8668 + 32]
                                        idx = idx + 32
                                        continue 
                                revert with 0, 'SafeMath: division by zero'
                            emit Withdraw(s, msg.sender);
                        else:
                            _6340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6340] = 30
                            mem[_6340 + 32] = 'SafeMath: subtraction overflow'
                            if s > uint256(lastStakingBlock[msg.sender].field_0):
                                revert with 0, 'SafeMath: subtraction overflow'
                            uint256(lastStakingBlock[msg.sender].field_0) -= s
                            if not msg.sender:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
                            _6686 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_6686] = 34
                            mem[_6686 + 32 len 34] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            if s > balanceOf[address(msg.sender)]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 34
                                mem[mem[64] + 68 len 64] = 0x6b45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_6686 + 66 len 30]
                                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
                            mem[0] = msg.sender
                            mem[32] = 4
                            balanceOf[address(msg.sender)] -= s
                            _7088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7088] = 30
                            mem[_7088 + 32] = 'SafeMath: subtraction overflow'
                            if s > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= s
                            emit Transfer(s, msg.sender, 0);
                            _7224 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7224] = uint256(lastStakingBlock[msg.sender].field_0)
                            mem[_7224 + 32] = uint256(lastStakingBlock[msg.sender].field_256)
                            _7263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7263] = 30
                            mem[_7263 + 32] = 'SafeMath: subtraction overflow'
                            if uint256(lastStakingBlock[msg.sender].field_256) > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == feePeriod:
                                if not s:
                                    _7362 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7362] = 26
                                    mem[_7362 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _7449 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7449] = 30
                                    mem[_7449 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8649 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8649] = 26
                                            mem[_8649 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8649 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8670 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8670] = 26
                                            mem[_8670 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8670 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if unStakingFee * s / s != unStakingFee:
                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7368 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7368] = 26
                                    mem[_7368 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args feeCollectorAddress, unStakingFee * s / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _7461 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7461] = 30
                                    mem[_7461 + 32] = 'SafeMath: subtraction overflow'
                                    if unStakingFee * s / 10000 > s:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s - (unStakingFee * s / 10000)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8648 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8648] = 26
                                            mem[_8648 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8648 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8669 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8669] = 26
                                            mem[_8669 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8669 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
                            else:
                                if feePeriod <= 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(stakedTokenAddress)
                                    call stakedTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    idx = 0
                                    while idx < rewardTokens.length:
                                        mem[0] = rewardTokens[idx].field_0
                                        mem[32] = 10
                                        if not uint256(lastStakingBlock[msg.sender].field_0):
                                            _8650 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8650] = 26
                                            mem[_8650 + 32] = 'SafeMath: division by zero'
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
                                                mem[s + mem[64] + 68] = mem[s + _8650 + 32]
                                                s = s + 32
                                                continue 
                                        else:
                                            if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _8671 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_8671] = 26
                                            mem[_8671 + 32] = 'SafeMath: division by zero'
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
                                                mem[idx + mem[64] + 68] = mem[idx + _8671 + 32]
                                                idx = idx + 32
                                                continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    emit Withdraw(s, msg.sender);
                                else:
                                    if feePeriod < block.number - uint256(lastStakingBlock[msg.sender].field_256):
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(stakedTokenAddress)
                                        call stakedTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        idx = 0
                                        while idx < rewardTokens.length:
                                            mem[0] = rewardTokens[idx].field_0
                                            mem[32] = 10
                                            if not uint256(lastStakingBlock[msg.sender].field_0):
                                                _8651 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8651] = 26
                                                mem[_8651 + 32] = 'SafeMath: division by zero'
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
                                                    mem[s + mem[64] + 68] = mem[s + _8651 + 32]
                                                    s = s + 32
                                                    continue 
                                            else:
                                                if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                    revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8672 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8672] = 26
                                                mem[_8672 + 32] = 'SafeMath: division by zero'
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
                                                    mem[idx + mem[64] + 68] = mem[idx + _8672 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        emit Withdraw(s, msg.sender);
                                    else:
                                        if not s:
                                            _7377 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7377] = 26
                                            mem[_7377 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args feeCollectorAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _7481 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7481] = 30
                                            mem[_7481 + 32] = 'SafeMath: subtraction overflow'
                                            if 0 > s:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = s
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, s
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = 0
                                            while idx < rewardTokens.length:
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = 10
                                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                                    _8653 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8653] = 26
                                                    mem[_8653 + 32] = 'SafeMath: division by zero'
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
                                                        mem[s + mem[64] + 68] = mem[s + _8653 + 32]
                                                        s = s + 32
                                                        continue 
                                                else:
                                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8674 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8674] = 26
                                                    mem[_8674 + 32] = 'SafeMath: division by zero'
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
                                                        mem[idx + mem[64] + 68] = mem[idx + _8674 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            emit Withdraw(s, msg.sender);
                                        else:
                                            if unStakingFee * s / s != unStakingFee:
                                                revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _7382 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7382] = 26
                                            mem[_7382 + 32] = 'SafeMath: division by zero'
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args feeCollectorAddress, unStakingFee * s / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            _7501 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7501] = 30
                                            mem[_7501 + 32] = 'SafeMath: subtraction overflow'
                                            if unStakingFee * s / 10000 > s:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = s - (unStakingFee * s / 10000)
                                            require ext_code.size(stakedTokenAddress)
                                            call stakedTokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, s - (unStakingFee * s / 10000)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            idx = 0
                                            while idx < rewardTokens.length:
                                                mem[0] = rewardTokens[idx].field_0
                                                mem[32] = 10
                                                if not uint256(lastStakingBlock[msg.sender].field_0):
                                                    _8652 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8652] = 26
                                                    mem[_8652 + 32] = 'SafeMath: division by zero'
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
                                                        mem[s + mem[64] + 68] = mem[s + _8652 + 32]
                                                        s = s + 32
                                                        continue 
                                                else:
                                                    if accTokenPerShare[stor25[idx].field_0] * uint256(lastStakingBlock[msg.sender].field_0) / uint256(lastStakingBlock[msg.sender].field_0) != accTokenPerShare[stor25[idx].field_0]:
                                                        revert with 0, 32, 33, 0x6b536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8673 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8673] = 26
                                                    mem[_8673 + 32] = 'SafeMath: division by zero'
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
                                                        mem[idx + mem[64] + 68] = mem[idx + _8673 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            emit Withdraw((s - (unStakingFee * s / 10000)), msg.sender);
    stor3 = 1
}



}
