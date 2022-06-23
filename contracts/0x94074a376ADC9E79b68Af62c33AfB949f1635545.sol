contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - emergencyRewardWithdraw(uint256 arg1)
#  - resetAllowances()
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - sub_41a30e42(?)
#  - sub_4de8ff21(?)
#  - compoundReward()
#  - deposit(uint256 arg1)
#  - claimReward()
#  - emergencyWithdraw()
#  - claimDividend()
#
const slippageFactorUL = 995

const MAX_FEE = 2000


address owner;
uint256 stor1;
uint8 stor2; offset 160
address sub_d8e31608Address;
uint256 duration;
uint8 stor4;
uint256 poolLimitPerUser;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 rewardPerBlock;
uint256 lastRewardBlock;
uint256 slippageFactor;
address uniRouterAddress;
array of address sub_167d2dbe;
array of address sub_c1e22a65;
uint256 depositFee;
uint256 withdrawFee;
uint256 buyBackRate;
uint256 sub_e4eceff0;
uint32 stor18;
address walletAAddress;
uint256 stor18;
address buyBackAddress;
address buyBackWalletAddress;
uint256 performanceFee;
uint256 PRECISION_FACTOR;
uint256 sub_88bbb0c1;
address stakingTokenAddress;
address sub_6e707b73Address;
address dividendTokenAddress;
uint256 accTokenPerShare;
uint256 sub_92b46e5b;
uint256 totalStaked;
uint256 stor30;
uint256 stor31;
uint256 stor32;
mapping of struct userInfo;

function duration() {
    return duration
}

function dividendToken() {
    return dividendTokenAddress
}

function sub_167d2dbe(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_167d2dbe.length
    return address(sub_167d2dbe[arg1])
}

function buyBackRate() {
    return buyBackRate
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function bonusEndBlock() {
    return bonusEndBlock
}

function buyBackWallet() {
    return buyBackWalletAddress
}

function isInitialized() {
    return bool(stor2)
}

function startBlock() {
    return startBlock
}

function poolLimitPerUser() {
    return poolLimitPerUser
}

function depositFee() {
    return depositFee
}

function uniRouterAddress() {
    return uniRouterAddress
}

function sub_6e707b73(?) {
    return sub_6e707b73Address
}

function stakingToken() {
    return stakingTokenAddress
}

function buyBackAddress() {
    return buyBackAddress
}

function totalStaked() {
    return totalStaked
}

function performanceFee() {
    return performanceFee
}

function sub_88bbb0c1(?) {
    return sub_88bbb0c1
}

function rewardPerBlock() {
    return rewardPerBlock
}

function owner() {
    return owner
}

function accTokenPerShare() {
    return accTokenPerShare
}

function sub_92b46e5b(?) {
    return sub_92b46e5b
}

function hasUserLimit() {
    return bool(stor4)
}

function lastRewardBlock() {
    return lastRewardBlock
}

function walletA() {
    return address(walletAAddress)
}

function sub_c1e22a65(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c1e22a65.length
    return address(sub_c1e22a65[arg1])
}

function PRECISION_FACTOR() {
    return PRECISION_FACTOR
}

function sub_d8e31608(?) {
    return sub_d8e31608Address
}

function sub_e4eceff0(?) {
    return sub_e4eceff0
}

function withdrawFee() {
    return withdrawFee
}

function slippageFactor() {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function stopReward() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.number
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRewardPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
    emit NewRewardPerBlock(arg1);
}

function setDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock:
        revert with 0, 'Pool was already started'
    if arg1 < 30:
        revert with 0, 'lower limit reached'
    duration = arg1
    emit DurationUpdated(arg1);
}

function sub_ce8b6061(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        if buyBackAddress == address(arg1):
            revert with 0, 'Invalid address'
    buyBackAddress = address(arg1)
    emit 0x8a9b7fb7: address(arg1)
}

function sub_7972271b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        if address(walletAAddress) == address(arg1):
            revert with 0, 'Invalid address'
    address(walletAAddress) = address(arg1)
    emit 0x6de6ddf8: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_81b61948(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if buyBackWalletAddress != msg.sender:
        revert with 0, 'setServiceInfo: FORBIDDEN'
    if not address(arg1):
        if buyBackWalletAddress == address(arg1):
            revert with 0, 'Invalid address'
    buyBackWalletAddress = address(arg1)
    performanceFee = arg2
    emit 0x232f2e62: address(arg1), arg2
}

