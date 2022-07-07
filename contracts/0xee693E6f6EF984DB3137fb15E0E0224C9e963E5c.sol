contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Cupid Billionaire', 0

const decimals = 9

const symbol = 'Cupid Billionaire', 0


address owner;
address stor1;
uint256 unlockTime;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 liquidityFee;
uint256 devFee;
uint256 marketingFee;
uint256 buybackFee;
uint256 totalFee;
uint256 sub_ea19e4a8;
uint256 sub_6533e393;
uint256 sub_7fbcedff;
uint256 sub_e9563dfd;
uint256 sub_391e73a3;
uint256 sub_e99090c1;
uint256 sub_ab00d68d;
uint256 sub_6d796e88;
uint256 sub_fc44ed48;
uint256 sub_7724555f;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 checkMaxWalletToken;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
address sub_84b1d1efAddress;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor34; offset 160
address pairAddress;
uint256 checkSwapThreshold;
uint256 maxSwapSize;
uint256 tokensToSell;
uint8 stor38;

function swapThreshold() {
    return checkSwapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1898cab2(?) {
    return sub_33477327
}

function totalFee() {
    return totalFee
}

function sub_33477327(?) {
    return sub_33477327
}

function sub_391e73a3(?) {
    return sub_391e73a3
}

function buybackFee() {
    return buybackFee
}

function tokensToSell() {
    return tokensToSell
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function maxSwapSize() {
    return maxSwapSize
}

function sub_541b4de7(?) {
    return sub_cf4be394
}

function getUnlockTime() {
    return unlockTime
}

function sub_6533e393(?) {
    return sub_6533e393
}

function devFee() {
    return devFee
}

function marketingFee() {
    return marketingFee
}

function checkSwapThreshold() {
    return checkSwapThreshold
}

function sub_6d796e88(?) {
    return sub_6d796e88
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7724555f(?) {
    return sub_7724555f
}

function _maxWalletToken() {
    return checkMaxWalletToken
}

function sub_7fbcedff(?) {
    return sub_7fbcedff
}

function sub_84b1d1ef(?) {
    return sub_84b1d1efAddress
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_ab00d68d(?) {
    return sub_ab00d68d
}

function checkMaxWalletToken() {
    return checkMaxWalletToken
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_cf4be394(?) {
    return sub_cf4be394
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

function sub_e9563dfd(?) {
    return sub_e9563dfd
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_e99090c1(?) {
    return sub_e99090c1
}

function sub_ea19e4a8(?) {
    return sub_ea19e4a8
}

function router() {
    return routerAddress
}

function sub_fc44ed48(?) {
    return sub_fc44ed48
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor38)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor9[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_154d4abb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 'NH{q', 17
    sub_33477327 = totalSupply / 1000 * arg1
}

function sub_96c99f5b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 'NH{q', 17
    sub_cf4be394 = totalSupply / 1000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 'NH{q', 17
    checkMaxWalletToken = totalSupply / 1000 * arg1
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!OWNER'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    sub_84b1d1efAddress = arg3
    devFeeReceiverAddress = arg4
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor34 = Mask(96, 0, arg1)
    if totalSupply / 10000 and arg2 > -1 / totalSupply / 10000:
        revert with 'NH{q', 17
    checkSwapThreshold = totalSupply / 10000 * arg2
    if totalSupply / 10000 and arg3 > -1 / totalSupply / 10000:
        revert with 'NH{q', 17
    maxSwapSize = totalSupply / 10000 * arg3
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_ea19e4a8 = arg1
    sub_e9563dfd = arg2
    sub_7fbcedff = arg3
    sub_6533e393 = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    sub_391e73a3 = arg1 + arg2 + arg3 + arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_e99090c1 = arg1
    sub_fc44ed48 = arg2
    sub_6d796e88 = arg3
    sub_ab00d68d = arg4
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    sub_7724555f = arg1 + arg2 + arg3 + arg4
}



}
