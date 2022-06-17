contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'NanoOcto', 0

const sub_2ba4b81c(?) = 2

const decimals = 18

const _totalSupply = 1000000000 * 10^18

const symbol = '', 0

const MaxTax = 30


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor3;
array of struct stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
uint256 _circulatingSupply;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint8 stor9; offset 24
uint8 stor9; offset 32
uint8 stor9; offset 40
uint8 stor9; offset 48
uint8 stor9; offset 56
uint8 stor9; offset 64
uint8 stor9; offset 72
uint8 stor9; offset 80
uint256 sub_4a4a9a68;
uint256 sellLimit;
address marketingWalletAddress;
address stor13;
address burnAddress;
uint256 tokensBurnt;
uint8 stor16;
uint8 stor16; offset 8
uint256 sub_a57c66cc;
uint256 sub_2316b7e0;
address sub_ba384879Address;
address sub_21e622aaAddress;
address stor21;
address stor22;
address sub_eda0228fAddress;
uint256 stor24;
uint8 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 totalRewards;
uint256 totalPayouts;
uint256 sub_ff4f661e;
uint256 sub_d8f946bf;
uint256 sub_3b456f2f;
uint16 sub_22d57ea3;
mapping of uint256 stor35;
mapping of uint256 stor36;
mapping of uint256 stor37;
mapping of uint256 stor38;
uint256 totalLPBNB;
uint8 stor40;
uint128 stor40; offset 168
address stor40; offset 8

function totalRewards() {
    return totalRewards
}

function totalSupply() {
    return _circulatingSupply
}

function sub_21e622aa(?) {
    return sub_21e622aaAddress
}

function sub_22d57ea3(?) {
    return sub_22d57ea3
}

function sub_2316b7e0(?) {
    return sub_2316b7e0
}

function MarketingWallet() {
    return marketingWalletAddress
}

function sub_3b456f2f(?) {
    return sub_3b456f2f
}

function totalPayouts() {
    return totalPayouts
}

function sub_4a4a9a68(?) {
    return sub_4a4a9a68
}

function sellLimit() {
    return sellLimit
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isExcludedFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function getOwner() {
    return owner
}

function totalLPBNB() {
    return totalLPBNB
}

function owner() {
    return owner
}

function _circulatingSupply() {
    return _circulatingSupply
}

function sub_a57c66cc(?) {
    return sub_a57c66cc
}

function sub_ba384879(?) {
    return sub_ba384879Address
}

function blacklistEnabled() {
    return bool(uint8(stor16.field_0))
}

function tokensBurnt() {
    return tokensBurnt
}

function BurnAddress() {
    return burnAddress
}

function sub_d8f946bf(?) {
    return sub_d8f946bf
}

function liquidityAdded() {
    return bool(uint8(stor16.field_8))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sub_eda0228f(?) {
    return sub_eda0228fAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_ff4f661e(?) {
    return sub_ff4f661e
}

function getLimits() {
    return sub_4a4a9a68 / 10, sellLimit / 10
}

function getTotalShares() {
    if stor26 < 1000000000 * 10^18:
        revert with 0, 17
    return (stor26 - 1000000000 * 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLiquidityUnlockInSeconds() {
    if block.timestamp >= stor24:
        return 0
    if stor24 < block.timestamp:
        revert with 0, 17
    return (stor24 - block.timestamp)
}

function ManualBNBSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    Mask(88, 0, stor40.field_168) = Mask(88, 0, arg1)
}

function getTaxes() {
    return uint8(stor9.field_0), 
           uint8(stor9.field_0),
           uint8(stor9.field_0),
           uint8(stor9.field_0),
           uint8(stor9.field_24),
           uint8(stor9.field_0),
           uint8(stor9.field_0),
           uint8(stor9.field_0),
           uint8(stor9.field_64)
}

function ChangeMiscReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    sub_21e622aaAddress = arg1
    emit OnChangeMiscReward(arg1);
}

function LockLiquidityTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor24
    stor24 = arg1 + block.timestamp
    emit ExtendLiquidityLock(arg1);
}

function sub_2aea52ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    uint8(stor16.field_0) = uint8(bool(arg1))
    emit 0x822b6eca: bool(arg1)
}

function RecoverBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor24:
        revert with 0, 'Not yet unlocked'
    stor24 = block.timestamp
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function WithdrawAllDev() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    sub_d8f946bf = 0
    call stor13 with:
       value sub_d8f946bf wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function WithdrawAllMarketing() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    sub_ff4f661e = 0
    call marketingWalletAddress with:
       value sub_ff4f661e wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
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

function ExcludeAccountFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    emit AccountExcluded(arg1);
}

