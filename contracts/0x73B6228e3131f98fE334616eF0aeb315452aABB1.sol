contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Tom Brady', 0

const decimals = 4

const symbol = 'GOAT', 0


address owner;
mapping of uint8 stor1;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 totalFee;
uint256 stor21; offset 2
uint256 stor21;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor24;
uint256 stor25;
address routerAddress;
uint8 tradingOpen; offset 160
address pairAddress;
address stor28;
uint256 stor29;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
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

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxTxAmount = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 < 750000
    stor29 = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor13[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor24 = arg1
    stor25 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor14[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor15[address(arg1)] = uint8(arg2)
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

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
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

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxWalletToken = totalSupply * arg1 / 100
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(stor28)
    call stor28.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor17 = arg1
    stor18 = arg2
    stor19 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    totalFee = arg1 + arg2 + arg3
    uint256(stor21.field_0) = arg4
    require totalFee < Mask(254, 0, stor21.field_2)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor27] and 2 > -1 / balanceOf[stor27]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor27] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor27] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor27] and 2 > -1 / balanceOf[stor27]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor27] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor27] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 != this.address
    require arg1 != pairAddress
    stor16[address(arg1)] = uint8(arg2)
    require ext_code.size(stor28)
    if not arg2:
        call stor28.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor28.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
