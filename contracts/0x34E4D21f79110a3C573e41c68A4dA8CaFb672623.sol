contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'RedFarmFloki', 0

const decimals = 9

const symbol = 'REDFARM', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
uint256 totalSupply;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
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
uint256 stor31;
uint256 stor32;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor35;
uint256 stor36;
uint8 tradingOpen;
address routerAddress; offset 8
address pairAddress;
uint256 deadBlocks;
uint256 launchedAt;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint8 autoBuybackEnabled;
uint8 autoBuybackMultiplier; offset 8
uint256 stor45; offset 16
uint256 stor45; offset 8
uint256 stor46;
uint256 stor47;
uint256 stor48;
uint256 stor49;
uint256 stor50;
address stor51;
uint256 stor52;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor55;

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

function deadBlocks() {
    return deadBlocks
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
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
    stor43 = 0
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
    stor52 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor35 = arg1
    stor36 = arg2
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

function blacklistAddress(address arg1, bool arg2) {
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
    stor13[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor51)
    call stor51.claimDividend(address arg1) with:
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

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
    if uint8(arg1):
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
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
    stor41 = arg1
    stor42 = arg2
    stor44 = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor51)
    call stor51.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor51)
    staticcall stor51.0x28fd3198 with:
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
    stor46 = arg2
    stor47 = 0
    stor48 = arg3
    stor49 = arg4
    stor50 = block.number
    autoBuybackEnabled = uint8(arg1)
    Mask(248, 0, stor45.field_8) = Mask(248, 0, arg5)
    Mask(240, 0, stor45.field_16) = Mask(240, 16, arg1) >> 16
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
        sub_33477327 = totalSupply * arg1 / 100
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
        sub_cf4be394 = totalSupply * arg1 / 100
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
    stor19 = arg4
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
    stor20 = arg1 + arg2 + arg3 + arg4
    stor32 = arg5
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    stor24 = arg4
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
    stor25 = arg1 + arg2 + arg3 + arg4
    stor32 = arg5
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
    require ext_code.size(stor51)
    if not arg2:
        call stor51.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor51.setShare(address arg1, uint256 arg2) with:
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
    stor55 = 1
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
    stor55 = 0
    if arg2:
        stor43 = block.timestamp
        emit BuybackMultiplierActive(stor44);
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
    if not balanceOf[stor38]:
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
    if balanceOf[stor38] and 2 > -1 / balanceOf[stor38]:
        revert with 0, 17
    if not balanceOf[stor38]:
        revert with 0, 18
    if 2 * balanceOf[stor38] / balanceOf[stor38] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor38] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor38] / arg1 != 2 * balanceOf[stor38]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor38] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
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
    if not balanceOf[stor38]:
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
    if balanceOf[stor38] and 2 > -1 / balanceOf[stor38]:
        revert with 0, 17
    if not balanceOf[stor38]:
        revert with 0, 18
    if 2 * balanceOf[stor38] / balanceOf[stor38] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor38] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor38] / arg2 != 2 * balanceOf[stor38]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor38] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor43 > !stor44:
        revert with 0, 17
    if stor43 + stor44 < stor43:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor43 + stor44:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor43 + stor44 < block.timestamp:
        revert with 0, 17
    if not stor31:
        if not stor42:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > 0 / stor42:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor42 < stor31:
            revert with 0, 17
        if not (0 / stor42) - stor31:
            if not stor44:
                revert with 0, 'SafeMath: division by zero', 0
            if stor31 > !(0 / stor44):
                revert with 0, 17
            if stor31 + (0 / stor44) < stor31:
                revert with 0, 'SafeMath: addition overflow'
            return (stor31 + (0 / stor44))
        if (0 / stor42) - stor31 and stor43 + stor44 - block.timestamp > -1 / (0 / stor42) - stor31:
            revert with 0, 17
        if not (0 / stor42) - stor31:
            revert with 0, 18
        if (stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / (0 / stor42) - stor31 != stor43 + stor44 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor44:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > !((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44):
            revert with 0, 17
        if stor31 + ((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44) < stor31:
            revert with 0, 'SafeMath: addition overflow'
        return (stor31 + ((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44))
    if stor31 and stor41 > -1 / stor31:
        revert with 0, 17
    if not stor31:
        revert with 0, 18
    if stor31 * stor41 / stor31 != stor41:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor42:
        revert with 0, 'SafeMath: division by zero', 0
    if stor31 > stor31 * stor41 / stor42:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor31 * stor41 / stor42 < stor31:
        revert with 0, 17
    if not (stor31 * stor41 / stor42) - stor31:
        if not stor44:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > !(0 / stor44):
            revert with 0, 17
        if stor31 + (0 / stor44) < stor31:
            revert with 0, 'SafeMath: addition overflow'
        return (stor31 + (0 / stor44))
    if (stor31 * stor41 / stor42) - stor31 and stor43 + stor44 - block.timestamp > -1 / (stor31 * stor41 / stor42) - stor31:
        revert with 0, 17
    if not (stor31 * stor41 / stor42) - stor31:
        revert with 0, 18
    if (stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / (stor31 * stor41 / stor42) - stor31 != stor43 + stor44 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor44:
        revert with 0, 'SafeMath: division by zero', 0
    if stor31 > !((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44):
        revert with 0, 17
    if stor31 + ((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44) < stor31:
        revert with 0, 'SafeMath: addition overflow'
    return (stor31 + ((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if 1 > stor32:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor32 < 1:
            revert with 0, 17
        return (stor32 - 1)
    if not arg1:
        return stor31
    if stor43 > !stor44:
        revert with 0, 17
    if stor43 + stor44 < stor43:
        revert with 0, 'SafeMath: addition overflow'
    if stor43 + stor44 <= block.timestamp:
        return stor31
    if stor43 > !stor44:
        revert with 0, 17
    if stor43 + stor44 < stor43:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor43 + stor44:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor43 + stor44 < block.timestamp:
        revert with 0, 17
    if not stor31:
        if not stor42:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > 0 / stor42:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor42 < stor31:
            revert with 0, 17
        if not (0 / stor42) - stor31:
            if not stor44:
                revert with 0, 'SafeMath: division by zero', 0
            if stor31 > !(0 / stor44):
                revert with 0, 17
            if stor31 + (0 / stor44) < stor31:
                revert with 0, 'SafeMath: addition overflow'
            return (stor31 + (0 / stor44))
        if (0 / stor42) - stor31 and stor43 + stor44 - block.timestamp > -1 / (0 / stor42) - stor31:
            revert with 0, 17
        if not (0 / stor42) - stor31:
            revert with 0, 18
        if (stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / (0 / stor42) - stor31 != stor43 + stor44 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor44:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > !((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44):
            revert with 0, 17
        if stor31 + ((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44) < stor31:
            revert with 0, 'SafeMath: addition overflow'
        return (stor31 + ((stor43 * 0 / stor42) + (stor44 * 0 / stor42) - (block.timestamp * 0 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44))
    if stor31 and stor41 > -1 / stor31:
        revert with 0, 17
    if not stor31:
        revert with 0, 18
    if stor31 * stor41 / stor31 != stor41:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor42:
        revert with 0, 'SafeMath: division by zero', 0
    if stor31 > stor31 * stor41 / stor42:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor31 * stor41 / stor42 < stor31:
        revert with 0, 17
    if not (stor31 * stor41 / stor42) - stor31:
        if not stor44:
            revert with 0, 'SafeMath: division by zero', 0
        if stor31 > !(0 / stor44):
            revert with 0, 17
        if stor31 + (0 / stor44) < stor31:
            revert with 0, 'SafeMath: addition overflow'
        return (stor31 + (0 / stor44))
    if (stor31 * stor41 / stor42) - stor31 and stor43 + stor44 - block.timestamp > -1 / (stor31 * stor41 / stor42) - stor31:
        revert with 0, 17
    if not (stor31 * stor41 / stor42) - stor31:
        revert with 0, 18
    if (stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / (stor31 * stor41 / stor42) - stor31 != stor43 + stor44 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor44:
        revert with 0, 'SafeMath: division by zero', 0
    if stor31 > !((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44):
        revert with 0, 17
    if stor31 + ((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44) < stor31:
        revert with 0, 'SafeMath: addition overflow'
    return (stor31 + ((stor43 * stor31 * stor41 / stor42) + (stor44 * stor31 * stor41 / stor42) - (block.timestamp * stor31 * stor41 / stor42) - (stor43 * stor31) - (stor44 * stor31) + (block.timestamp * stor31) / stor44))
}



}
