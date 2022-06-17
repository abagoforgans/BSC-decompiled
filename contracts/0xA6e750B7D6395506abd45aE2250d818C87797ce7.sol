contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 2

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingOpen;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint8 autoBuybackEnabled;
uint8 autoBuybackMultiplier; offset 8
uint256 stor33; offset 16
uint256 stor33; offset 8
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
address stor39;
uint256 stor40;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor41; offset 16
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor45;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
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

function _maxTxAmount() {
    return _maxTxAmount
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor31 = 0
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
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor40 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
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

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor39)
    call stor39.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxWalletToken = totalSupply * arg1 / 100
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor41 = Mask(240, 16, arg1) >> 16
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

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor29 = arg1
    stor30 = arg2
    stor32 = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor39)
    call stor39.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor39)
    staticcall stor39.0x28fd3198 with:
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
    stor34 = arg2
    stor35 = 0
    stor36 = arg3
    stor37 = arg4
    stor38 = block.number
    autoBuybackEnabled = uint8(arg1)
    Mask(248, 0, stor33.field_8) = Mask(248, 0, arg5)
    Mask(240, 0, stor33.field_16) = Mask(240, 16, arg1) >> 16
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
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
    stor19 = arg1 + arg2 + arg3 + arg4
    stor20 = arg5
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(stor39)
    if not arg2:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor39.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor45 = 1
    mem[128] = stor3
    mem[160] = this.address
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor45 = 0
    if arg2:
        stor31 = block.timestamp
        emit BuybackMultiplierActive(stor32);
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
    if not balanceOf[stor26]:
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
    if balanceOf[stor26] and 2 > -1 / balanceOf[stor26]:
        revert with 0, 17
    if not balanceOf[stor26]:
        revert with 0, 18
    if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor26] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor26] / arg1 != 2 * balanceOf[stor26]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
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
    if not balanceOf[stor26]:
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
    if balanceOf[stor26] and 2 > -1 / balanceOf[stor26]:
        revert with 0, 17
    if not balanceOf[stor26]:
        revert with 0, 18
    if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor26] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor26] / arg2 != 2 * balanceOf[stor26]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor31 > !stor32:
        revert with 0, 17
    if stor31 + stor32 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor31 + stor32:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor31 + stor32 < block.timestamp:
        revert with 0, 17
    if not stor19:
        if not stor30:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > 0 / stor30:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor30 < stor19:
            revert with 0, 17
        if not (0 / stor30) - stor19:
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            if stor19 > !(0 / stor32):
                revert with 0, 17
            if stor19 + (0 / stor32) < stor19:
                revert with 0, 'SafeMath: addition overflow'
            return (stor19 + (0 / stor32))
        if (0 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (0 / stor30) - stor19:
            revert with 0, 17
        if not (0 / stor30) - stor19:
            revert with 0, 18
        if (stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / (0 / stor30) - stor19 != stor31 + stor32 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > !((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32):
            revert with 0, 17
        if stor19 + ((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (stor19 + ((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
    if stor19 and stor29 > -1 / stor19:
        revert with 0, 17
    if not stor19:
        revert with 0, 18
    if stor19 * stor29 / stor19 != stor29:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor30:
        revert with 0, 'SafeMath: division by zero', 0
    if stor19 > stor19 * stor29 / stor30:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor19 * stor29 / stor30 < stor19:
        revert with 0, 17
    if not (stor19 * stor29 / stor30) - stor19:
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > !(0 / stor32):
            revert with 0, 17
        if stor19 + (0 / stor32) < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (stor19 + (0 / stor32))
    if (stor19 * stor29 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (stor19 * stor29 / stor30) - stor19:
        revert with 0, 17
    if not (stor19 * stor29 / stor30) - stor19:
        revert with 0, 18
    if (stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / (stor19 * stor29 / stor30) - stor19 != stor31 + stor32 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor32:
        revert with 0, 'SafeMath: division by zero', 0
    if stor19 > !((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32):
        revert with 0, 17
    if stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) < stor19:
        revert with 0, 'SafeMath: addition overflow'
    return (stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if 1 > stor20:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor20 < 1:
            revert with 0, 17
        return (stor20 - 1)
    if not arg1:
        return stor19
    if stor31 > !stor32:
        revert with 0, 17
    if stor31 + stor32 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if stor31 + stor32 <= block.timestamp:
        return stor19
    if stor31 > !stor32:
        revert with 0, 17
    if stor31 + stor32 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor31 + stor32:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor31 + stor32 < block.timestamp:
        revert with 0, 17
    if not stor19:
        if not stor30:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > 0 / stor30:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor30 < stor19:
            revert with 0, 17
        if not (0 / stor30) - stor19:
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            if stor19 > !(0 / stor32):
                revert with 0, 17
            if stor19 + (0 / stor32) < stor19:
                revert with 0, 'SafeMath: addition overflow'
            return (stor19 + (0 / stor32))
        if (0 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (0 / stor30) - stor19:
            revert with 0, 17
        if not (0 / stor30) - stor19:
            revert with 0, 18
        if (stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / (0 / stor30) - stor19 != stor31 + stor32 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > !((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32):
            revert with 0, 17
        if stor19 + ((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (stor19 + ((stor31 * 0 / stor30) + (stor32 * 0 / stor30) - (block.timestamp * 0 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
    if stor19 and stor29 > -1 / stor19:
        revert with 0, 17
    if not stor19:
        revert with 0, 18
    if stor19 * stor29 / stor19 != stor29:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor30:
        revert with 0, 'SafeMath: division by zero', 0
    if stor19 > stor19 * stor29 / stor30:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor19 * stor29 / stor30 < stor19:
        revert with 0, 17
    if not (stor19 * stor29 / stor30) - stor19:
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if stor19 > !(0 / stor32):
            revert with 0, 17
        if stor19 + (0 / stor32) < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (stor19 + (0 / stor32))
    if (stor19 * stor29 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (stor19 * stor29 / stor30) - stor19:
        revert with 0, 17
    if not (stor19 * stor29 / stor30) - stor19:
        revert with 0, 18
    if (stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / (stor19 * stor29 / stor30) - stor19 != stor31 + stor32 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor32:
        revert with 0, 'SafeMath: division by zero', 0
    if stor19 > !((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32):
        revert with 0, 17
    if stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) < stor19:
        revert with 0, 'SafeMath: addition overflow'
    return (stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
}



}
