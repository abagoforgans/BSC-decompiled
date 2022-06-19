contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = '', 0

const decimals = 18

const symbol = '', 0

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
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor22;
uint256 stor23;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint8 autoBuybackEnabled;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
address stor39;
address distributorAddress;
uint256 stor41;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor44;

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
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor30 = 0
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

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor41 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
    stor23 = arg2
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

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
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

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor28 = arg1
    stor29 = arg2
    stor31 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor34 = arg2
    stor35 = 0
    stor36 = arg3
    stor37 = arg4
    stor38 = block.number
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    stor15 = arg2
    stor16 = arg3
    stor17 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    stor18 = arg1 + arg2 + arg3 + arg4
    stor19 = arg5
    require stor18 < arg5 / 4
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor25] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor25] and 2 > -1 / balanceOf[stor25]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor25] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function sub_76fb5a6c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require address(arg1) != this.address
    require pairAddress != address(arg1)
    stor13[address(arg1)] = uint8(bool(arg2))
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

function sub_03b33790(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = 1
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
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = 0
    if arg2:
        stor30 = block.timestamp
        emit BuybackMultiplierActive(stor31);
}

function getMultipliedFee() {
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor18 and 5 * 3600 > -1 / stor18:
            revert with 0, 17
        if not stor19:
            revert with 0, 18
        return (5 * 3600 * stor18 / stor19)
    if stor30 > !stor31:
        revert with 0, 17
    if stor30 + stor31 <= block.timestamp:
        return stor18
    if stor30 > !stor31:
        revert with 0, 17
    if stor30 + stor31 < block.timestamp:
        revert with 0, 17
    if stor18 and stor28 > -1 / stor18:
        revert with 0, 17
    if not stor29:
        revert with 0, 18
    if stor18 * stor28 / stor29 < stor18:
        revert with 0, 17
    if (stor18 * stor28 / stor29) - stor18 and stor30 + stor31 - block.timestamp > -1 / (stor18 * stor28 / stor29) - stor18:
        revert with 0, 17
    if not stor31:
        revert with 0, 18
    if stor18 > !((stor30 * stor18 * stor28 / stor29) + (stor31 * stor18 * stor28 / stor29) - (block.timestamp * stor18 * stor28 / stor29) - (stor30 * stor18) - (stor31 * stor18) + (block.timestamp * stor18) / stor31):
        revert with 0, 17
    return (stor18 + ((stor30 * stor18 * stor28 / stor29) + (stor31 * stor18 * stor28 / stor29) - (block.timestamp * stor18 * stor28 / stor29) - (stor30 * stor18) - (stor31 * stor18) + (block.timestamp * stor18) / stor31))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if stor19 < 1:
            revert with 0, 17
        return (stor19 - 1)
    if not arg1:
        return stor18
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor18 and 5 * 3600 > -1 / stor18:
            revert with 0, 17
        if not stor19:
            revert with 0, 18
        return (5 * 3600 * stor18 / stor19)
    if stor30 > !stor31:
        revert with 0, 17
    if stor30 + stor31 <= block.timestamp:
        return stor18
    if stor30 > !stor31:
        revert with 0, 17
    if stor30 + stor31 < block.timestamp:
        revert with 0, 17
    if stor18 and stor28 > -1 / stor18:
        revert with 0, 17
    if not stor29:
        revert with 0, 18
    if stor18 * stor28 / stor29 < stor18:
        revert with 0, 17
    if (stor18 * stor28 / stor29) - stor18 and stor30 + stor31 - block.timestamp > -1 / (stor18 * stor28 / stor29) - stor18:
        revert with 0, 17
    if not stor31:
        revert with 0, 18
    if stor18 > !((stor30 * stor18 * stor28 / stor29) + (stor31 * stor18 * stor28 / stor29) - (block.timestamp * stor18 * stor28 / stor29) - (stor30 * stor18) - (stor31 * stor18) + (block.timestamp * stor18) / stor31):
        revert with 0, 17
    return (stor18 + ((stor30 * stor18 * stor28 / stor29) + (stor31 * stor18 * stor28 / stor29) - (block.timestamp * stor18 * stor28 / stor29) - (stor30 * stor18) - (stor31 * stor18) + (block.timestamp * stor18) / stor31))
}



}
