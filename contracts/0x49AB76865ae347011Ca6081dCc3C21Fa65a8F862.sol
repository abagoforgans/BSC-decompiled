contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Eln Sonata', 0

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint8 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
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
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor32;
uint256 stor33;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint8 autoBuybackEnabled;
uint8 autoBuybackMultiplier; offset 8
uint256 stor41; offset 16
uint256 stor41; offset 8
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
address stor47;
uint256 stor48;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor51;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function devFeeReceiver() {
    return devFeeReceiverAddress
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor39 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
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
    stor48 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor32 = arg1
    stor33 = arg2
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
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor47)
    call stor47.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if stor9[address(arg1)]:
        revert with 0, 'user is already blacklisted'
    stor9[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not stor9[address(arg1)]:
        revert with 0, 'user already whitelisted'
    stor9[address(arg1)] = 0
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
    stor37 = arg1
    stor38 = arg2
    stor40 = arg3
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor47)
    call stor47.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor47)
    staticcall stor47.0x28fd3198 with:
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[msg.sender] < arg1:
        revert with 0, 17
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = arg2
    stor43 = 0
    stor44 = arg3
    stor45 = arg4
    stor46 = block.number
    autoBuybackEnabled = uint8(arg1)
    Mask(248, 0, stor41.field_8) = Mask(248, 0, arg5)
    Mask(240, 0, stor41.field_16) = Mask(240, 16, arg1) >> 16
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
    require ext_code.size(stor47)
    if not arg2:
        call stor47.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor47.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8d82371b(?) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
    stor24 = arg2
    stor25 = arg3
    stor26 = arg4
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
    stor27 = arg1 + arg2 + arg3 + arg4 + arg5
    stor28 = arg6
}

