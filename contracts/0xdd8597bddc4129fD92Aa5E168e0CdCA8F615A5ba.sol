contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'HALOKUROCHANINU', 0

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 marketingAmount;
uint256 devAmount;
uint256 sub_26c97eed;
uint8 feesOn;
uint8 sub_882cfb3f; offset 8
uint8 tradingEnabled; offset 16
uint256 totalFee;
uint256 totalSellFee;
uint256 totalTransferFee;
uint256 stor20;
address sub_532ce9fdAddress;
address sub_57dbb869Address;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;
uint256 sub_91917d74;

function swapThreshold() {
    return swapThreshold
}

function totalTransferFee() {
    return totalTransferFee
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function sub_26c97eed(?) {
    return sub_26c97eed
}

function devAmount() {
    return devAmount
}

function marketingAmount() {
    return marketingAmount
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sub_532ce9fd(?) {
    return sub_532ce9fdAddress
}

function sub_57dbb869(?) {
    return sub_57dbb869Address
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

function sub_882cfb3f(?) {
    return bool(sub_882cfb3f)
}

function getOwner() {
    return owner
}

function sub_91917d74(?) {
    return sub_91917d74
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function feesOn() {
    return bool(feesOn)
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

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function removeAntiSnipe() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_882cfb3f = 0
}

function setTradingEnabled() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingEnabled = 1
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setFeesOn(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    feesOn = uint8(arg1)
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

function addPairTax(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setIsMaxWalletExempt(address arg1, bool arg2) {
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_532ce9fdAddress = arg1
    sub_57dbb869Address = arg2
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 < stor20 / 5
    require arg2 < stor20 / 5
    require arg3 < stor20 / 10
    totalFee = arg1
    totalSellFee = arg2
    totalTransferFee = arg3
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg2 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap threshold must be more than amount burned'
    swapEnabled = uint8(arg1)
    if arg2 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    swapThreshold = 10^9 * arg2
    if arg3 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    sub_91917d74 = 10^9 * arg3
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 <= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max wallet can only be more than 1%'
    if not totalSupply:
        _maxWalletToken = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletToken = totalSupply * arg1 / 100
}



}