function WithdrawDev(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    require arg1 <= sub_d8f946bf
    if sub_d8f946bf < arg1:
        revert with 0, 17
    sub_d8f946bf -= arg1
    call stor13 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function WithdrawMarketing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    require arg1 <= sub_ff4f661e
    if sub_ff4f661e < arg1:
        revert with 0, 17
    sub_ff4f661e -= arg1
    call marketingWalletAddress with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function UpdateAutoLPThreshold(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold needs to be more than 0'
    if arg1 > 50:
        revert with 0, 'Threshold needs to be below 50'
    sub_22d57ea3 = arg1
    emit onUpdateLPThreshold(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function setPresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
}

function UpdateRewardSplit(uint8 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MainSplit+MiscSplit needs to equal 100%'
    uint8(stor9.field_72) = arg1
    uint8(stor9.field_80) = arg2
    emit OnUpdateRewardSplit(arg1 << 248, arg2);
}

function UpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 < 20000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newMaxWallet needs to be at least target'
    if arg2 < 20000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newSellLimit needs to be at least target'
    sub_4a4a9a68 = arg1
    sellLimit = arg2
    emit OnUpdateLimits(arg1, arg2);
}

function ChangeMainReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    staticcall stor22.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 == ext_call.return_data[12 len 20]:
        revert with 0, 'newReward cannot be BNB'
    sub_ba384879Address = arg1
    emit OnChangeMainReward(arg1);
}

function ReleaseLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor24:
        revert with 0, 'Not yet unlocked'
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getMiscBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7[address(arg1)]:
        return stor38[address(arg1)]
    if stor28 and balanceOf[address(arg1)] > -1 / stor28:
        revert with 0, 17
    if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
        if 0 > !stor38[address(arg1)]:
            revert with 0, 17
        return stor38[address(arg1)]
    if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64 > !stor38[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64) + stor38[address(arg1)])
}

function getMainBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7[address(arg1)]:
        return stor36[address(arg1)]
    if stor27 and balanceOf[address(arg1)] > -1 / stor27:
        revert with 0, 17
    if stor27 * balanceOf[address(arg1)] < stor35[address(arg1)]:
        if 0 > !stor36[address(arg1)]:
            revert with 0, 17
        return stor36[address(arg1)]
    if stor27 * balanceOf[address(arg1)] < stor35[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64 > !stor36[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64) + stor36[address(arg1)])
}

function sub_d1373e04(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function IncludeAccountToFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[address(arg1)] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    emit AccountIncluded(arg1);
}

function SetDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[stor13]:
        if stor5[stor13] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[stor13] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[stor13]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[stor13]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[stor13] = 0
    stor13 = arg1
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    emit UpdateDevWallet(arg1);
}

function SetMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[stor12]:
        if stor5[stor12] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[stor12] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[stor12]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[stor12]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[stor12] = 0
    marketingWalletAddress = arg1
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    emit UpdateMarketingWallet(arg1);
}

function IncludeMeToStaking() {
    require stor7[address(msg.sender)]
    if stor26 > !balanceOf[msg.sender]:
        revert with 0, 17
    stor26 += balanceOf[msg.sender]
    if stor7[address(msg.sender)]:
        if stor7[address(msg.sender)] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor7[address(msg.sender)] - 1 >= stor6.length:
            revert with 0, 50
        stor6[stor7[address(msg.sender)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(msg.sender)]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(msg.sender)] = 0
    if balanceOf[msg.sender] and stor27 > -1 / balanceOf[msg.sender]:
        revert with 0, 17
    stor35[msg.sender] = balanceOf[msg.sender] * stor27
    if balanceOf[msg.sender] and stor28 > -1 / balanceOf[msg.sender]:
        revert with 0, 17
    stor37[msg.sender] = balanceOf[msg.sender] * stor28
}

function RemoveLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor24:
        revert with 0, 'Not yet unlocked'
    stor24 = block.timestamp
    staticcall stor21.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor21.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor22, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor22.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function IncludeToStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    require stor7[address(arg1)]
    if stor26 > !balanceOf[address(arg1)]:
        revert with 0, 17
    stor26 += balanceOf[address(arg1)]
    if stor7[address(arg1)]:
        if stor7[address(arg1)] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor7[address(arg1)] - 1 >= stor6.length:
            revert with 0, 50
        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(arg1)] = 0
    if balanceOf[address(arg1)] and stor27 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    stor35[address(arg1)] = balanceOf[address(arg1)] * stor27
    if balanceOf[address(arg1)] and stor28 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    stor37[address(arg1)] = balanceOf[address(arg1)] * stor28
    emit OnIncludeToStaking(arg1);
}

function TriggerBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 > sub_3b456f2f:
        revert with 0, 'Amount exceeds BuyBackBalance!'
    if sub_3b456f2f < arg1:
        revert with 0, 17
    sub_3b456f2f -= arg1
    staticcall stor22.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor22)
    call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, burnAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 17
    if _circulatingSupply < 0:
        revert with 0, 17
    if tokensBurnt > !0:
        revert with 0, 17
    emit Buyback(arg1, 0);
}

