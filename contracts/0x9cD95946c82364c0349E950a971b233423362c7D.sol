contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Gorilla Royale', 0

const totalSupply = 10^15

const decimals = 9

const symbol = 'GRT', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
address routerAddress;
address pairAddress;
address WBNBAddress;
address stor10;
address distributorAddress;
address DEADAddress;
address autoLiquidityReceiverAddress;
address sub_35776733Address;
address devFeeReceiverAddress;
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
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 antiSnipingTime;
uint256 stor43; offset 2
uint256 feeDenominator;
uint256 maxBuyAmount;
uint256 maxSellAmount;
uint256 swapThreshold;
uint256 stor47;
uint8 swapEnabled;
uint8 tradingOpen; offset 8
uint256 stor48; offset 8

function DEAD() {
    return DEADAddress
}

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function feeDenominator() {
    return feeDenominator
}

function sub_35776733(?) {
    return sub_35776733Address
}

function antiSnipingTime() {
    return antiSnipingTime
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function maxSellAmount() {
    return maxSellAmount
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBuyAmount() {
    return maxBuyAmount
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
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

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
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

function setBuyFee() {
    stor31 = stor16
    stor32 = stor17
    stor33 = stor18
    stor34 = stor19
    stor35 = stor20
}

function setSellFee() {
    stor31 = stor21
    stor32 = stor22
    stor33 = stor23
    stor34 = stor24
    stor35 = stor25
}

function sub_8f0e110b(?) {
    stor31 = stor26
    stor32 = stor27
    stor33 = stor28
    stor34 = stor29
    stor35 = stor30
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = 10^15
    emit Approval(10^15, msg.sender, arg1);
    return 1
}

function setBuyLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    require arg1 >= 10^10
    maxBuyAmount = arg1
}

function setSellLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    require arg1 >= 10^10
    maxSellAmount = arg1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    require arg1 < 750000
    stor47 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    if launchedAt:
        revert with 0, ''
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
    stor48 = 1
    swapEnabled = 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    stor3[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    stor4[address(arg1)] = uint8(arg2)
}

function claimDividend() {
    require ext_code.size(stor10)
    call stor10.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_445b694b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    routerAddress = address(arg1)
    pairAddress = address(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function removeSniperFromList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    if not stor6[address(arg1)]:
        revert with 0, 'Not a sniper'
    stor6[address(arg1)] = 0
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    autoLiquidityReceiverAddress = arg1
    sub_35776733Address = arg2
    devFeeReceiverAddress = arg3
}

function addSniperInList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    if arg1 == routerAddress:
        revert with 0, 'We can not blacklist the router'
    if stor6[address(arg1)]:
        revert with 0, 'Sniper already exists'
    stor6[address(arg1)] = 1
}

function sub_1961cee2(?) {
    require ext_code.size(stor10)
    staticcall stor10.totalDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    require ext_code.size(stor10)
    call stor10.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_86db0c05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.0x28fd3198 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_49bc3feb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.getPaidEarnings(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    require arg1 != this.address
    require arg1 != pairAddress
    stor5[address(arg1)] = uint8(arg2)
    require ext_code.size(stor10)
    if not arg2:
        call stor10.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor10.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_49525eb4(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    stor26 = arg1
    stor27 = arg2
    stor28 = arg3
    stor29 = arg4
    stor30 = arg5
    feeDenominator = arg6
    if stor26 > -stor27 - 1:
        revert with 'NH{q', 17
    if stor26 + stor27 > -stor28 - 1:
        revert with 'NH{q', 17
    if stor26 + stor27 + stor28 > -stor29 - 1:
        revert with 'NH{q', 17
    if stor26 + stor27 + stor28 + stor29 > stor43:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: Cannot be greater than max fee'
}

function sub_8e5416a2(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    stor24 = arg4
    stor25 = arg5
    feeDenominator = arg6
    if stor21 > -stor22 - 1:
        revert with 'NH{q', 17
    if stor21 + stor22 > -stor23 - 1:
        revert with 'NH{q', 17
    if stor21 + stor22 + stor23 > -stor24 - 1:
        revert with 'NH{q', 17
    if stor21 + stor22 + stor23 + stor24 > stor43:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: Cannot be greater than max fee'
}

function sub_bb6c2add(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'NOT THE OWNER'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
    stor19 = arg4
    stor20 = arg5
    feeDenominator = arg6
    if stor16 > -stor17 - 1:
        revert with 'NH{q', 17
    if stor16 + stor17 > -stor18 - 1:
        revert with 'NH{q', 17
    if stor16 + stor17 + stor18 > -stor19 - 1:
        revert with 'NH{q', 17
    if stor16 + stor17 + stor18 + stor19 > stor43:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: Cannot be greater than max fee'
}



}
