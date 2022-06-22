contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'CheemsToMars', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 totalSupply;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 swapThreshold;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
uint256 stor47;
uint8 autoBuybackEnabled;
uint8 autoBuybackMultiplier; offset 8
uint256 stor48; offset 16
uint256 stor48; offset 8
uint256 stor49;
uint256 stor50;
uint256 stor51;
uint256 stor52;
uint256 stor53;
address stor54;
uint256 stor55;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor56; offset 16
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingOpen;
uint8 swapEnabled; offset 8
uint8 stor61; offset 16
uint256 stor61; offset 8

function swapThreshold() {
    return swapThreshold
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

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
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

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function sub_08c839a6(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = 0
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor46 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function sub_4331066a(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = block.timestamp
    stor39 = arg1
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
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor55 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = arg1
    stor43 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_fb60a8d6(?) {
    if stor38 > !stor39:
        revert with 0, 17
    if stor38 + stor39 < stor38:
        revert with 0, 'SafeMath: addition overflow'
    if stor38 + stor39 <= block.timestamp:
        return 0
    return 1
}

function claimDividend() {
    require ext_code.size(stor54)
    call stor54.0x15f7e05e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    stor15[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17[address(arg1)] = uint8(arg2)
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

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor56 = Mask(240, 16, arg1) >> 16
}

function sub_e599a065(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor44 = arg1
    stor45 = arg2
    stor47 = arg3
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor61.field_8) = Mask(248, 0, arg1)
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 0, 17
    swapThreshold = totalSupply * arg2 / 10000
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor54)
    call stor54.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor54)
    staticcall stor54.0x28fd3198 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor49 = arg2
    stor50 = 0
    stor51 = arg3
    stor52 = arg4
    stor53 = block.number
    autoBuybackEnabled = uint8(arg1)
    Mask(248, 0, stor48.field_8) = Mask(248, 0, arg5)
    Mask(240, 0, stor48.field_16) = Mask(240, 16, arg1) >> 16
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not totalSupply:
        _maxWalletToken = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletToken = totalSupply * arg1 / 10000
}

function setBuyTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_33477327 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_33477327 = totalSupply * arg1 / 10000
}

function setSellTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_cf4be394 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
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
    require pairAddress != arg1
    stor18[address(arg1)] = uint8(arg2)
    require ext_code.size(stor54)
    if not arg2:
        call stor54.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor54.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor19 = arg1
    stor20 = arg2
    stor21 = arg3
    stor22 = arg4
    stor23 = arg5
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor24 = arg1 + arg2 + arg3 + arg4 + arg5
    stor37 = arg6
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
    stor28 = arg4
    stor29 = arg5
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor30 = arg1 + arg2 + arg3 + arg4 + arg5
    stor37 = arg6
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    uint8(stor61.field_16) = 1
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
    uint8(stor61.field_16) = 0
    if arg2:
        stor46 = block.timestamp
        emit BuybackMultiplierActive(stor47);
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[stor59]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if balanceOf[stor59] and 2 > -1 / balanceOf[stor59]:
        revert with 0, 17
    if not balanceOf[stor59]:
        revert with 0, 18
    if 2 * balanceOf[stor59] / balanceOf[stor59] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor59] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor59] / arg1 != 2 * balanceOf[stor59]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor59] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[stor59]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if balanceOf[stor59] and 2 > -1 / balanceOf[stor59]:
        revert with 0, 17
    if not balanceOf[stor59]:
        revert with 0, 18
    if 2 * balanceOf[stor59] / balanceOf[stor59] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor59] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor59] / arg2 != 2 * balanceOf[stor59]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor59] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor46 > !stor47:
        revert with 0, 17
    if stor46 + stor47 < stor46:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor46 + stor47:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor46 + stor47 < block.timestamp:
        revert with 0, 17
    if not stor36:
        if not stor45:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > 0 / stor45:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor45 < stor36:
            revert with 0, 17
        if not (0 / stor45) - stor36:
            if not stor47:
                revert with 0, 'SafeMath: division by zero', 0
            if stor36 > !(0 / stor47):
                revert with 0, 17
            if stor36 + (0 / stor47) < stor36:
                revert with 0, 'SafeMath: addition overflow'
            return (stor36 + (0 / stor47))
        if (0 / stor45) - stor36 and stor46 + stor47 - block.timestamp > -1 / (0 / stor45) - stor36:
            revert with 0, 17
        if not (0 / stor45) - stor36:
            revert with 0, 18
        if (stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / (0 / stor45) - stor36 != stor46 + stor47 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor47:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > !((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47):
            revert with 0, 17
        if stor36 + ((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47) < stor36:
            revert with 0, 'SafeMath: addition overflow'
        return (stor36 + ((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47))
    if stor36 and stor44 > -1 / stor36:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    if stor36 * stor44 / stor36 != stor44:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor45:
        revert with 0, 'SafeMath: division by zero', 0
    if stor36 > stor36 * stor44 / stor45:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor36 * stor44 / stor45 < stor36:
        revert with 0, 17
    if not (stor36 * stor44 / stor45) - stor36:
        if not stor47:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > !(0 / stor47):
            revert with 0, 17
        if stor36 + (0 / stor47) < stor36:
            revert with 0, 'SafeMath: addition overflow'
        return (stor36 + (0 / stor47))
    if (stor36 * stor44 / stor45) - stor36 and stor46 + stor47 - block.timestamp > -1 / (stor36 * stor44 / stor45) - stor36:
        revert with 0, 17
    if not (stor36 * stor44 / stor45) - stor36:
        revert with 0, 18
    if (stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / (stor36 * stor44 / stor45) - stor36 != stor46 + stor47 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor47:
        revert with 0, 'SafeMath: division by zero', 0
    if stor36 > !((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47):
        revert with 0, 17
    if stor36 + ((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47) < stor36:
        revert with 0, 'SafeMath: addition overflow'
    return (stor36 + ((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > !stor40:
        revert with 0, 17
    if launchedAt + stor40 >= block.number:
        if 1 > stor37:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor37 < 1:
            revert with 0, 17
        return (stor37 - 1)
    if not arg1:
        return stor36
    if stor46 > !stor47:
        revert with 0, 17
    if stor46 + stor47 < stor46:
        revert with 0, 'SafeMath: addition overflow'
    if stor46 + stor47 <= block.timestamp:
        return stor36
    if stor46 > !stor47:
        revert with 0, 17
    if stor46 + stor47 < stor46:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor46 + stor47:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor46 + stor47 < block.timestamp:
        revert with 0, 17
    if not stor36:
        if not stor45:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > 0 / stor45:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor45 < stor36:
            revert with 0, 17
        if not (0 / stor45) - stor36:
            if not stor47:
                revert with 0, 'SafeMath: division by zero', 0
            if stor36 > !(0 / stor47):
                revert with 0, 17
            if stor36 + (0 / stor47) < stor36:
                revert with 0, 'SafeMath: addition overflow'
            return (stor36 + (0 / stor47))
        if (0 / stor45) - stor36 and stor46 + stor47 - block.timestamp > -1 / (0 / stor45) - stor36:
            revert with 0, 17
        if not (0 / stor45) - stor36:
            revert with 0, 18
        if (stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / (0 / stor45) - stor36 != stor46 + stor47 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor47:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > !((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47):
            revert with 0, 17
        if stor36 + ((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47) < stor36:
            revert with 0, 'SafeMath: addition overflow'
        return (stor36 + ((stor46 * 0 / stor45) + (stor47 * 0 / stor45) - (block.timestamp * 0 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47))
    if stor36 and stor44 > -1 / stor36:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    if stor36 * stor44 / stor36 != stor44:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor45:
        revert with 0, 'SafeMath: division by zero', 0
    if stor36 > stor36 * stor44 / stor45:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor36 * stor44 / stor45 < stor36:
        revert with 0, 17
    if not (stor36 * stor44 / stor45) - stor36:
        if not stor47:
            revert with 0, 'SafeMath: division by zero', 0
        if stor36 > !(0 / stor47):
            revert with 0, 17
        if stor36 + (0 / stor47) < stor36:
            revert with 0, 'SafeMath: addition overflow'
        return (stor36 + (0 / stor47))
    if (stor36 * stor44 / stor45) - stor36 and stor46 + stor47 - block.timestamp > -1 / (stor36 * stor44 / stor45) - stor36:
        revert with 0, 17
    if not (stor36 * stor44 / stor45) - stor36:
        revert with 0, 18
    if (stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / (stor36 * stor44 / stor45) - stor36 != stor46 + stor47 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor47:
        revert with 0, 'SafeMath: division by zero', 0
    if stor36 > !((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47):
        revert with 0, 17
    if stor36 + ((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47) < stor36:
        revert with 0, 'SafeMath: addition overflow'
    return (stor36 + ((stor46 * stor36 * stor44 / stor45) + (stor47 * stor36 * stor44 / stor45) - (block.timestamp * stor36 * stor44 / stor45) - (stor46 * stor36) - (stor47 * stor36) + (block.timestamp * stor36) / stor47))
}



}
