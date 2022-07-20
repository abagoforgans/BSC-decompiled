contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'McKabosu', 0

const decimals = 18

const _totalSupply = 1000000000 * 10^18

const symbol = ',McKabosu', 0

const MaxTax = 20


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor3;
mapping of uint256 stor4;
array of struct stor5;
mapping of uint256 stor6;
uint256 _circulatingSupply;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint8 stor8; offset 24
uint8 stor8; offset 32
uint8 stor8; offset 40
uint8 stor8; offset 48
uint8 stor8; offset 56
uint8 stor8; offset 64
uint8 stor8; offset 72
uint8 stor8; offset 80
uint256 sub_4a4a9a68;
uint256 sellLimit;
address marketingWalletAddress;
address stor12;
address burnAddress;
address sub_ba384879Address;
address sub_21e622aaAddress;
address stor16;
address stor17;
uint256 stor18;
uint8 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 totalRewards;
uint256 totalPayouts;
uint256 sub_ff4f661e;
uint256 sub_d8f946bf;
uint256 sub_3b456f2f;
uint16 sub_22d57ea3;
mapping of uint256 stor29;
mapping of uint256 stor30;
mapping of uint256 stor31;
mapping of uint256 stor32;
uint256 totalLPBNB;
uint8 stor34;
uint256 stor34; offset 8

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
    return bool(stor6[address(arg1)])
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

function sub_ba384879(?) {
    return sub_ba384879Address
}

function BurnAddress() {
    return burnAddress
}

function sub_d8f946bf(?) {
    return sub_d8f946bf
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ff4f661e(?) {
    return sub_ff4f661e
}

function getLimits() {
    return sub_4a4a9a68 / 10, sellLimit / 10
}

function getTotalShares() {
    if stor20 < 1000000000 * 10^18:
        revert with 0, 17
    return (stor20 - 1000000000 * 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLiquidityUnlockInSeconds() {
    if block.timestamp >= stor18:
        return 0
    if stor18 < block.timestamp:
        revert with 0, 17
    return (stor18 - block.timestamp)
}

function ManualBNBSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    Mask(248, 0, stor34.field_8) = Mask(248, 0, arg1)
}

function getTaxes() {
    return uint8(stor8.field_0), 
           uint8(stor8.field_0),
           uint8(stor8.field_0),
           uint8(stor8.field_0),
           uint8(stor8.field_24),
           uint8(stor8.field_0),
           uint8(stor8.field_0),
           uint8(stor8.field_0),
           uint8(stor8.field_64)
}

function ChangeMiscReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
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
    require arg1 + block.timestamp > stor18
    stor18 = arg1 + block.timestamp
    emit ExtendLiquidityLock(arg1);
}

function RecoverBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor18:
        revert with 0, 'Not yet unlocked'
    stor18 = block.timestamp
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function WithdrawAllDev() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    sub_d8f946bf = 0
    call stor12 with:
       value sub_d8f946bf wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function WithdrawAllMarketing() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
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
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    emit AccountExcluded(arg1);
}

function WithdrawDev(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    require arg1 <= sub_d8f946bf
    if sub_d8f946bf < arg1:
        revert with 0, 17
    sub_d8f946bf -= arg1
    call stor12 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function WithdrawMarketing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function UpdateAutoLPThreshold(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Threshold needs to be more than 0'
    if arg1 > 50:
        revert with 0, 'Threshold needs to be below 50'
    sub_22d57ea3 = arg1
    emit onUpdateLPThreshold(arg1);
}

function UpdateRewardSplit(uint8 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MainSplit+MiscSplit needs to equal 100%'
    uint8(stor8.field_72) = arg1
    uint8(stor8.field_80) = arg2
    emit OnUpdateRewardSplit(arg1 << 248, arg2);
}

function UpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
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
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    require ext_code.size(stor17)
    staticcall stor17.WETH() with:
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

function getMiscBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor32[address(arg1)]
    if stor22 and balanceOf[address(arg1)] > -1 / stor22:
        revert with 0, 17
    if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
        if 0 > !stor32[address(arg1)]:
            revert with 0, 17
        return stor32[address(arg1)]
    if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64 > !stor32[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64) + stor32[address(arg1)])
}

function getMainBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor30[address(arg1)]
    if stor21 and balanceOf[address(arg1)] > -1 / stor21:
        revert with 0, 17
    if stor21 * balanceOf[address(arg1)] < stor29[address(arg1)]:
        if 0 > !stor30[address(arg1)]:
            revert with 0, 17
        return stor30[address(arg1)]
    if stor21 * balanceOf[address(arg1)] < stor29[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64 > !stor30[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64) + stor30[address(arg1)])
}

function ReleaseLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor18:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function IncludeAccountToFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    if stor4[address(arg1)]:
        if stor4[address(arg1)] < 1:
            revert with 0, 17
        if stor3.length < 1:
            revert with 0, 17
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if stor4[address(arg1)] - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        if not stor3.length:
            revert with 0, 49
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
    emit AccountIncluded(arg1);
}

function SetDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[stor12]:
        if stor4[stor12] < 1:
            revert with 0, 17
        if stor3.length < 1:
            revert with 0, 17
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if stor4[stor12] - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor4[stor12]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[stor12]
        if not stor3.length:
            revert with 0, 49
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[stor12] = 0
    stor12 = arg1
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    emit UpdateDevWallet(arg1);
}

function SetMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[stor11]:
        if stor4[stor11] < 1:
            revert with 0, 17
        if stor3.length < 1:
            revert with 0, 17
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if stor4[stor11] - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor4[stor11]].field_0 = stor3[stor3.length].field_0
        stor4[stor3[stor3.length].field_0] = stor4[stor11]
        if not stor3.length:
            revert with 0, 49
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[stor11] = 0
    marketingWalletAddress = arg1
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
    emit UpdateMarketingWallet(arg1);
}

function IncludeMeToStaking() {
    require stor6[address(msg.sender)]
    if stor20 > !balanceOf[msg.sender]:
        revert with 0, 17
    stor20 += balanceOf[msg.sender]
    if stor6[address(msg.sender)]:
        if stor6[address(msg.sender)] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 >= stor5.length:
            revert with 0, 50
        if stor6[address(msg.sender)] - 1 >= stor5.length:
            revert with 0, 50
        stor5[stor6[address(msg.sender)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(msg.sender)]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(msg.sender)] = 0
    if balanceOf[msg.sender] and stor21 > -1 / balanceOf[msg.sender]:
        revert with 0, 17
    stor29[msg.sender] = balanceOf[msg.sender] * stor21
    if balanceOf[msg.sender] and stor22 > -1 / balanceOf[msg.sender]:
        revert with 0, 17
    stor31[msg.sender] = balanceOf[msg.sender] * stor22
}

function IncludeToStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    require stor6[address(arg1)]
    if stor20 > !balanceOf[address(arg1)]:
        revert with 0, 17
    stor20 += balanceOf[address(arg1)]
    if stor6[address(arg1)]:
        if stor6[address(arg1)] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 >= stor5.length:
            revert with 0, 50
        if stor6[address(arg1)] - 1 >= stor5.length:
            revert with 0, 50
        stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length].field_0 = 0
        stor5.length--
        stor6[address(arg1)] = 0
    if balanceOf[address(arg1)] and stor21 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    stor29[address(arg1)] = balanceOf[address(arg1)] * stor21
    if balanceOf[address(arg1)] and stor22 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    stor31[address(arg1)] = balanceOf[address(arg1)] * stor22
    emit OnIncludeToStaking(arg1);
}

function RemoveLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor18:
        revert with 0, 'Not yet unlocked'
    stor18 = block.timestamp
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor17, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor17)
    call stor17.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
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

function TriggerBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    if arg1 > sub_3b456f2f:
        revert with 0, 'Amount exceeds BuyBackBalance!'
    if sub_3b456f2f < arg1:
        revert with 0, 17
    sub_3b456f2f -= arg1
    require ext_code.size(stor17)
    staticcall stor17.WETH() with:
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
    require ext_code.size(stor17)
    call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, burnAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Buyback(arg1);
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
            if stor12 != msg.sender:
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
    if arg7 > 20:
        revert with 0, 'taxes higher than max tax'
    if arg8 > 20:
        revert with 0, 'taxes higher than max tax'
    if arg9 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transferTax higher than max transferTax'
    uint8(stor8.field_8) = arg1
    uint8(stor8.field_40) = arg2
    uint8(stor8.field_0) = arg3
    uint8(stor8.field_16) = arg4
    uint8(stor8.field_24) = arg5
    uint8(stor8.field_32) = arg6
    uint8(stor8.field_48) = arg7
    uint8(stor8.field_56) = arg8
    uint8(stor8.field_64) = arg9
    emit OnUpdateTaxes(arg1 << 248, arg2 << 248, arg3 << 248, arg4 << 248, arg5, arg6 << 248, arg7 << 248, arg8 << 248, arg9);
}

function ExcludeFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    require not stor6[address(arg1)]
    if stor20 < balanceOf[address(arg1)]:
        revert with 0, 17
    stor20 -= balanceOf[address(arg1)]
    if stor21 and balanceOf[address(arg1)] > -1 / stor21:
        revert with 0, 17
    if stor21 * balanceOf[address(arg1)] < stor29[address(arg1)]:
        if stor22 and balanceOf[address(arg1)] > -1 / stor22:
            revert with 0, 17
        if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
            if balanceOf[address(arg1)] and stor21 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor29[address(arg1)] = balanceOf[address(arg1)] * stor21
            if balanceOf[address(arg1)] and stor22 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor31[address(arg1)] = balanceOf[address(arg1)] * stor22
            if stor30[address(arg1)] > -1:
                revert with 0, 17
            if stor32[address(arg1)] > -1:
                revert with 0, 17
        else:
            if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] and stor21 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor29[address(arg1)] = balanceOf[address(arg1)] * stor21
            if balanceOf[address(arg1)] and stor22 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor31[address(arg1)] = balanceOf[address(arg1)] * stor22
            if stor30[address(arg1)] > -1:
                revert with 0, 17
            if stor32[address(arg1)] > !(Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64):
                revert with 0, 17
            stor32[address(arg1)] += Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64
    else:
        if stor21 * balanceOf[address(arg1)] < stor29[address(arg1)]:
            revert with 0, 17
        if stor22 and balanceOf[address(arg1)] > -1 / stor22:
            revert with 0, 17
        if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
            if balanceOf[address(arg1)] and stor21 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor29[address(arg1)] = balanceOf[address(arg1)] * stor21
            if balanceOf[address(arg1)] and stor22 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor31[address(arg1)] = balanceOf[address(arg1)] * stor22
            if stor30[address(arg1)] > !(Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64):
                revert with 0, 17
            stor30[address(arg1)] += Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64
            if stor32[address(arg1)] > -1:
                revert with 0, 17
        else:
            if stor22 * balanceOf[address(arg1)] < stor31[address(arg1)]:
                revert with 0, 17
            if balanceOf[address(arg1)] and stor21 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor29[address(arg1)] = balanceOf[address(arg1)] * stor21
            if balanceOf[address(arg1)] and stor22 > -1 / balanceOf[address(arg1)]:
                revert with 0, 17
            stor31[address(arg1)] = balanceOf[address(arg1)] * stor22
            if stor30[address(arg1)] > !(Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64):
                revert with 0, 17
            stor30[address(arg1)] += Mask(192, 64, (stor21 * balanceOf[address(arg1)]) - stor29[address(arg1)]) >> 64
            if stor32[address(arg1)] > !(Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64):
                revert with 0, 17
            stor32[address(arg1)] += Mask(192, 64, (stor22 * balanceOf[address(arg1)]) - stor31[address(arg1)]) >> 64
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
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
    if stor6[address(msg.sender)]:
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    else:
        if stor20 < 10^18 * arg1:
            revert with 0, 17
        stor20 += -1 * 10^18 * arg1
        if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
            revert with 0, 17
        if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
            if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor21 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor21) - (10^18 * arg1 * stor21)
                if stor30[address(msg.sender)] > -1:
                    revert with 0, 17
                if stor22 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor22) - (10^18 * arg1 * stor22)
                if stor32[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor21 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor21) - (10^18 * arg1 * stor21)
                if stor30[address(msg.sender)] > -1:
                    revert with 0, 17
                if stor22 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor22) - (10^18 * arg1 * stor22)
                if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor32[address(msg.sender)] += Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
        else:
            if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
                revert with 0, 17
            if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor21 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor21) - (10^18 * arg1 * stor21)
                if stor30[address(msg.sender)] > !(Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor30[address(msg.sender)] += Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64
                if stor22 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor22) - (10^18 * arg1 * stor22)
                if stor32[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
                if stor21 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor21) - (10^18 * arg1 * stor21)
                if stor30[address(msg.sender)] > !(Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor30[address(msg.sender)] += Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64
                if stor22 and balanceOf[address(msg.sender)] - (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = (balanceOf[address(msg.sender)] * stor22) - (10^18 * arg1 * stor22)
                if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor32[address(msg.sender)] += Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
    if balanceOf[stor13] > !(10^18 * arg1):
        revert with 0, 17
    if not stor6[stor13]:
        if stor20 > !(10^18 * arg1):
            revert with 0, 17
        stor20 += 10^18 * arg1
        if stor21 and balanceOf[stor13] > -1 / stor21:
            revert with 0, 17
        if stor21 * balanceOf[stor13] < stor29[stor13]:
            if stor22 and balanceOf[stor13] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[stor13] < stor31[stor13]:
                balanceOf[stor13] += 10^18 * arg1
                if stor21 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[stor13] = (balanceOf[stor13] * stor21) + (10^18 * arg1 * stor21)
                if stor30[stor13] > -1:
                    revert with 0, 17
                if stor22 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[stor13] = (balanceOf[stor13] * stor22) + (10^18 * arg1 * stor22)
                if stor32[stor13] > -1:
                    revert with 0, 17
            else:
                if stor22 * balanceOf[stor13] < stor31[stor13]:
                    revert with 0, 17
                balanceOf[stor13] += 10^18 * arg1
                if stor21 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[stor13] = (balanceOf[stor13] * stor21) + (10^18 * arg1 * stor21)
                if stor30[stor13] > -1:
                    revert with 0, 17
                if stor22 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[stor13] = (balanceOf[stor13] * stor22) + (10^18 * arg1 * stor22)
                if stor32[stor13] > !(Mask(192, 64, (stor22 * balanceOf[stor13]) - stor31[stor13]) >> 64):
                    revert with 0, 17
                stor32[stor13] += Mask(192, 64, (stor22 * balanceOf[stor13]) - stor31[stor13]) >> 64
        else:
            if stor21 * balanceOf[stor13] < stor29[stor13]:
                revert with 0, 17
            if stor22 and balanceOf[stor13] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[stor13] < stor31[stor13]:
                balanceOf[stor13] += 10^18 * arg1
                if stor21 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[stor13] = (balanceOf[stor13] * stor21) + (10^18 * arg1 * stor21)
                if stor30[stor13] > !(Mask(192, 64, (stor21 * balanceOf[stor13]) - stor29[stor13]) >> 64):
                    revert with 0, 17
                stor30[stor13] += Mask(192, 64, (stor21 * balanceOf[stor13]) - stor29[stor13]) >> 64
                if stor22 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[stor13] = (balanceOf[stor13] * stor22) + (10^18 * arg1 * stor22)
                if stor32[stor13] > -1:
                    revert with 0, 17
            else:
                if stor22 * balanceOf[stor13] < stor31[stor13]:
                    revert with 0, 17
                balanceOf[stor13] += 10^18 * arg1
                if stor21 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor21:
                    revert with 0, 17
                stor29[stor13] = (balanceOf[stor13] * stor21) + (10^18 * arg1 * stor21)
                if stor30[stor13] > !(Mask(192, 64, (stor21 * balanceOf[stor13]) - stor29[stor13]) >> 64):
                    revert with 0, 17
                stor30[stor13] += Mask(192, 64, (stor21 * balanceOf[stor13]) - stor29[stor13]) >> 64
                if stor22 and balanceOf[stor13] + (10^18 * arg1) > -1 / stor22:
                    revert with 0, 17
                stor31[stor13] = (balanceOf[stor13] * stor22) + (10^18 * arg1 * stor22)
                if stor32[stor13] > !(Mask(192, 64, (stor22 * balanceOf[stor13]) - stor31[stor13]) >> 64):
                    revert with 0, 17
                stor32[stor13] += Mask(192, 64, (stor22 * balanceOf[stor13]) - stor31[stor13]) >> 64
    balanceOf[stor13] += 10^18 * arg1
    if _circulatingSupply < 10^18 * arg1:
        revert with 0, 17
    _circulatingSupply += -1 * 10^18 * arg1
    emit Transfer((10^18 * arg1), msg.sender, burnAddress);
    emit onBurnTokens((10^18 * arg1));
}

function ClaimMainReward() {
    require not stor19
    stor19 = 1
    if stor6[address(msg.sender)]:
        if sub_ba384879Address != sub_ba384879Address:
            stor32[address(msg.sender)] = 0
            if stor32[address(msg.sender)]:
                if totalPayouts > !stor32[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor32[address(msg.sender)]
                if stor32[address(msg.sender)] > -1:
                    revert with 0, 17
                require ext_code.size(stor17)
                staticcall stor17.WETH() with:
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
                require ext_code.size(stor17)
                call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor32[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawToken(stor32[address(msg.sender)], sub_ba384879Address, msg.sender);
        else:
            stor30[address(msg.sender)] = 0
            if stor30[address(msg.sender)]:
                if totalPayouts > !stor30[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor30[address(msg.sender)]
                if stor30[address(msg.sender)] > -1:
                    revert with 0, 17
                require ext_code.size(stor17)
                staticcall stor17.WETH() with:
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
                require ext_code.size(stor17)
                call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value stor30[address(msg.sender)] wei
                     gas gas_remaining wei
                    args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawToken(stor30[address(msg.sender)], sub_ba384879Address, msg.sender);
    else:
        if sub_ba384879Address != sub_ba384879Address:
            if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                if stor32[address(msg.sender)] > -1:
                    revert with 0, 17
                stor32[address(msg.sender)] = 0
                if stor32[address(msg.sender)]:
                    if totalPayouts > !stor32[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor32[address(msg.sender)]
                    if stor32[address(msg.sender)] > -1:
                        revert with 0, 17
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor32[address(msg.sender)] wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor32[address(msg.sender)], sub_ba384879Address, msg.sender);
            else:
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    revert with 0, 17
                if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                    revert with 0, 17
                stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor32[address(msg.sender)] = 0
                if stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                    if totalPayouts > !(stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64)):
                        revert with 0, 17
                    totalPayouts = totalPayouts + stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64)
                    if stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) > -1:
                        revert with 0, 17
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64), sub_ba384879Address, msg.sender);
        else:
            if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                revert with 0, 17
            if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
                if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = stor21 * balanceOf[address(msg.sender)]
                if stor30[address(msg.sender)] > -1:
                    revert with 0, 17
                stor30[address(msg.sender)] = 0
                if stor30[address(msg.sender)]:
                    if totalPayouts > !stor30[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor30[address(msg.sender)]
                    if stor30[address(msg.sender)] > -1:
                        revert with 0, 17
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor30[address(msg.sender)] wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor30[address(msg.sender)], sub_ba384879Address, msg.sender);
            else:
                if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
                    revert with 0, 17
                if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                    revert with 0, 17
                stor29[address(msg.sender)] = stor21 * balanceOf[address(msg.sender)]
                if stor30[address(msg.sender)] > !(Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                    revert with 0, 17
                stor30[address(msg.sender)] = 0
                if stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                    if totalPayouts > !(stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64)):
                        revert with 0, 17
                    totalPayouts = totalPayouts + stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64)
                    if stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64) > -1:
                        revert with 0, 17
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64) wei
                         gas gas_remaining wei
                        args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64), sub_ba384879Address, msg.sender);
    stor19 = 0
}