function UpdateTaxes(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6, uint8 arg7, uint8 arg8, uint8 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg5 > -arg6 + 255:
        revert with 0, 17
    if uint8(arg6 + arg5) > -arg4 + 255:
        revert with 0, 17
    if uint8(arg4 + uint8(arg6 + arg5)) > -arg1 + 255:
        revert with 0, 17
    if uint8(arg1 + uint8(arg4 + uint8(arg6 + arg5))) > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + uint8(arg1 + uint8(arg4 + uint8(arg6 + arg5)))) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + uint8(arg1 + uint8(arg4 + uint8(arg6 + arg5))))) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'marketing+liq+staking needs to equal 100%'
    if arg7 > 30:
        revert with 0, 'taxes higher than max tax'
    if arg8 > 30:
        revert with 0, 'taxes higher than max tax'
    if arg9 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferTax higher than max transferTax'
    uint8(stor9.field_8) = arg1
    uint8(stor9.field_40) = arg2
    uint8(stor9.field_0) = arg3
    uint8(stor9.field_16) = arg4
    uint8(stor9.field_24) = arg5
    uint8(stor9.field_32) = arg6
    uint8(stor9.field_48) = arg7
    uint8(stor9.field_56) = arg8
    uint8(stor9.field_64) = arg9
    emit OnUpdateTaxes(arg1 << 248, arg2 << 248, arg3 << 248, arg4 << 248, arg5, arg6 << 248, arg7 << 248, arg8 << 248, arg9);
}

function ExcludeFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    require not stor7[address(arg1)]
    if stor26 < balanceOf[address(arg1)]:
        revert with 0, 17
    stor26 -= balanceOf[address(arg1)]
    if stor27 and balanceOf[address(arg1)] > -1 / stor27:
        revert with 0, 17
    if stor27 * balanceOf[address(arg1)] < stor35[address(arg1)]:
        if stor28 and balanceOf[address(arg1)] > -1 / stor28:
            revert with 0, 17
        if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
            if balanceOf[address(arg1)] and stor27 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor35[address(arg1)] = balanceOf[address(arg1)] * stor27
            if balanceOf[address(arg1)] and stor28 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor37[address(arg1)] = balanceOf[address(arg1)] * stor28
            if stor36[address(arg1)] > -1:
                revert with 0, 17
            if stor38[address(arg1)] > -1:
                revert with 0, 17
        else:
            if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] and stor27 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor35[address(arg1)] = balanceOf[address(arg1)] * stor27
            if balanceOf[address(arg1)] and stor28 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor37[address(arg1)] = balanceOf[address(arg1)] * stor28
            if stor36[address(arg1)] > -1:
                revert with 0, 17
            if stor38[address(arg1)] > !(Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64):
                revert with 0, 17
            stor38[address(arg1)] += Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64
    else:
        if stor27 * balanceOf[address(arg1)] < stor35[address(arg1)]:
            revert with 0, 17
        if stor28 and balanceOf[address(arg1)] > -1 / stor28:
            revert with 0, 17
        if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
            if balanceOf[address(arg1)] and stor27 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor35[address(arg1)] = balanceOf[address(arg1)] * stor27
            if balanceOf[address(arg1)] and stor28 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor37[address(arg1)] = balanceOf[address(arg1)] * stor28
            if stor36[address(arg1)] > !(Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64):
                revert with 0, 17
            stor36[address(arg1)] += Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64
            if stor38[address(arg1)] > -1:
                revert with 0, 17
        else:
            if stor28 * balanceOf[address(arg1)] < stor37[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] and stor27 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor35[address(arg1)] = balanceOf[address(arg1)] * stor27
            if balanceOf[address(arg1)] and stor28 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor37[address(arg1)] = balanceOf[address(arg1)] * stor28
            if stor36[address(arg1)] > !(Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64):
                revert with 0, 17
            stor36[address(arg1)] += Mask(192, 64, (stor27 * balanceOf[address(arg1)]) - stor35[address(arg1)]) >> 64
            if stor38[address(arg1)] > !(Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64):
                revert with 0, 17
            stor38[address(arg1)] += Mask(192, 64, (stor28 * balanceOf[address(arg1)]) - stor37[address(arg1)]) >> 64
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
    emit OnExcludeFromStaking(arg1);
}

function BurnTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if balanceOf[msg.sender] < 10^18 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Burn amount exceed user's balance'
    if balanceOf[address(msg.sender)] < 10^18 * arg1:
        revert with 0, 17
    if stor7[address(msg.sender)]:
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    else:
        if stor26 < 10^18 * arg1:
            revert with 0, 17
        stor26 += -1 * 10^18 * arg1
        if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
            revert with 0, 17
        if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor27 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor27) - (10^18 * arg1 * stor27)
                if stor36[address(msg.sender)] > -1:
                    revert with 0, 17
                if stor28 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor28) - (10^18 * arg1 * stor28)
                if stor38[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor27 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor27) - (10^18 * arg1 * stor27)
                if stor36[address(msg.sender)] > -1:
                    revert with 0, 17
                if stor28 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor28) - (10^18 * arg1 * stor28)
                if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor38[address(msg.sender)] += Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
        else:
            if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
                revert with 0, 17
            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor27 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor27) - (10^18 * arg1 * stor27)
                if stor36[address(msg.sender)] > !(Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor36[address(msg.sender)] += Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64
                if stor28 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor28) - (10^18 * arg1 * stor28)
                if stor38[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor27 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor27) - (10^18 * arg1 * stor27)
                if stor36[address(msg.sender)] > !(Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor36[address(msg.sender)] += Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64
                if stor28 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor28) - (10^18 * arg1 * stor28)
                if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor38[address(msg.sender)] += Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
    if balanceOf[stor14] > !(10^18 * arg1):
        revert with 0, 17
    if not stor7[stor14]:
        if stor26 > !(10^18 * arg1):
            revert with 0, 17
        stor26 += 10^18 * arg1
        if stor27 and balanceOf[stor14] > -1 / stor27:
            revert with 0, 17
        if stor27 * balanceOf[stor14] < stor35[stor14]:
            if stor28 and balanceOf[stor14] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[stor14] < stor37[stor14]:
                balanceOf[stor14] += 10^18 * arg1
                if stor27 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[stor14] = (balanceOf[stor14] * stor27) + (10^18 * arg1 * stor27)
                if stor36[stor14] > -1:
                    revert with 0, 17
                if stor28 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[stor14] = (balanceOf[stor14] * stor28) + (10^18 * arg1 * stor28)
                if stor38[stor14] > -1:
                    revert with 0, 17
            else:
                if stor28 * balanceOf[stor14] < stor37[stor14]:
                    revert with 0, 17
                balanceOf[stor14] += 10^18 * arg1
                if stor27 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[stor14] = (balanceOf[stor14] * stor27) + (10^18 * arg1 * stor27)
                if stor36[stor14] > -1:
                    revert with 0, 17
                if stor28 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[stor14] = (balanceOf[stor14] * stor28) + (10^18 * arg1 * stor28)
                if stor38[stor14] > !(Mask(192, 64, (stor28 * balanceOf[stor14]) - stor37[stor14]) >> 64):
                    revert with 0, 17
                stor38[stor14] += Mask(192, 64, (stor28 * balanceOf[stor14]) - stor37[stor14]) >> 64
        else:
            if stor27 * balanceOf[stor14] < stor35[stor14]:
                revert with 0, 17
            if stor28 and balanceOf[stor14] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[stor14] < stor37[stor14]:
                balanceOf[stor14] += 10^18 * arg1
                if stor27 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[stor14] = (balanceOf[stor14] * stor27) + (10^18 * arg1 * stor27)
                if stor36[stor14] > !(Mask(192, 64, (stor27 * balanceOf[stor14]) - stor35[stor14]) >> 64):
                    revert with 0, 17
                stor36[stor14] += Mask(192, 64, (stor27 * balanceOf[stor14]) - stor35[stor14]) >> 64
                if stor28 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[stor14] = (balanceOf[stor14] * stor28) + (10^18 * arg1 * stor28)
                if stor38[stor14] > -1:
                    revert with 0, 17
            else:
                if stor28 * balanceOf[stor14] < stor37[stor14]:
                    revert with 0, 17
                balanceOf[stor14] += 10^18 * arg1
                if stor27 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor27:
                    revert with 0, 17
                stor35[stor14] = (balanceOf[stor14] * stor27) + (10^18 * arg1 * stor27)
                if stor36[stor14] > !(Mask(192, 64, (stor27 * balanceOf[stor14]) - stor35[stor14]) >> 64):
                    revert with 0, 17
                stor36[stor14] += Mask(192, 64, (stor27 * balanceOf[stor14]) - stor35[stor14]) >> 64
                if stor28 and balanceOf[stor14] + (10^18 * arg1) > -1 / stor28:
                    revert with 0, 17
                stor37[stor14] = (balanceOf[stor14] * stor28) + (10^18 * arg1 * stor28)
                if stor38[stor14] > !(Mask(192, 64, (stor28 * balanceOf[stor14]) - stor37[stor14]) >> 64):
                    revert with 0, 17
                stor38[stor14] += Mask(192, 64, (stor28 * balanceOf[stor14]) - stor37[stor14]) >> 64
    balanceOf[stor14] += 10^18 * arg1
    if _circulatingSupply < 10^18 * arg1:
        revert with 0, 17
    _circulatingSupply += -1 * 10^18 * arg1
    if tokensBurnt > !(10^18 * arg1):
        revert with 0, 17
    tokensBurnt += 10^18 * arg1
    emit Transfer((10^18 * arg1), msg.sender, burnAddress);
    emit onBurnTokens((10^18 * arg1));
}

