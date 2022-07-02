contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


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
uint256 teamFee;
uint256 totalFee;
uint256 sub_ea19e4a8;
uint256 sub_6533e393;
uint256 sub_7fbcedff;
uint256 sub_4328361e;
uint256 sub_391e73a3;
uint256 sub_e99090c1;
uint256 sub_ab00d68d;
uint256 sub_6d796e88;
uint256 sub_7760ad4b;
uint256 sub_7724555f;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 checkMaxWalletToken;
address stor29;
address stor30;
address stor31;
address stor32;
address stor34;
uint8 swapEnabled; offset 160
uint128 stor35; offset 160
uint256 checkSwapThreshold;
uint256 maxSwapSize;
uint256 tokensToSell;
uint8 stor39;

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

function tokensToSell() {
    return tokensToSell
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function sub_4328361e(?) {
    return sub_4328361e
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
    return bool(uint8(swapEnabled))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7724555f(?) {
    return sub_7724555f
}

function sub_7760ad4b(?) {
    return sub_7760ad4b
}

function _maxWalletToken() {
    return checkMaxWalletToken
}

function sub_7fbcedff(?) {
    return sub_7fbcedff
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

function sub_ab00d68d(?) {
    return sub_ab00d68d
}

function checkMaxWalletToken() {
    return checkMaxWalletToken
}

function sub_cf4be394(?) {
    return sub_cf4be394
}

function teamFee() {
    return teamFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e99090c1(?) {
    return sub_e99090c1
}

function sub_ea19e4a8(?) {
    return sub_ea19e4a8
}

function isNotInSwap() {
    return not bool(stor39)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function refillGas() {
    call stor34 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_56f78c9d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 100 and arg1 > -1 / totalSupply / 100:
        revert with 0, 17
    sub_33477327 = totalSupply / 100 * arg1
}

function sub_ee4b30d1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 100 and arg1 > -1 / totalSupply / 100:
        revert with 0, 17
    sub_cf4be394 = totalSupply / 100 * arg1
}

function setMaxWalletPercent_base100(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply / 100 and arg1 > -1 / totalSupply / 100:
        revert with 0, 17
    checkMaxWalletToken = totalSupply / 100 * arg1
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor29 = arg1
    stor30 = arg2
    stor32 = arg3
    stor31 = arg4
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

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_ea19e4a8 = arg1
    sub_4328361e = arg2
    sub_7fbcedff = arg3
    sub_6533e393 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    sub_391e73a3 = arg1 + arg2 + arg3 + arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_e99090c1 = arg1
    sub_7760ad4b = arg2
    sub_6d796e88 = arg3
    sub_ab00d68d = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    sub_7724555f = arg1 + arg2 + arg3 + arg4
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor35) = Mask(96, 0, arg1)
    if totalSupply / 100 and arg2 > -1 / totalSupply / 100:
        revert with 0, 17
    checkSwapThreshold = totalSupply / 100 * arg2
    if totalSupply / 100 and arg3 > -1 / totalSupply / 100:
        revert with 0, 17
    maxSwapSize = totalSupply / 100 * arg3
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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



}