function updatePoolLimitPerUser(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4:
        revert with 0, 'Must be set'
    if not arg1:
        stor4 = uint8(arg1)
        poolLimitPerUser = 0
    else:
        if arg2 <= poolLimitPerUser:
            revert with 0, 'New limit must be higher'
        poolLimitPerUser = arg2
    emit NewPoolLimit(poolLimitPerUser);
}

function sub_9f94e272(?) {
    if dividendTokenAddress == sub_6e707b73Address:
        return stor30
    require ext_code.size(sub_6e707b73Address)
    staticcall sub_6e707b73Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stakingTokenAddress != sub_6e707b73Address:
        return ext_call.return_data[0]
    if ext_call.return_data[0] >= totalStaked:
        return (ext_call.return_data[0] - totalStaked)
    else:
        return 0
}

function startReward() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock:
        revert with 0, 'Pool was already started'
    if block.number > -101:
        revert with 0, 17
    startBlock = block.number + 100
    if duration > 0x2468acf13579be02468acf13579be02468acf13579be02468acf13579be02:
        revert with 0, 17
    if startBlock > !(8 * 3600 * duration):
        revert with 0, 17
    bonusEndBlock = startBlock + (8 * 3600 * duration)
    lastRewardBlock = startBlock
    emit NewStartAndEndBlocks(startBlock, startBlock + (8 * 3600 * duration));
}

function sub_bd01ac4e(?) {
    if not dividendTokenAddress:
        return eth.balance(this.address)
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_6e707b73Address != dividendTokenAddress:
        if stakingTokenAddress != dividendTokenAddress:
            return ext_call.return_data[0]
        if ext_call.return_data[0] >= totalStaked:
            return (ext_call.return_data[0] - totalStaked)
    else:
        if ext_call.return_data[0] >= stor30:
            if stakingTokenAddress != dividendTokenAddress:
                return (ext_call.return_data[0] - stor30)
            if ext_call.return_data[0] - stor30 >= totalStaked:
                return (ext_call.return_data[0] - stor30 - totalStaked)
    return 0
}

function depositRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1
    mem[100] = this.address
    require ext_code.size(sub_6e707b73Address)
    staticcall sub_6e707b73Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_6e707b73Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call sub_6e707b73Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_6e707b73Address)
    staticcall sub_6e707b73Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor30 > !ext_call.return_data[0]:
        revert with 0, 17
    if stor30 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    stor1 = 1
}

