contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Catking', 0

const decimals = 9

const symbol = 'Catking', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WBNBAddress;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
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
uint256 stor20; offset 2
uint256 stor20;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint8 stor33;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
address stor40;
address distributorAddress;
uint256 stor42;
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
    return bool(stor33)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
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
    stor31 = 0
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
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor42 = arg1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
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
    stor12[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
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

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor33 = uint8(arg1)
    stor35 = arg2
    stor36 = 0
    stor37 = arg3
    stor38 = arg4
    stor39 = block.number
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
    stor29 = arg1
    stor30 = arg2
    stor32 = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor40)
    call stor40.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor26] and 2 > -1 / balanceOf[stor26]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor26] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor26] and 2 > -1 / balanceOf[stor26]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor26] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor26] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    stor19 = arg1 + arg2 + arg3 + arg4
    uint256(stor20.field_0) = arg5
    require stor19 < Mask(254, 0, stor20.field_2)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(stor40)
    if not arg2:
        call stor40.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor40.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor45 = 1
    mem[128] = WBNBAddress
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
    call routerAddress.0xb6f9de95 with:
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

function getMultipliedFee() {
    if launchedAtTimestamp > -86401:
        revert with 'NH{q', 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor19 and 5 * 3600 > -1 / stor19:
            revert with 'NH{q', 17
        if not uint256(stor20.field_0):
            revert with 'NH{q', 18
        return (5 * 3600 * stor19 / uint256(stor20.field_0))
    if stor31 > -stor32 - 1:
        revert with 'NH{q', 17
    if stor31 + stor32 <= block.timestamp:
        return stor19
    if stor31 > -stor32 - 1:
        revert with 'NH{q', 17
    if stor31 + stor32 < block.timestamp:
        revert with 'NH{q', 17
    if stor19 and stor29 > -1 / stor19:
        revert with 'NH{q', 17
    if not stor30:
        revert with 'NH{q', 18
    if stor19 * stor29 / stor30 < stor19:
        revert with 'NH{q', 17
    if (stor19 * stor29 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (stor19 * stor29 / stor30) - stor19:
        revert with 'NH{q', 17
    if not stor32:
        revert with 'NH{q', 18
    if stor19 > -((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) - 1:
        revert with 'NH{q', 17
    return (stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > -2:
        revert with 'NH{q', 17
    if launchedAt + 1 >= block.number:
        if uint256(stor20.field_0) < 1:
            revert with 'NH{q', 17
        return (uint256(stor20.field_0) - 1)
    if not arg1:
        return stor19
    if launchedAtTimestamp > -86401:
        revert with 'NH{q', 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor19 and 5 * 3600 > -1 / stor19:
            revert with 'NH{q', 17
        if not uint256(stor20.field_0):
            revert with 'NH{q', 18
        return (5 * 3600 * stor19 / uint256(stor20.field_0))
    if stor31 > -stor32 - 1:
        revert with 'NH{q', 17
    if stor31 + stor32 <= block.timestamp:
        return stor19
    if stor31 > -stor32 - 1:
        revert with 'NH{q', 17
    if stor31 + stor32 < block.timestamp:
        revert with 'NH{q', 17
    if stor19 and stor29 > -1 / stor19:
        revert with 'NH{q', 17
    if not stor30:
        revert with 'NH{q', 18
    if stor19 * stor29 / stor30 < stor19:
        revert with 'NH{q', 17
    if (stor19 * stor29 / stor30) - stor19 and stor31 + stor32 - block.timestamp > -1 / (stor19 * stor29 / stor30) - stor19:
        revert with 'NH{q', 17
    if not stor32:
        revert with 'NH{q', 18
    if stor19 > -((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32) - 1:
        revert with 'NH{q', 17
    return (stor19 + ((stor31 * stor19 * stor29 / stor30) + (stor32 * stor19 * stor29 / stor30) - (block.timestamp * stor19 * stor29 / stor30) - (stor31 * stor19) - (stor32 * stor19) + (block.timestamp * stor19) / stor32))
}



}