function ClaimMiscReward() {
    require ext_code.size(stor17)
    staticcall stor17.WETH() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == sub_21e622aaAddress:
        if stor6[address(msg.sender)]:
            require not stor19
            if not stor32[address(msg.sender)]:
                revert with 0, '=0'
            stor19 = 1
            if stor6[address(msg.sender)]:
                if stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                    revert with 0, 'exceeds divident'
            else:
                if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                    revert with 0, 17
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    if 0 > !stor32[address(msg.sender)]:
                        revert with 0, 17
                    if stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                        revert with 0, 'exceeds divident'
                else:
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        revert with 0, 17
                    if Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64 > !stor32[address(msg.sender)]:
                        revert with 0, 17
                    if stor32[address(msg.sender)] > (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]:
                        revert with 0, 'exceeds divident'
            if not stor6[address(msg.sender)]:
                if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                    revert with 0, 17
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                    if stor32[address(msg.sender)] > -1:
                        revert with 0, 17
                else:
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        revert with 0, 17
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                    if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                        revert with 0, 17
                    stor32[address(msg.sender)] += Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
            if stor32[address(msg.sender)] < stor32[address(msg.sender)]:
                revert with 0, 17
            stor32[address(msg.sender)] = 0
            if totalPayouts > !stor32[address(msg.sender)]:
                revert with 0, 17
            totalPayouts += stor32[address(msg.sender)]
            call msg.sender with:
               value stor32[address(msg.sender)] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'withdraw failed'
            stor19 = 0
            emit OnClaimBNB(msg.sender, msg.sender, stor32[address(msg.sender)]);
        else:
            if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                revert with 0, 17
            if stor22 * balanceOf[address(msg.sender)] >= stor31[address(msg.sender)]:
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    revert with 0, 17
                if Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64 > !stor32[address(msg.sender)]:
                    revert with 0, 17
                require not stor19
                if not (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]:
                    revert with 0, '=0'
                stor19 = 1
                if stor6[address(msg.sender)]:
                    if (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                        revert with 0, 'exceeds divident'
                else:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    if stor22 * balanceOf[address(msg.sender)] >= stor31[address(msg.sender)]:
                        if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                            revert with 0, 17
                        if Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64 > !stor32[address(msg.sender)]:
                            revert with 0, 17
                    else:
                        if 0 > !stor32[address(msg.sender)]:
                            revert with 0, 17
                        if (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                            revert with 0, 'exceeds divident'
                if not stor6[address(msg.sender)]:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                            revert with 0, 17
                        stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                        if stor32[address(msg.sender)] > -1:
                            revert with 0, 17
                    else:
                        if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                            revert with 0, 17
                        if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                            revert with 0, 17
                        stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                        if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                            revert with 0, 17
                        stor32[address(msg.sender)] += Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
                if stor32[address(msg.sender)] < (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]:
                    revert with 0, 17
                stor32[address(msg.sender)] = -Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
                if totalPayouts > !((Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]):
                    revert with 0, 17
                totalPayouts = totalPayouts + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]
                call msg.sender with:
                   value (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'withdraw failed'
                stor19 = 0
                emit OnClaimBNB(msg.sender, msg.sender, (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]);
            else:
                if 0 > !stor32[address(msg.sender)]:
                    revert with 0, 17
                require not stor19
                if not stor32[address(msg.sender)]:
                    revert with 0, '=0'
                stor19 = 1
                if stor6[address(msg.sender)]:
                    if stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                        revert with 0, 'exceeds divident'
                else:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        if 0 > !stor32[address(msg.sender)]:
                            revert with 0, 17
                        if stor32[address(msg.sender)] > stor32[address(msg.sender)]:
                            revert with 0, 'exceeds divident'
                    else:
                        if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                            revert with 0, 17
                        if Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64 > !stor32[address(msg.sender)]:
                            revert with 0, 17
                        if stor32[address(msg.sender)] > (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) + stor32[address(msg.sender)]:
                            revert with 0, 'exceeds divident'
                if not stor6[address(msg.sender)]:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                            revert with 0, 17
                        stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                        if stor32[address(msg.sender)] > -1:
                            revert with 0, 17
                    else:
                        if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                            revert with 0, 17
                        if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                            revert with 0, 17
                        stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                        if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                            revert with 0, 17
                        stor32[address(msg.sender)] += Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64
                if stor32[address(msg.sender)] < stor32[address(msg.sender)]:
                    revert with 0, 17
                stor32[address(msg.sender)] = 0
                if totalPayouts > !stor32[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor32[address(msg.sender)]
                call msg.sender with:
                   value stor32[address(msg.sender)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'withdraw failed'
                stor19 = 0
                emit OnClaimBNB(msg.sender, msg.sender, stor32[address(msg.sender)]);
    else:
        require not stor19
        stor19 = 1
        if stor6[address(msg.sender)]:
            mem[0] = msg.sender
            if sub_ba384879Address != sub_21e622aaAddress:
                mem[32] = 32
                stor32[address(msg.sender)] = 0
                if stor32[address(msg.sender)]:
                    if totalPayouts > !stor32[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor32[address(msg.sender)]
                    if stor32[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 96] = 2
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.mem[mem[64] len 4] with:
                       value stor32[address(msg.sender)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor32[address(msg.sender)], sub_21e622aaAddress, msg.sender);
            else:
                mem[32] = 30
                stor30[address(msg.sender)] = 0
                if stor30[address(msg.sender)]:
                    if totalPayouts > !stor30[address(msg.sender)]:
                        revert with 0, 17
                    totalPayouts += stor30[address(msg.sender)]
                    if stor30[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 96] = 2
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
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
                    require ext_code.size(stor17)
                    call stor17.mem[mem[64] len 4] with:
                       value stor30[address(msg.sender)] wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit OnWithdrawToken(stor30[address(msg.sender)], sub_21e622aaAddress, msg.sender);
        else:
            if sub_ba384879Address != sub_21e622aaAddress:
                if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                    revert with 0, 17
                if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                    if stor32[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 32
                    stor32[address(msg.sender)] = 0
                    if stor32[address(msg.sender)]:
                        if totalPayouts > !stor32[address(msg.sender)]:
                            revert with 0, 17
                        totalPayouts += stor32[address(msg.sender)]
                        if stor32[address(msg.sender)] > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
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
                        require ext_code.size(stor17)
                        call stor17.mem[mem[64] len 4] with:
                           value stor32[address(msg.sender)] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor32[address(msg.sender)], sub_21e622aaAddress, msg.sender);
                else:
                    if stor22 * balanceOf[address(msg.sender)] < stor31[address(msg.sender)]:
                        revert with 0, 17
                    if stor22 and balanceOf[address(msg.sender)] > -1 / stor22:
                        revert with 0, 17
                    stor31[address(msg.sender)] = stor22 * balanceOf[address(msg.sender)]
                    if stor32[address(msg.sender)] > !(Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 32
                    stor32[address(msg.sender)] = 0
                    if stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64):
                        if totalPayouts > !(stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64)):
                            revert with 0, 17
                        totalPayouts = totalPayouts + stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64)
                        if stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
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
                        require ext_code.size(stor17)
                        call stor17.mem[mem[64] len 4] with:
                           value stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor32[address(msg.sender)] + (Mask(192, 64, (stor22 * balanceOf[address(msg.sender)]) - stor31[address(msg.sender)]) >> 64), sub_21e622aaAddress, msg.sender);
            else:
                if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                    revert with 0, 17
                if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
                    if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                        revert with 0, 17
                    stor29[address(msg.sender)] = stor21 * balanceOf[address(msg.sender)]
                    if stor30[address(msg.sender)] > -1:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 30
                    stor30[address(msg.sender)] = 0
                    if stor30[address(msg.sender)]:
                        if totalPayouts > !stor30[address(msg.sender)]:
                            revert with 0, 17
                        totalPayouts += stor30[address(msg.sender)]
                        if stor30[address(msg.sender)] > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
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
                        require ext_code.size(stor17)
                        call stor17.mem[mem[64] len 4] with:
                           value stor30[address(msg.sender)] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor30[address(msg.sender)], sub_21e622aaAddress, msg.sender);
                else:
                    if stor21 * balanceOf[address(msg.sender)] < stor29[address(msg.sender)]:
                        revert with 0, 17
                    if stor21 and balanceOf[address(msg.sender)] > -1 / stor21:
                        revert with 0, 17
                    stor29[address(msg.sender)] = stor21 * balanceOf[address(msg.sender)]
                    if stor30[address(msg.sender)] > !(Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 30
                    stor30[address(msg.sender)] = 0
                    if stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64):
                        if totalPayouts > !(stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64)):
                            revert with 0, 17
                        totalPayouts = totalPayouts + stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64)
                        if stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64) > -1:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 96] = 2
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
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
                        require ext_code.size(stor17)
                        call stor17.mem[mem[64] len 4] with:
                           value stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit OnWithdrawToken(stor30[address(msg.sender)] + (Mask(192, 64, (stor21 * balanceOf[address(msg.sender)]) - stor29[address(msg.sender)]) >> 64), sub_21e622aaAddress, msg.sender);
        stor19 = 0
}