function ClaimMainReward() {
    require not stor25
    stor25 = 1
    if stor7[address(msg.sender)]:
        if sub_ba384879Address != sub_ba384879Address:
            stor38[address(msg.sender)] = 0
            if stor38[address(msg.sender)]:
                if totalPayouts > !stor38[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor38[address(msg.sender)]
                if stor38[address(msg.sender)] > -1:
                    revert with 0, 17
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = sub_ba384879Address
                mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = 0
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor38[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawToken(stor38[address(msg.sender)], sub_ba384879Address, msg.sender);
        else:
            stor36[address(msg.sender)] = 0
            if stor36[address(msg.sender)]:
                if totalPayouts > !stor36[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor36[address(msg.sender)]
                if stor36[address(msg.sender)] > -1:
                    revert with 0, 17
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = sub_ba384879Address
                mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = 0
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor36[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawToken(stor36[address(msg.sender)], sub_ba384879Address, msg.sender);
    else:
        if sub_ba384879Address != sub_ba384879Address:
            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                if stor38[address(msg.sender)] > -1:
                    revert with 0, 17
                stor38[address(msg.sender)] = 0
                if stor38[address(msg.sender)]:
                    if totalPayouts > !stor38[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor38[address(msg.sender)]
                    if stor38[address(msg.sender)] > -1:
                        revert with 0, 17
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[128] = ext_call.return_data[12 len 20]
                    mem[160] = sub_ba384879Address
                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 0
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor22)
                    call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor38[address(msg.sender)] wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor38[address(msg.sender)], sub_ba384879Address, msg.sender);
            else:
                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                    revert with 0, 17
                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                    revert with 0, 17
                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor38[address(msg.sender)] = 0
                if stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                    if totalPayouts > !(stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64)):
                        revert with 0, 17
                    totalPayouts = totalPayouts + stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64)
                    if stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) > -1:
                        revert with 0, 17
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[128] = ext_call.return_data[12 len 20]
                    mem[160] = sub_ba384879Address
                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 0
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor22)
                    call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64), sub_ba384879Address, msg.sender);
        else:
            if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                revert with 0, 17
            if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
                if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = stor27 * balanceOf[address(msg.sender)]
                if stor36[address(msg.sender)] > -1:
                    revert with 0, 17
                stor36[address(msg.sender)] = 0
                if stor36[address(msg.sender)]:
                    if totalPayouts > !stor36[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor36[address(msg.sender)]
                    if stor36[address(msg.sender)] > -1:
                        revert with 0, 17
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[128] = ext_call.return_data[12 len 20]
                    mem[160] = sub_ba384879Address
                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 0
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor22)
                    call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor36[address(msg.sender)] wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor36[address(msg.sender)], sub_ba384879Address, msg.sender);
            else:
                if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
                    revert with 0, 17
                if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                    revert with 0, 17
                stor35[address(msg.sender)] = stor27 * balanceOf[address(msg.sender)]
                if stor36[address(msg.sender)] > !(Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor36[address(msg.sender)] = 0
                if stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                    if totalPayouts > !(stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64)):
                        revert with 0, 17
                    totalPayouts = totalPayouts + stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64)
                    if stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64) > -1:
                        revert with 0, 17
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[128] = ext_call.return_data[12 len 20]
                    mem[160] = sub_ba384879Address
                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 0
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor22)
                    call stor22.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64) wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64), sub_ba384879Address, msg.sender);
    stor25 = 0
}