function sub_fc1385d8(?) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor19 = arg4
    stor18 = arg5
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
    stor20 = arg1 + arg2 + arg3 + arg4 + arg5
    stor21 = arg6
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor51 = 1
    if stor9[stor4]:
        revert with 0, 'User is blacklisted'
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
    stor51 = 0
    if arg2:
        stor39 = block.timestamp
        emit BuybackMultiplierActive(stor40);
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
    if not balanceOf[stor35]:
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
    if balanceOf[stor35] and 2 > -1 / balanceOf[stor35]:
        revert with 0, 17
    if not balanceOf[stor35]:
        revert with 0, 18
    if 2 * balanceOf[stor35] / balanceOf[stor35] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor35] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor35] / arg1 != 2 * balanceOf[stor35]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor35] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
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
    if not balanceOf[stor35]:
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
    if balanceOf[stor35] and 2 > -1 / balanceOf[stor35]:
        revert with 0, 17
    if not balanceOf[stor35]:
        revert with 0, 18
    if 2 * balanceOf[stor35] / balanceOf[stor35] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor35] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor35] / arg2 != 2 * balanceOf[stor35]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor35] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor39 > !stor40:
        revert with 0, 17
    if stor39 + stor40 < stor39:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor39 + stor40:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor39 + stor40 < block.timestamp:
        revert with 0, 17
    if not stor20:
        if not stor38:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > 0 / stor38:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor38 < stor20:
            revert with 0, 17
        if not (0 / stor38) - stor20:
            if not stor40:
                revert with 0, 'SafeMath: division by zero', 0
            if stor20 > !(0 / stor40):
                revert with 0, 17
            if stor20 + (0 / stor40) < stor20:
                revert with 0, 'SafeMath: addition overflow'
            return (stor20 + (0 / stor40))
        if (0 / stor38) - stor20 and stor39 + stor40 - block.timestamp > -1 / (0 / stor38) - stor20:
            revert with 0, 17
        if not (0 / stor38) - stor20:
            revert with 0, 18
        if (stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / (0 / stor38) - stor20 != stor39 + stor40 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor40:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > !((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40):
            revert with 0, 17
        if stor20 + ((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40) < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (stor20 + ((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40))
    if stor20 and stor37 > -1 / stor20:
        revert with 0, 17
    if not stor20:
        revert with 0, 18
    if stor20 * stor37 / stor20 != stor37:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor38:
        revert with 0, 'SafeMath: division by zero', 0
    if stor20 > stor20 * stor37 / stor38:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor20 * stor37 / stor38 < stor20:
        revert with 0, 17
    if not (stor20 * stor37 / stor38) - stor20:
        if not stor40:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > !(0 / stor40):
            revert with 0, 17
        if stor20 + (0 / stor40) < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (stor20 + (0 / stor40))
    if (stor20 * stor37 / stor38) - stor20 and stor39 + stor40 - block.timestamp > -1 / (stor20 * stor37 / stor38) - stor20:
        revert with 0, 17
    if not (stor20 * stor37 / stor38) - stor20:
        revert with 0, 18
    if (stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / (stor20 * stor37 / stor38) - stor20 != stor39 + stor40 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor40:
        revert with 0, 'SafeMath: division by zero', 0
    if stor20 > !((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40):
        revert with 0, 17
    if stor20 + ((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40) < stor20:
        revert with 0, 'SafeMath: addition overflow'
    return (stor20 + ((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if 1 > stor28:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor28 < 1:
            revert with 0, 17
        return (stor28 - 1)
    if not arg1:
        return stor27
    if stor39 > !stor40:
        revert with 0, 17
    if stor39 + stor40 < stor39:
        revert with 0, 'SafeMath: addition overflow'
    if stor39 + stor40 <= block.timestamp:
        return stor27
    if stor39 > !stor40:
        revert with 0, 17
    if stor39 + stor40 < stor39:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor39 + stor40:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor39 + stor40 < block.timestamp:
        revert with 0, 17
    if not stor20:
        if not stor38:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > 0 / stor38:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor38 < stor20:
            revert with 0, 17
        if not (0 / stor38) - stor20:
            if not stor40:
                revert with 0, 'SafeMath: division by zero', 0
            if stor20 > !(0 / stor40):
                revert with 0, 17
            if stor20 + (0 / stor40) < stor20:
                revert with 0, 'SafeMath: addition overflow'
            return (stor20 + (0 / stor40))
        if (0 / stor38) - stor20 and stor39 + stor40 - block.timestamp > -1 / (0 / stor38) - stor20:
            revert with 0, 17
        if not (0 / stor38) - stor20:
            revert with 0, 18
        if (stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / (0 / stor38) - stor20 != stor39 + stor40 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor40:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > !((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40):
            revert with 0, 17
        if stor20 + ((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40) < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (stor20 + ((stor39 * 0 / stor38) + (stor40 * 0 / stor38) - (block.timestamp * 0 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40))
    if stor20 and stor37 > -1 / stor20:
        revert with 0, 17
    if not stor20:
        revert with 0, 18
    if stor20 * stor37 / stor20 != stor37:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor38:
        revert with 0, 'SafeMath: division by zero', 0
    if stor20 > stor20 * stor37 / stor38:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor20 * stor37 / stor38 < stor20:
        revert with 0, 17
    if not (stor20 * stor37 / stor38) - stor20:
        if not stor40:
            revert with 0, 'SafeMath: division by zero', 0
        if stor20 > !(0 / stor40):
            revert with 0, 17
        if stor20 + (0 / stor40) < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (stor20 + (0 / stor40))
    if (stor20 * stor37 / stor38) - stor20 and stor39 + stor40 - block.timestamp > -1 / (stor20 * stor37 / stor38) - stor20:
        revert with 0, 17
    if not (stor20 * stor37 / stor38) - stor20:
        revert with 0, 18
    if (stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / (stor20 * stor37 / stor38) - stor20 != stor39 + stor40 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor40:
        revert with 0, 'SafeMath: division by zero', 0
    if stor20 > !((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40):
        revert with 0, 17
    if stor20 + ((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40) < stor20:
        revert with 0, 'SafeMath: addition overflow'
    return (stor20 + ((stor39 * stor20 * stor37 / stor38) + (stor40 * stor20 * stor37 / stor38) - (block.timestamp * stor20 * stor37 / stor38) - (stor39 * stor20) - (stor40 * stor20) + (block.timestamp * stor20) / stor40))
}



}