function sub_00722765(?) {
    require calldata.size - 4 >= 224
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 164).length) + 128 < 96 or (32 * ('cd', 164).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 196).length) + 160 < 128 or (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 164).length) + 128] = ('cd', 196).length
    require calldata.size >= cd[196] + (32 * ('cd', 196).length) + 36
    idx = 0
    s = cd[196] + 36
    t = (32 * ('cd', 164).length) + 160
    while idx < ('cd', 196).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] >= 2000:
        revert with 0, 'Invalid deposit fee'
    if cd[36] >= 2000:
        revert with 0, 'Invalid withdraw fee'
    if cd[100] > 995:
        revert with 0, '_slippageFactor too high'
    depositFee = cd[4]
    withdrawFee = cd[36]
    sub_e4eceff0 = cd[68]
    if 10000 < cd[68]:
        revert with 0, 17
    buyBackRate = -cd[68] + 10000
    slippageFactor = cd[100]
    uniRouterAddress = address(cd[132])
    sub_167d2dbe.length = ('cd', 196).length
    if not ('cd', 196).length:
        idx = 0
        while sub_167d2dbe.length > idx:
            uint256(sub_167d2dbe[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 164).length) + 160
        while (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 160 > idx:
            address(sub_167d2dbe[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 196).length) + 31) >> 5
        while sub_167d2dbe.length > idx:
            uint256(sub_167d2dbe[idx]) = 0
            idx = idx + 1
            continue 
    sub_c1e22a65.length = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while sub_c1e22a65.length > idx:
            uint256(sub_c1e22a65[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 164).length) + 128 > idx:
            address(sub_c1e22a65[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while sub_c1e22a65.length > idx:
            uint256(sub_c1e22a65[idx]) = 0
            idx = idx + 1
            continue 
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 160] = cd[4]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 192] = cd[36]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 224] = cd[68]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 256] = cd[100]
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 288] = address(cd[132])
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 320] = 224
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 384] = ('cd', 164).length
    idx = 0
    s = 128
    t = (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 416
    while idx < ('cd', 164).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 352] = (32 * ('cd', 164).length) + 256
    mem[(64 * ('cd', 164).length) + (32 * ('cd', 196).length) + 416] = ('cd', 196).length
    idx = 0
    s = (32 * ('cd', 164).length) + 160
    t = (64 * ('cd', 164).length) + (32 * ('cd', 196).length) + 448
    while idx < ('cd', 196).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xe517d267: mem[(32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 160 len (32 * ('cd', 164).length) + (32 * ('cd', 196).length) + 288]
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number <= lastRewardBlock:
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock <= 0:
        if userInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < lastRewardBlock:
            revert with 0, 17
        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
            revert with 0, 17
        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and accTokenPerShare + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardBlock >= bonusEndBlock:
        if False and rewardPerBlock > 0:
            revert with 0, 17
        if False and PRECISION_FACTOR > 0:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if accTokenPerShare > !(0 / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and accTokenPerShare + (0 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if (accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((accTokenPerShare * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if bonusEndBlock < lastRewardBlock:
        revert with 0, 17
    if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
        revert with 0, 17
    if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and accTokenPerShare + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not PRECISION_FACTOR:
        revert with 0, 18
    if (accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((accTokenPerShare * userInfo[address(arg1)].field_0) + ((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}

function pendingDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalStaked:
        return 0
    if not dividendTokenAddress:
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < stor31:
            revert with 0, 17
        if eth.balance(this.address) - stor31 and sub_88bbb0c1 > -1 / eth.balance(this.address) - stor31:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if sub_92b46e5b > !((eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and sub_92b46e5b + ((eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not sub_88bbb0c1:
            revert with 0, 18
        if (sub_92b46e5b * userInfo[address(arg1)].field_0) + ((eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
            revert with 0, 17
        return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + ((eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
    require ext_code.size(dividendTokenAddress)
    staticcall dividendTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_6e707b73Address != dividendTokenAddress:
        if stakingTokenAddress != dividendTokenAddress:
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor31:
                revert with 0, 17
            if ext_call.return_data[0] - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor31:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and sub_92b46e5b + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not sub_88bbb0c1:
                revert with 0, 18
            if (sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
                revert with 0, 17
            return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
        if ext_call.return_data[0] >= totalStaked:
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - totalStaked < stor31:
                revert with 0, 17
            if ext_call.return_data[0] - totalStaked - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - totalStaked - stor31:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and sub_92b46e5b + ((ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not sub_88bbb0c1:
                revert with 0, 18
            if (sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
                revert with 0, 17
            return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
    else:
        if ext_call.return_data[0] >= stor30:
            if stakingTokenAddress != dividendTokenAddress:
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - stor30 < stor31:
                    revert with 0, 17
                if ext_call.return_data[0] - stor30 - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor30 - stor31:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and sub_92b46e5b + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not sub_88bbb0c1:
                    revert with 0, 18
                if (sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
                    revert with 0, 17
                return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
            if ext_call.return_data[0] - stor30 >= totalStaked:
                require ext_code.size(stakingTokenAddress)
                staticcall stakingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - stor30 - totalStaked < stor31:
                    revert with 0, 17
                if ext_call.return_data[0] - stor30 - totalStaked - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor30 - totalStaked - stor31:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and sub_92b46e5b + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if not sub_88bbb0c1:
                    revert with 0, 18
                if (sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
                    revert with 0, 17
                return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + ((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 < stor31:
        revert with 0, 17
    if -stor31 and sub_88bbb0c1 > -1 / -stor31:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_92b46e5b > !(-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and sub_92b46e5b + (-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not sub_88bbb0c1:
        revert with 0, 18
    if (sub_92b46e5b * userInfo[address(arg1)].field_0) + (-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1 < userInfo[address(arg1)].field_512:
        revert with 0, 17
    return (((sub_92b46e5b * userInfo[address(arg1)].field_0) + (-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / sub_88bbb0c1) - userInfo[address(arg1)].field_512)
}

function harvest() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalStaked:
        if block.number > lastRewardBlock:
            if lastRewardBlock:
                if totalStaked:
                    if block.number <= bonusEndBlock:
                        if block.number < lastRewardBlock:
                            revert with 0, 17
                        if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                            revert with 0, 17
                        if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                            revert with 0, 17
                        accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                    else:
                        if lastRewardBlock >= bonusEndBlock:
                            if False and rewardPerBlock > 0:
                                revert with 0, 17
                            if False and PRECISION_FACTOR > 0:
                                revert with 0, 17
                            if not totalStaked:
                                revert with 0, 18
                            if accTokenPerShare > !(0 / totalStaked):
                                revert with 0, 17
                            accTokenPerShare += 0 / totalStaked
                        else:
                            if bonusEndBlock < lastRewardBlock:
                                revert with 0, 17
                            if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                                revert with 0, 17
                            if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                revert with 0, 17
                            if not totalStaked:
                                revert with 0, 18
                            if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                                revert with 0, 17
                            accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                lastRewardBlock = block.number
        mem[100] = this.address
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalStaked:
            revert with 0, 17
        if ext_call.return_data[0] - totalStaked and sub_92b46e5b > -1 / ext_call.return_data[0] - totalStaked:
            revert with 0, 17
        if not sub_88bbb0c1:
            revert with 0, 18
        if (ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1 < stor32:
            revert with 0, 17
        if ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
            if not dividendTokenAddress:
                call address(walletAAddress) with:
                   value ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 132] = address(walletAAddress)
                mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor18)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(dividendTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0
                mem[ceil32(return_data.size) + 328] = 0
                call dividendTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
            if stor31 < ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
                revert with 0, 17
            stor31 = stor31 - ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) + stor32
    else:
        mem[100] = this.address
        if not dividendTokenAddress:
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < stor31:
                revert with 0, 17
            if eth.balance(this.address) - stor31 and sub_88bbb0c1 > -1 / eth.balance(this.address) - stor31:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_92b46e5b > !((eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                revert with 0, 17
            sub_92b46e5b += (eth.balance(this.address) * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]
            stor31 = eth.balance(this.address)
            if block.number > lastRewardBlock:
                if lastRewardBlock:
                    if totalStaked:
                        if block.number <= bonusEndBlock:
                            if block.number < lastRewardBlock:
                                revert with 0, 17
                            if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                                revert with 0, 17
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                revert with 0, 17
                            if not totalStaked:
                                revert with 0, 18
                            if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                                revert with 0, 17
                            accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                        else:
                            if lastRewardBlock >= bonusEndBlock:
                                if False and rewardPerBlock > 0:
                                    revert with 0, 17
                                if False and PRECISION_FACTOR > 0:
                                    revert with 0, 17
                                if not totalStaked:
                                    revert with 0, 18
                                if accTokenPerShare > !(0 / totalStaked):
                                    revert with 0, 17
                                accTokenPerShare += 0 / totalStaked
                            else:
                                if bonusEndBlock < lastRewardBlock:
                                    revert with 0, 17
                                if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                                    revert with 0, 17
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    revert with 0, 17
                                if not totalStaked:
                                    revert with 0, 18
                                if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                                    revert with 0, 17
                                accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                    lastRewardBlock = block.number
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalStaked:
                revert with 0, 17
            if ext_call.return_data[0] - totalStaked and sub_92b46e5b > -1 / ext_call.return_data[0] - totalStaked:
                revert with 0, 17
            if not sub_88bbb0c1:
                revert with 0, 18
            if (ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1 < stor32:
                revert with 0, 17
            if ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
                if not dividendTokenAddress:
                    call address(walletAAddress) with:
                       value ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(walletAAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor18)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(dividendTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call dividendTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor31 < ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
                    revert with 0, 17
                stor31 = stor31 - ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) + stor32
        else:
            require ext_code.size(dividendTokenAddress)
            staticcall dividendTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_6e707b73Address != dividendTokenAddress:
                if stakingTokenAddress != dividendTokenAddress:
                    if ext_call.return_data[0] < stor31:
                        revert with 0, 17
                    if ext_call.return_data[0] - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor31:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_92b46e5b += (ext_call.return_data[0] * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]
                    stor31 = ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] >= totalStaked:
                        if ext_call.return_data[0] - totalStaked < stor31:
                            revert with 0, 17
                        if ext_call.return_data[0] - totalStaked - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - totalStaked - stor31:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                            revert with 0, 17
                        sub_92b46e5b += (ext_call.return_data[0] * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]
                        stor31 = ext_call.return_data[0] - totalStaked
                    else:
                        if 0 < stor31:
                            revert with 0, 17
                        if -stor31 and sub_88bbb0c1 > -1 / -stor31:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_92b46e5b > !(-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]):
                            revert with 0, 17
                        sub_92b46e5b += -1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]
                        stor31 = 0
            else:
                if ext_call.return_data[0] < stor30:
                    if 0 < stor31:
                        revert with 0, 17
                    if -stor31 and sub_88bbb0c1 > -1 / -stor31:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if sub_92b46e5b > !(-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_92b46e5b += -1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]
                    stor31 = 0
                else:
                    if stakingTokenAddress != dividendTokenAddress:
                        if ext_call.return_data[0] - stor30 < stor31:
                            revert with 0, 17
                        if ext_call.return_data[0] - stor30 - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor30 - stor31:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                            revert with 0, 17
                        sub_92b46e5b += (ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]
                        stor31 = ext_call.return_data[0] - stor30
                    else:
                        if ext_call.return_data[0] - stor30 >= totalStaked:
                            if ext_call.return_data[0] - stor30 - totalStaked < stor31:
                                revert with 0, 17
                            if ext_call.return_data[0] - stor30 - totalStaked - stor31 and sub_88bbb0c1 > -1 / ext_call.return_data[0] - stor30 - totalStaked - stor31:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if sub_92b46e5b > !((ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]):
                                revert with 0, 17
                            sub_92b46e5b += (ext_call.return_data[0] * sub_88bbb0c1) - (stor30 * sub_88bbb0c1) - (totalStaked * sub_88bbb0c1) - (stor31 * sub_88bbb0c1) / ext_call.return_data[0]
                            stor31 = ext_call.return_data[0] - stor30 - totalStaked
                        else:
                            if 0 < stor31:
                                revert with 0, 17
                            if -stor31 and sub_88bbb0c1 > -1 / -stor31:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if sub_92b46e5b > !(-1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]):
                                revert with 0, 17
                            sub_92b46e5b += -1 * stor31 * sub_88bbb0c1 / ext_call.return_data[0]
                            stor31 = 0
            if block.number > lastRewardBlock:
                if lastRewardBlock:
                    if totalStaked:
                        if block.number <= bonusEndBlock:
                            if block.number < lastRewardBlock:
                                revert with 0, 17
                            if block.number - lastRewardBlock and rewardPerBlock > -1 / block.number - lastRewardBlock:
                                revert with 0, 17
                            if (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (block.number * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                revert with 0, 17
                            if not totalStaked:
                                revert with 0, 18
                            if accTokenPerShare > !((block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                                revert with 0, 17
                            accTokenPerShare += (block.number * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                        else:
                            if lastRewardBlock >= bonusEndBlock:
                                if False and rewardPerBlock > 0:
                                    revert with 0, 17
                                if False and PRECISION_FACTOR > 0:
                                    revert with 0, 17
                                if not totalStaked:
                                    revert with 0, 18
                                if accTokenPerShare > !(0 / totalStaked):
                                    revert with 0, 17
                                accTokenPerShare += 0 / totalStaked
                            else:
                                if bonusEndBlock < lastRewardBlock:
                                    revert with 0, 17
                                if bonusEndBlock - lastRewardBlock and rewardPerBlock > -1 / bonusEndBlock - lastRewardBlock:
                                    revert with 0, 17
                                if (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock) and PRECISION_FACTOR > -1 / (bonusEndBlock * rewardPerBlock) - (lastRewardBlock * rewardPerBlock):
                                    revert with 0, 17
                                if not totalStaked:
                                    revert with 0, 18
                                if accTokenPerShare > !((bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked):
                                    revert with 0, 17
                                accTokenPerShare += (bonusEndBlock * rewardPerBlock * PRECISION_FACTOR) - (lastRewardBlock * rewardPerBlock * PRECISION_FACTOR) / totalStaked
                    lastRewardBlock = block.number
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalStaked:
                revert with 0, 17
            if ext_call.return_data[0] - totalStaked and sub_92b46e5b > -1 / ext_call.return_data[0] - totalStaked:
                revert with 0, 17
            if not sub_88bbb0c1:
                revert with 0, 18
            if (ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1 < stor32:
                revert with 0, 17
            if ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
                if not dividendTokenAddress:
                    call address(walletAAddress) with:
                       value ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(4 * ceil32(return_data.size)) + 132] = address(walletAAddress)
                    mem[(4 * ceil32(return_data.size)) + 164] = ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor18)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(dividendTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call dividendTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                            if not mem[(4 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor31 < ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) - stor32:
                    revert with 0, 17
                stor31 = stor31 - ((ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1) + stor32
    if ext_call.return_data[0] - totalStaked and sub_92b46e5b > -1 / ext_call.return_data[0] - totalStaked:
        revert with 0, 17
    if not sub_88bbb0c1:
        revert with 0, 18
    stor32 = (ext_call.return_data[0] * sub_92b46e5b) - (totalStaked * sub_92b46e5b) / sub_88bbb0c1
}



}