function ClaimMiscReward() {
    staticcall stor22.WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == sub_21e622aaAddress:
        if stor7[address(msg.sender)]:
            require not stor25
            if not stor38[address(msg.sender)]:
                revert with 0, '=0'
            stor25 = 1
            if address(stor40.field_8) != msg.sender:
                if stor38[address(msg.sender)]:
                    if stor7[address(msg.sender)]:
                        if stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                            revert with 0, 'exceeds divident'
                    else:
                        if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                            revert with 0, 17
                        if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                            if 0 > !stor38[address(msg.sender)]:
                                revert with 0, 17
                            if stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                                revert with 0, 'exceeds divident'
                        else:
                            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                revert with 0, 17
                            if Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64 > !stor38[address(msg.sender)]:
                                revert with 0, 17
                            if stor38[address(msg.sender)] > (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]:
                                revert with 0, 'exceeds divident'
                    if not stor7[address(msg.sender)]:
                        if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                            revert with 0, 17
                        if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                            if stor38[address(msg.sender)] > -1:
                                revert with 0, 17
                        else:
                            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                revert with 0, 17
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                            if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                                revert with 0, 17
                            stor38[address(msg.sender)] += Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
                    if stor38[address(msg.sender)] < stor38[address(msg.sender)]:
                        revert with 0, 17
                    stor38[address(msg.sender)] = 0
                if totalPayouts > !stor38[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor38[address(msg.sender)]
            call msg.sender with:
               value stor38[address(msg.sender)] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'withdraw failed'
            stor25 = 0
            emit OnClaimBNB(msg.sender, msg.sender, stor38[address(msg.sender)]);
        else:
            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                revert with 0, 17
            if stor28 * balanceOf[address(msg.sender)] >= stor37[address(msg.sender)]:
                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                    revert with 0, 17
                if Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64 > !stor38[address(msg.sender)]:
                    revert with 0, 17
                require not stor25
                if not (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]:
                    revert with 0, '=0'
                stor25 = 1
                if address(stor40.field_8) != msg.sender:
                    if (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]:
                        if stor7[address(msg.sender)]:
                            if (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                                revert with 0, 'exceeds divident'
                        else:
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            if stor28 * balanceOf[address(msg.sender)] >= stor37[address(msg.sender)]:
                                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                    revert with 0, 17
                                if Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64 > !stor38[address(msg.sender)]:
                                    revert with 0, 17
                            else:
                                if 0 > !stor38[address(msg.sender)]:
                                    revert with 0, 17
                                if (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                                    revert with 0, 'exceeds divident'
                        if not stor7[address(msg.sender)]:
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                    revert with 0, 17
                                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                                if stor38[address(msg.sender)] > -1:
                                    revert with 0, 17
                            else:
                                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                    revert with 0, 17
                                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                    revert with 0, 17
                                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                                if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                                    revert with 0, 17
                                stor38[address(msg.sender)] += Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
                        if stor38[address(msg.sender)] < (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]:
                            revert with 0, 17
                        stor38[address(msg.sender)] = -Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
                    if totalPayouts > !((Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]):
                        revert with 0, 17
                    totalPayouts = totalPayouts + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]
                call msg.sender with:
                   value (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'withdraw failed'
                stor25 = 0
                emit OnClaimBNB(msg.sender, msg.sender, (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]);
            else:
                if 0 > !stor38[address(msg.sender)]:
                    revert with 0, 17
                require not stor25
                if not stor38[address(msg.sender)]:
                    revert with 0, '=0'
                stor25 = 1
                if address(stor40.field_8) != msg.sender:
                    if stor38[address(msg.sender)]:
                        if stor7[address(msg.sender)]:
                            if stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                                revert with 0, 'exceeds divident'
                        else:
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                if 0 > !stor38[address(msg.sender)]:
                                    revert with 0, 17
                                if stor38[address(msg.sender)] > stor38[address(msg.sender)]:
                                    revert with 0, 'exceeds divident'
                            else:
                                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                    revert with 0, 17
                                if Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64 > !stor38[address(msg.sender)]:
                                    revert with 0, 17
                                if stor38[address(msg.sender)] > (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) + stor38[address(msg.sender)]:
                                    revert with 0, 'exceeds divident'
                        if not stor7[address(msg.sender)]:
                            if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                revert with 0, 17
                            if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                    revert with 0, 17
                                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                                if stor38[address(msg.sender)] > -1:
                                    revert with 0, 17
                            else:
                                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                                    revert with 0, 17
                                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                                    revert with 0, 17
                                stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                                if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                                    revert with 0, 17
                                stor38[address(msg.sender)] += Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64
                        if stor38[address(msg.sender)] < stor38[address(msg.sender)]:
                            revert with 0, 17
                        stor38[address(msg.sender)] = 0
                    if totalPayouts > !stor38[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor38[address(msg.sender)]
                call msg.sender with:
                   value stor38[address(msg.sender)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'withdraw failed'
                stor25 = 0
                emit OnClaimBNB(msg.sender, msg.sender, stor38[address(msg.sender)]);
    else:
        require not stor25
        stor25 = 1
        if stor7[address(msg.sender)]:
            mem[0] = msg.sender
            if sub_ba384879Address != sub_21e622aaAddress:
                mem[32] = 38
                stor38[address(msg.sender)] = 0
                if stor38[address(msg.sender)]:
                    if totalPayouts > !stor38[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor38[address(msg.sender)]
                    if stor38[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 96] = 2
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                    require ext_code.size(stor22)
                    call stor22.mem[mem[64] len 4] with:
                       value stor38[address(msg.sender)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor38[address(msg.sender)], sub_21e622aaAddress, msg.sender);
            else:
                mem[32] = 36
                stor36[address(msg.sender)] = 0
                if stor36[address(msg.sender)]:
                    if totalPayouts > !stor36[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor36[address(msg.sender)]
                    if stor36[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 96] = 2
                    staticcall stor22.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = 0
                    mem[(2 * ceil32(return_data.size)) + 228] = 128
                    mem[(2 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + 356
                    while idx < mem[ceil32(return_data.size) + 96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                    require ext_code.size(stor22)
                    call stor22.mem[mem[64] len 4] with:
                       value stor36[address(msg.sender)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor36[address(msg.sender)], sub_21e622aaAddress, msg.sender);
        else:
            if sub_ba384879Address != sub_21e622aaAddress:
                if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                    revert with 0, 17
                if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                    if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                        revert with 0, 17
                    stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                    if stor38[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 38
                    stor38[address(msg.sender)] = 0
                    if stor38[address(msg.sender)]:
                        if totalPayouts > !stor38[address(msg.sender)]:
                            revert with 0, 17
                        totalPayouts += stor38[address(msg.sender)]
                        if stor38[address(msg.sender)] > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        staticcall stor22.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(stor22)
                        call stor22.mem[mem[64] len 4] with:
                           value stor38[address(msg.sender)] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor38[address(msg.sender)], sub_21e622aaAddress, msg.sender);
                else:
                    if stor28 * balanceOf[address(msg.sender)] < stor37[address(msg.sender)]:
                        revert with 0, 17
                    if stor28 and balanceOf[address(msg.sender)] > -1 / stor28:
                        revert with 0, 17
                    stor37[address(msg.sender)] = stor28 * balanceOf[address(msg.sender)]
                    if stor38[address(msg.sender)] > !(Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 38
                    stor38[address(msg.sender)] = 0
                    if stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64):
                        if totalPayouts > !(stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64)):
                            revert with 0, 17
                        totalPayouts = totalPayouts + stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64)
                        if stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        staticcall stor22.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(stor22)
                        call stor22.mem[mem[64] len 4] with:
                           value stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor38[address(msg.sender)] + (Mask(192, 64, (stor28 * balanceOf[address(msg.sender)]) - stor37[address(msg.sender)]) >> 64), sub_21e622aaAddress, msg.sender);
            else:
                if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                    revert with 0, 17
                if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
                    if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                        revert with 0, 17
                    stor35[address(msg.sender)] = stor27 * balanceOf[address(msg.sender)]
                    if stor36[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 36
                    stor36[address(msg.sender)] = 0
                    if stor36[address(msg.sender)]:
                        if totalPayouts > !stor36[address(msg.sender)]:
                            revert with 0, 17
                        totalPayouts += stor36[address(msg.sender)]
                        if stor36[address(msg.sender)] > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        staticcall stor22.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(stor22)
                        call stor22.mem[mem[64] len 4] with:
                           value stor36[address(msg.sender)] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor36[address(msg.sender)], sub_21e622aaAddress, msg.sender);
                else:
                    if stor27 * balanceOf[address(msg.sender)] < stor35[address(msg.sender)]:
                        revert with 0, 17
                    if stor27 and balanceOf[address(msg.sender)] > -1 / stor27:
                        revert with 0, 17
                    stor35[address(msg.sender)] = stor27 * balanceOf[address(msg.sender)]
                    if stor36[address(msg.sender)] > !(Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 36
                    stor36[address(msg.sender)] = 0
                    if stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64):
                        if totalPayouts > !(stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64)):
                            revert with 0, 17
                        totalPayouts = totalPayouts + stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64)
                        if stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64) > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        staticcall stor22.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = sub_21e622aaAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = 0
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 356
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 260] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
                        require ext_code.size(stor22)
                        call stor22.mem[mem[64] len 4] with:
                           value stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor36[address(msg.sender)] + (Mask(192, 64, (stor27 * balanceOf[address(msg.sender)]) - stor35[address(msg.sender)]) >> 64), sub_21e622aaAddress, msg.sender);
        stor25 = 0
}

function CreateLPandBNB(uint16 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Caller not authorized'
    uint8(stor40.field_0) = 1
    require arg1 <= 500
    if uint8(stor9.field_24) > -uint8(stor9.field_32) + 255:
        revert with 0, 17
    if uint8(uint8(stor9.field_32) + uint8(stor9.field_24)) > -uint8(stor9.field_16) + 255:
        revert with 0, 17
    if uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))) > -uint8(stor9.field_0) + 255:
        revert with 0, 17
    if uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))) > -uint8(stor9.field_40) + 255:
        revert with 0, 17
    if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
        uint8(stor40.field_0) = 0
    if balanceOf[stor21] and arg1 > -1 / balanceOf[stor21]:
        revert with 0, 17
    if balanceOf[stor21] * arg1 / 1000 <= sellLimit:
        if balanceOf[this.address] >= balanceOf[stor21] * arg1 / 1000:
            if balanceOf[stor21] * arg1 / 1000 and uint8(stor9.field_24) > -1 / balanceOf[stor21] * arg1 / 1000:
                revert with 0, 17
            if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                revert with 0, 18
            if balanceOf[stor21] * arg1 / 1000 < balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                revert with 0, 17
            if balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                revert with 0, 17
            if (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !((balanceOf[stor21] * arg1 / 1000) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor22:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor22].field_0 = -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
            emit Approval((-(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)), this.address, stor22);
            mem[128] = this.address
            staticcall stor22.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor22)
            call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                revert with 0, 17
            if not -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000):
                revert with 0, 18
            if totalLPBNB > !(0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)):
                revert with 0, 17
            totalLPBNB += 0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor22:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor22].field_0 = balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
            allowance[address(this.address)][stor22].field_255 = 0
            emit Approval((balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
            call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000) wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
        else:
            if not arg2:
                uint8(stor40.field_0) = 0
            if balanceOf[this.address] and uint8(stor9.field_24) > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                revert with 0, 18
            if balanceOf[this.address] < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                revert with 0, 17
            if balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                revert with 0, 17
            if (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor22:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor22].field_0 = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
            emit Approval((-(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]), this.address, stor22);
            mem[128] = this.address
            staticcall stor22.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor22)
            call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                revert with 0, 17
            if not -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]:
                revert with 0, 18
            if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]):
                revert with 0, 17
            totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor22:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor22].field_0 = balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
            allowance[address(this.address)][stor22].field_255 = 0
            emit Approval((balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
            call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address] wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
    else:
        if arg2:
            if balanceOf[this.address] >= balanceOf[stor21] * arg1 / 1000:
                if balanceOf[stor21] * arg1 / 1000 and uint8(stor9.field_24) > -1 / balanceOf[stor21] * arg1 / 1000:
                    revert with 0, 17
                if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 18
                if balanceOf[stor21] * arg1 / 1000 < balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 17
                if balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                    revert with 0, 17
                if (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !((balanceOf[stor21] * arg1 / 1000) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
                emit Approval((-(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)), this.address, stor22);
                mem[128] = this.address
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                    revert with 0, 17
                if not -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000):
                    revert with 0, 18
                if totalLPBNB > !(0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)):
                    revert with 0, 17
                totalLPBNB += 0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000)
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
                allowance[address(this.address)][stor22].field_255 = 0
                emit Approval((balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
                call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + (balanceOf[stor21] * arg1 / 1000) wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, balanceOf[stor21] * arg1 / 1000 * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
            else:
                if not arg2:
                    uint8(stor40.field_0) = 0
                if balanceOf[this.address] and uint8(stor9.field_24) > -1 / balanceOf[this.address]:
                    revert with 0, 17
                if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 18
                if balanceOf[this.address] < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 17
                if balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                    revert with 0, 17
                if (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                emit Approval((-(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]), this.address, stor22);
                mem[128] = this.address
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                    revert with 0, 17
                if not -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]:
                    revert with 0, 18
                if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]):
                    revert with 0, 17
                totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
                allowance[address(this.address)][stor22].field_255 = 0
                emit Approval((balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
                call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address] wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
        else:
            if balanceOf[this.address] >= sellLimit:
                if sellLimit and uint8(stor9.field_24) > -1 / sellLimit:
                    revert with 0, 17
                if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 18
                if sellLimit < sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 17
                if sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                    revert with 0, 17
                if (sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !(sellLimit - (sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit
                emit Approval((-(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit), this.address, stor22);
                mem[128] = this.address
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                    revert with 0, 17
                if not -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit:
                    revert with 0, 18
                if totalLPBNB > !(0 / -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit):
                    revert with 0, 17
                totalLPBNB += 0 / -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
                allowance[address(this.address)][stor22].field_255 = 0
                emit Approval((sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
                call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + sellLimit wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, sellLimit * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
            else:
                if not arg2:
                    uint8(stor40.field_0) = 0
                if balanceOf[this.address] and uint8(stor9.field_24) > -1 / balanceOf[this.address]:
                    revert with 0, 17
                if not uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 18
                if balanceOf[this.address] < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))):
                    revert with 0, 17
                if balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) < balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2:
                    revert with 0, 17
                if (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                emit Approval((-(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]), this.address, stor22);
                mem[128] = this.address
                staticcall stor22.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor22)
                call stor22.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))) - (balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) > 0:
                    revert with 0, 17
                if not -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]:
                    revert with 0, 18
                if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]):
                    revert with 0, 17
                totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address]
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor22:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor22].field_0 = balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2
                allowance[address(this.address)][stor22].field_255 = 0
                emit Approval((balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2), this.address, stor22);
                call stor22.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24))))) / 2) + balanceOf[this.address] wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor9.field_24) / uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(uint8(stor9.field_16) + uint8(uint8(stor9.field_32) + uint8(stor9.field_24)))))), 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if uint8(stor9.field_16) > -uint8(stor9.field_0) + 255:
        revert with 0, 17
    if uint8(uint8(stor9.field_0) + uint8(stor9.field_16)) > -uint8(stor9.field_40) + 255:
        revert with 0, 17
    if uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))) > -uint8(stor9.field_32) + 255:
        revert with 0, 17
    if False and uint8(stor9.field_16) > 0:
        revert with 0, 17
    if not uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 18
    if False and uint8(stor9.field_0) > 0:
        revert with 0, 17
    if not uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 18
    if False and uint8(stor9.field_40) > 0:
        revert with 0, 17
    if not uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 18
    if False and uint8(stor9.field_32) > 0:
        revert with 0, 17
    if not uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 18
    if 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) and uint8(stor9.field_72) > -1 / 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 17
    if 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) and uint8(stor9.field_80) > -1 / 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        revert with 0, 17
    if sub_ff4f661e > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))):
        revert with 0, 17
    sub_ff4f661e += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))
    if sub_d8f946bf > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))):
        revert with 0, 17
    sub_d8f946bf += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))
    if sub_3b456f2f > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))):
        revert with 0, 17
    sub_3b456f2f += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))
    if 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))):
        if totalRewards > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))):
            revert with 0, 17
        totalRewards += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))
        if stor26 < 1000000000 * 10^18:
            revert with 0, 17
        if not stor26 - 1000000000 * 10^18:
            if sub_ff4f661e > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))):
                revert with 0, 17
            sub_ff4f661e += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16))))
        else:
            if 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_72) / 100 and 18446744073709551616 > -1 / 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_72) / 100:
                revert with 0, 17
            if not stor26 - 1000000000 * 10^18:
                revert with 0, 18
            if stor27 > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_72) / 100 << 64 / stor26 - 1000000000 * 10^18):
                revert with 0, 17
            stor27 += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_72) / 100 << 64 / stor26 - 1000000000 * 10^18
            if 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_80) / 100 and 18446744073709551616 > -1 / 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_80) / 100:
                revert with 0, 17
            if not stor26 - 1000000000 * 10^18:
                revert with 0, 18
            if stor28 > !(0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_80) / 100 << 64 / stor26 - 1000000000 * 10^18):
                revert with 0, 17
            stor28 += 0 / uint8(uint8(stor9.field_32) + uint8(uint8(stor9.field_40) + uint8(uint8(stor9.field_0) + uint8(stor9.field_16)))) * uint8(stor9.field_80) / 100 << 64 / stor26 - 1000000000 * 10^18
    require not stor25
    revert with 0, '=0'
}



}