function CreateLPandBNB(uint16 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            if stor12 != msg.sender:
                revert with 0, 'Caller not authorized'
    uint8(stor34.field_0) = 1
    require arg1 <= 500
    if uint8(stor8.field_24) > -uint8(stor8.field_32) + 255:
        revert with 0, 17
    if uint8(uint8(stor8.field_32) + uint8(stor8.field_24)) > -uint8(stor8.field_16) + 255:
        revert with 0, 17
    if uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))) > -uint8(stor8.field_0) + 255:
        revert with 0, 17
    if uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))) > -uint8(stor8.field_40) + 255:
        revert with 0, 17
    if uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
        if balanceOf[stor16] and arg1 > -1 / balanceOf[stor16]:
            revert with 0, 17
        if balanceOf[stor16] * arg1 / 1000 <= sellLimit:
            if balanceOf[this.address] >= balanceOf[stor16] * arg1 / 1000:
                if balanceOf[stor16] * arg1 / 1000 > allowance[this.address][stor17]:
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor17:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor17] = -1
                    emit Approval(-1, this.address, stor17);
                if balanceOf[stor16] * arg1 / 1000 and uint8(stor8.field_24) > -1 / balanceOf[stor16] * arg1 / 1000:
                    revert with 0, 17
                if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                    revert with 0, 18
                if balanceOf[stor16] * arg1 / 1000 < balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                    revert with 0, 17
                if balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                    revert with 0, 17
                if (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !((balanceOf[stor16] * arg1 / 1000) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor17:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor17] = -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                emit Approval((-(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)), this.address, stor17);
                mem[128] = this.address
                require ext_code.size(stor17)
                staticcall stor17.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor17)
                call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                    revert with 0, 17
                if not -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000):
                    revert with 0, 18
                if totalLPBNB > !(0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)):
                    revert with 0, 17
                totalLPBNB += 0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                require ext_code.size(stor17)
                call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000) wei
                     gas gas_remaining wei
                    args address(this.address), Mask(255, 1, balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                if ext_call.success:
                    require return_data.size >= 96
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and uint8(stor8.field_16) > 0:
                    revert with 0, 17
                if False and uint8(stor8.field_0) > 0:
                    revert with 0, 17
                if False and uint8(stor8.field_40) > 0:
                    revert with 0, 17
                if False and uint8(stor8.field_72) > 0:
                    revert with 0, 17
                if False and uint8(stor8.field_80) > 0:
                    revert with 0, 17
                if sub_ff4f661e > -1:
                    revert with 0, 17
                if sub_d8f946bf > -1:
                    revert with 0, 17
                if sub_3b456f2f > -1:
                    revert with 0, 17
            else:
                if arg2:
                    if balanceOf[this.address] > allowance[this.address][stor17]:
                        if not this.address:
                            revert with 0, 'Approve from zero'
                        if not stor17:
                            revert with 0, 'Approve to zero'
                        allowance[address(this.address)][stor17] = -1
                        emit Approval(-1, this.address, stor17);
                    if balanceOf[this.address] and uint8(stor8.field_24) > -1 / balanceOf[this.address]:
                        revert with 0, 17
                    if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 18
                    if balanceOf[this.address] < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 17
                    if balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                        revert with 0, 17
                    if (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor17:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor17] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                    emit Approval((-(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]), this.address, stor17);
                    mem[128] = this.address
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor17)
                    call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                        revert with 0, 17
                    if not -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]:
                        revert with 0, 18
                    if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]):
                        revert with 0, 17
                    totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                    require ext_code.size(stor17)
                    call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address] wei
                         gas gas_remaining wei
                        args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                    if ext_call.success:
                        require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and uint8(stor8.field_16) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_0) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_40) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_72) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_80) > 0:
                        revert with 0, 17
                    if sub_ff4f661e > -1:
                        revert with 0, 17
                    if sub_d8f946bf > -1:
                        revert with 0, 17
                    if sub_3b456f2f > -1:
                        revert with 0, 17
        else:
            if arg2:
                if balanceOf[this.address] >= balanceOf[stor16] * arg1 / 1000:
                    if balanceOf[stor16] * arg1 / 1000 > allowance[this.address][stor17]:
                        if not this.address:
                            revert with 0, 'Approve from zero'
                        if not stor17:
                            revert with 0, 'Approve to zero'
                        allowance[address(this.address)][stor17] = -1
                        emit Approval(-1, this.address, stor17);
                    if balanceOf[stor16] * arg1 / 1000 and uint8(stor8.field_24) > -1 / balanceOf[stor16] * arg1 / 1000:
                        revert with 0, 17
                    if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 18
                    if balanceOf[stor16] * arg1 / 1000 < balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 17
                    if balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                        revert with 0, 17
                    if (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !((balanceOf[stor16] * arg1 / 1000) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor17:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor17] = -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                    emit Approval((-(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)), this.address, stor17);
                    mem[128] = this.address
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor17)
                    call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                        revert with 0, 17
                    if not -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000):
                        revert with 0, 18
                    if totalLPBNB > !(0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)):
                        revert with 0, 17
                    totalLPBNB += 0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000)
                    require ext_code.size(stor17)
                    call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + (balanceOf[stor16] * arg1 / 1000) wei
                         gas gas_remaining wei
                        args address(this.address), Mask(255, 1, balanceOf[stor16] * arg1 / 1000 * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                    if ext_call.success:
                        require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and uint8(stor8.field_16) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_0) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_40) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_72) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_80) > 0:
                        revert with 0, 17
                    if sub_ff4f661e > -1:
                        revert with 0, 17
                    if sub_d8f946bf > -1:
                        revert with 0, 17
                    if sub_3b456f2f > -1:
                        revert with 0, 17
                else:
                    if arg2:
                        if balanceOf[this.address] > allowance[this.address][stor17]:
                            if not this.address:
                                revert with 0, 'Approve from zero'
                            if not stor17:
                                revert with 0, 'Approve to zero'
                            allowance[address(this.address)][stor17] = -1
                            emit Approval(-1, this.address, stor17);
                        if balanceOf[this.address] and uint8(stor8.field_24) > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                            revert with 0, 18
                        if balanceOf[this.address] < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                            revert with 0, 17
                        if balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                            revert with 0, 17
                        if (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'Approve from zero'
                        if not stor17:
                            revert with 0, 'Approve to zero'
                        allowance[address(this.address)][stor17] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        emit Approval((-(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]), this.address, stor17);
                        mem[128] = this.address
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if False and (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                            revert with 0, 17
                        if not -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]:
                            revert with 0, 18
                        if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]):
                            revert with 0, 17
                        totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        require ext_code.size(stor17)
                        call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                        if ext_call.success:
                            require return_data.size >= 96
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if False and uint8(stor8.field_16) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_0) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_40) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_72) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_80) > 0:
                            revert with 0, 17
                        if sub_ff4f661e > -1:
                            revert with 0, 17
                        if sub_d8f946bf > -1:
                            revert with 0, 17
                        if sub_3b456f2f > -1:
                            revert with 0, 17
            else:
                if balanceOf[this.address] >= sellLimit:
                    if sellLimit > allowance[this.address][stor17]:
                        if not this.address:
                            revert with 0, 'Approve from zero'
                        if not stor17:
                            revert with 0, 'Approve to zero'
                        allowance[address(this.address)][stor17] = -1
                        emit Approval(-1, this.address, stor17);
                    if sellLimit and uint8(stor8.field_24) > -1 / sellLimit:
                        revert with 0, 17
                    if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 18
                    if sellLimit < sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                        revert with 0, 17
                    if sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                        revert with 0, 17
                    if (sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !(sellLimit - (sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor17:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor17] = -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit
                    emit Approval((-(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit), this.address, stor17);
                    mem[128] = this.address
                    require ext_code.size(stor17)
                    staticcall stor17.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor17)
                    call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                        revert with 0, 17
                    if not -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit:
                        revert with 0, 18
                    if totalLPBNB > !(0 / -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit):
                        revert with 0, 17
                    totalLPBNB += 0 / -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit
                    require ext_code.size(stor17)
                    call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + sellLimit wei
                         gas gas_remaining wei
                        args address(this.address), Mask(255, 1, sellLimit * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                    if ext_call.success:
                        require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and uint8(stor8.field_16) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_0) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_40) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_72) > 0:
                        revert with 0, 17
                    if False and uint8(stor8.field_80) > 0:
                        revert with 0, 17
                    if sub_ff4f661e > -1:
                        revert with 0, 17
                    if sub_d8f946bf > -1:
                        revert with 0, 17
                    if sub_3b456f2f > -1:
                        revert with 0, 17
                else:
                    if arg2:
                        if balanceOf[this.address] > allowance[this.address][stor17]:
                            if not this.address:
                                revert with 0, 'Approve from zero'
                            if not stor17:
                                revert with 0, 'Approve to zero'
                            allowance[address(this.address)][stor17] = -1
                            emit Approval(-1, this.address, stor17);
                        if balanceOf[this.address] and uint8(stor8.field_24) > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                            revert with 0, 18
                        if balanceOf[this.address] < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))):
                            revert with 0, 17
                        if balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) < balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2:
                            revert with 0, 17
                        if (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > !(balanceOf[this.address] - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))))):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'Approve from zero'
                        if not stor17:
                            revert with 0, 'Approve to zero'
                        allowance[address(this.address)][stor17] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        emit Approval((-(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]), this.address, stor17);
                        mem[128] = this.address
                        require ext_code.size(stor17)
                        staticcall stor17.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor17)
                        call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if False and (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))) - (balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) > 0:
                            revert with 0, 17
                        if not -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]:
                            revert with 0, 18
                        if totalLPBNB > !(0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]):
                            revert with 0, 17
                        totalLPBNB += 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address]
                        require ext_code.size(stor17)
                        call stor17.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / -(balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24))))) / 2) + balanceOf[this.address] wei
                             gas gas_remaining wei
                            args address(this.address), Mask(255, 1, balanceOf[this.address] * uint8(stor8.field_24) / uint8(uint8(stor8.field_40) + uint8(uint8(stor8.field_0) + uint8(uint8(stor8.field_16) + uint8(uint8(stor8.field_32) + uint8(stor8.field_24)))))), 0, 0, address(this.address), block.timestamp
                        if ext_call.success:
                            require return_data.size >= 96
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if False and uint8(stor8.field_16) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_0) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_40) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_72) > 0:
                            revert with 0, 17
                        if False and uint8(stor8.field_80) > 0:
                            revert with 0, 17
                        if sub_ff4f661e > -1:
                            revert with 0, 17
                        if sub_d8f946bf > -1:
                            revert with 0, 17
                        if sub_3b456f2f > -1:
                            revert with 0, 17
    uint8(stor34.field_0) = 0
}



}
