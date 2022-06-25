contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Freedom Convoy 2k22', 0

const decimals = 18

const symbol = '$FREEDOM', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
address stor7;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 totalSupply;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint256 sub_82d20116;
uint256 stor21;
uint256 sub_409d0566;
uint256 sub_10075a69;
uint256 stor24;
uint256 sub_fb5f27fb;
uint256 sub_1107b3a5;
uint256 stor27;
uint256 sub_ac45ed1c;
uint256 sub_13374e7a;
uint256 stor30;
uint256 sub_53148416;
uint256 stor37;
uint256 stor38;
uint256 swapThreshold;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint8 autoBuybackEnabled;
uint8 autoBuybackMultiplier; offset 8
uint256 stor46; offset 8
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;
uint256 stor51;
address stor52;
uint256 stor53;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingOpen;
uint8 swapEnabled; offset 8
uint256 stor59; offset 16
uint256 stor59; offset 8

function swapThreshold() {
    return swapThreshold
}

function sub_10075a69(?) {
    return sub_10075a69
}

function sub_1107b3a5(?) {
    return sub_1107b3a5
}

function sub_13374e7a(?) {
    return sub_13374e7a
}

function totalSupply() {
    return totalSupply
}

function sub_33477327(?) {
    return sub_33477327
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function sub_409d0566(?) {
    return sub_409d0566
}

function sub_53148416(?) {
    return sub_53148416
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function _maxWalletToken() {
    return _maxWalletToken
}

function sub_82d20116(?) {
    return sub_82d20116
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function sub_ac45ed1c(?) {
    return sub_ac45ed1c
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_cf4be394(?) {
    return sub_cf4be394
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function autoBuybackMultiplier() {
    return bool(autoBuybackMultiplier)
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function sub_fb5f27fb(?) {
    return sub_fb5f27fb
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor53 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor40 = arg1
    stor41 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor18[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor52)
    call stor52.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
}

function setTokenDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7 = arg1
    stor16[address(arg1)] = 1
    stor17[address(arg1)] = 1
    stor18[address(arg1)] = 1
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor59.field_8) = Mask(248, 0, arg1)
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 'NH{q', 17
    swapThreshold = totalSupply * arg2 / 10000
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 'NH{q', 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor42 = arg1
    stor43 = arg2
    stor45 = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor52)
    call stor52.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor52)
    staticcall stor52.0x28fd3198 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor47 = arg2
    stor48 = 0
    stor49 = arg3
    stor50 = arg4
    stor51 = block.number
    stor46 = Mask(248, 0, arg5)
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not totalSupply:
        _maxWalletToken = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletToken = totalSupply * arg1 / 10000
}

function setBuyTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_33477327 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_33477327 = totalSupply * arg1 / 10000
}

function setSellTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_cf4be394 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_cf4be394 = totalSupply * arg1 / 10000
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor19[address(arg1)] = uint8(arg2)
    require ext_code.size(stor52)
    if not arg2:
        call stor52.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor52.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_82d20116 = arg1
    stor21 = arg2
    sub_409d0566 = arg3
    sub_10075a69 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 > -stor24 - 1:
        revert with 'NH{q', 17
    if stor24 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_fb5f27fb = arg1 + arg2 + arg3 + arg4 + stor24
    stor38 = arg5
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_1107b3a5 = arg1
    stor27 = arg2
    sub_ac45ed1c = arg3
    sub_13374e7a = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 > -stor30 - 1:
        revert with 'NH{q', 17
    if stor30 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_53148416 = arg1 + arg2 + arg3 + arg4 + stor30
    stor38 = arg5
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    Mask(240, 0, stor59.field_16) = 1
    mem[192] = stor3
    mem[224] = this.address
    mem[256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[260] = 0
    idx = 0
    s = 192
    t = 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^18 * arg1 / 100 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(240, 0, stor59.field_16) = 0
    if arg2:
        stor44 = block.timestamp
        emit BuybackMultiplierActive(stor45);
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if not balanceOf[stor57]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if balanceOf[stor57] and 2 > -1 / balanceOf[stor57]:
        revert with 'NH{q', 17
    if not balanceOf[stor57]:
        revert with 'NH{q', 18
    if 2 * balanceOf[stor57] / balanceOf[stor57] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor57] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[stor57] / arg1 != 2 * balanceOf[stor57]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor57] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if not balanceOf[stor57]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if balanceOf[stor57] and 2 > -1 / balanceOf[stor57]:
        revert with 'NH{q', 17
    if not balanceOf[stor57]:
        revert with 'NH{q', 18
    if 2 * balanceOf[stor57] / balanceOf[stor57] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 'NH{q', 18
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor57] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[stor57] / arg2 != 2 * balanceOf[stor57]:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - balanceOf[stor4] - balanceOf[stor5] <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor57] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor44 > -stor45 - 1:
        revert with 'NH{q', 17
    if stor44 + stor45 < stor44:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor44 + stor45:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor44 + stor45 < block.timestamp:
        revert with 'NH{q', 17
    if not stor37:
        if stor43 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor43:
            revert with 'NH{q', 18
        if stor37 > 0 / stor43:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor43 < stor37:
            revert with 'NH{q', 17
        if not (0 / stor43) - stor37:
            if stor45 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor45:
                revert with 'NH{q', 18
            if stor37 > -(0 / stor45) - 1:
                revert with 'NH{q', 17
            if stor37 + (0 / stor45) < stor37:
                revert with 0, 'SafeMath: addition overflow'
            return (stor37 + (0 / stor45))
        if (0 / stor43) - stor37 and stor44 + stor45 - block.timestamp > -1 / (0 / stor43) - stor37:
            revert with 'NH{q', 17
        if not (0 / stor43) - stor37:
            revert with 'NH{q', 18
        if (stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / (0 / stor43) - stor37 != stor44 + stor45 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor45 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor45:
            revert with 'NH{q', 18
        if stor37 > -((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) - 1:
            revert with 'NH{q', 17
        if stor37 + ((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) < stor37:
            revert with 0, 'SafeMath: addition overflow'
        return (stor37 + ((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45))
    if stor37 and stor42 > -1 / stor37:
        revert with 'NH{q', 17
    if not stor37:
        revert with 'NH{q', 18
    if stor37 * stor42 / stor37 != stor42:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor43 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor43:
        revert with 'NH{q', 18
    if stor37 > stor37 * stor42 / stor43:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor37 * stor42 / stor43 < stor37:
        revert with 'NH{q', 17
    if not (stor37 * stor42 / stor43) - stor37:
        if stor45 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor45:
            revert with 'NH{q', 18
        if stor37 > -(0 / stor45) - 1:
            revert with 'NH{q', 17
        if stor37 + (0 / stor45) < stor37:
            revert with 0, 'SafeMath: addition overflow'
        return (stor37 + (0 / stor45))
    if (stor37 * stor42 / stor43) - stor37 and stor44 + stor45 - block.timestamp > -1 / (stor37 * stor42 / stor43) - stor37:
        revert with 'NH{q', 17
    if not (stor37 * stor42 / stor43) - stor37:
        revert with 'NH{q', 18
    if (stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / (stor37 * stor42 / stor43) - stor37 != stor44 + stor45 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor45 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor45:
        revert with 'NH{q', 18
    if stor37 > -((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) - 1:
        revert with 'NH{q', 17
    if stor37 + ((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) < stor37:
        revert with 0, 'SafeMath: addition overflow'
    return (stor37 + ((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > -2:
        revert with 'NH{q', 17
    if launchedAt + 1 >= block.number:
        if 1 > stor38:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor38 < 1:
            revert with 'NH{q', 17
        return (stor38 - 1)
    if not arg1:
        return stor37
    if stor44 > -stor45 - 1:
        revert with 'NH{q', 17
    if stor44 + stor45 < stor44:
        revert with 0, 'SafeMath: addition overflow'
    if stor44 + stor45 <= block.timestamp:
        return stor37
    if stor44 > -stor45 - 1:
        revert with 'NH{q', 17
    if stor44 + stor45 < stor44:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor44 + stor45:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor44 + stor45 < block.timestamp:
        revert with 'NH{q', 17
    if not stor37:
        if stor43 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor43:
            revert with 'NH{q', 18
        if stor37 > 0 / stor43:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor43 < stor37:
            revert with 'NH{q', 17
        if not (0 / stor43) - stor37:
            if stor45 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor45:
                revert with 'NH{q', 18
            if stor37 > -(0 / stor45) - 1:
                revert with 'NH{q', 17
            if stor37 + (0 / stor45) < stor37:
                revert with 0, 'SafeMath: addition overflow'
            return (stor37 + (0 / stor45))
        if (0 / stor43) - stor37 and stor44 + stor45 - block.timestamp > -1 / (0 / stor43) - stor37:
            revert with 'NH{q', 17
        if not (0 / stor43) - stor37:
            revert with 'NH{q', 18
        if (stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / (0 / stor43) - stor37 != stor44 + stor45 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if stor45 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor45:
            revert with 'NH{q', 18
        if stor37 > -((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) - 1:
            revert with 'NH{q', 17
        if stor37 + ((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) < stor37:
            revert with 0, 'SafeMath: addition overflow'
        return (stor37 + ((stor44 * 0 / stor43) + (stor45 * 0 / stor43) - (block.timestamp * 0 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45))
    if stor37 and stor42 > -1 / stor37:
        revert with 'NH{q', 17
    if not stor37:
        revert with 'NH{q', 18
    if stor37 * stor42 / stor37 != stor42:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor43 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor43:
        revert with 'NH{q', 18
    if stor37 > stor37 * stor42 / stor43:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor37 * stor42 / stor43 < stor37:
        revert with 'NH{q', 17
    if not (stor37 * stor42 / stor43) - stor37:
        if stor45 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor45:
            revert with 'NH{q', 18
        if stor37 > -(0 / stor45) - 1:
            revert with 'NH{q', 17
        if stor37 + (0 / stor45) < stor37:
            revert with 0, 'SafeMath: addition overflow'
        return (stor37 + (0 / stor45))
    if (stor37 * stor42 / stor43) - stor37 and stor44 + stor45 - block.timestamp > -1 / (stor37 * stor42 / stor43) - stor37:
        revert with 'NH{q', 17
    if not (stor37 * stor42 / stor43) - stor37:
        revert with 'NH{q', 18
    if (stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / (stor37 * stor42 / stor43) - stor37 != stor44 + stor45 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor45 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor45:
        revert with 'NH{q', 18
    if stor37 > -((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) - 1:
        revert with 'NH{q', 17
    if stor37 + ((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45) < stor37:
        revert with 0, 'SafeMath: addition overflow'
    return (stor37 + ((stor44 * stor37 * stor42 / stor43) + (stor45 * stor37 * stor42 / stor43) - (block.timestamp * stor37 * stor42 / stor43) - (stor44 * stor37) - (stor45 * stor37) + (block.timestamp * stor37) / stor45))
}



}
