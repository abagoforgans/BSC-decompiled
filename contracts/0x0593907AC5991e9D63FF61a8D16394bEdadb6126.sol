contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'TH', 0

const decimals = 9

const symbol = 'FauxInu', 0


address owner;
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 sub_1d451904;
mapping of uint256 sub_fd6bfc7b;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 charityFee;
uint256 totalFee;
uint256 sub_ea19e4a8;
uint256 sub_1d2198e1;
uint256 sub_7fbcedff;
uint256 sub_d799d791;
uint256 sub_391e73a3;
uint256 sub_e99090c1;
uint256 sub_01b343c0;
uint256 sub_6d796e88;
uint256 sub_1bc6c093;
uint256 sub_7724555f;
uint256 launchedAt;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 checkMaxWalletToken;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address charityFeeReceiverAddress;
address routerAddress;
uint8 tradingOpen; offset 160
uint8 sub_b6692852; offset 168
uint128 stor37; offset 160
address pairAddress;
address distributorAddress;
uint256 stor39;
uint8 swapEnabled;
uint256 checkSwapThreshold;
uint256 maxSwapSize;
uint256 tokensToSell;
uint8 stor44;

function sub_01b343c0(?) {
    return sub_01b343c0
}

function swapThreshold() {
    return checkSwapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1898cab2(?) {
    return sub_33477327
}

function sub_1bc6c093(?) {
    return sub_1bc6c093
}

function sub_1d2198e1(?) {
    return sub_1d2198e1
}

function sub_1d451904(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1d451904[arg1]
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
    return bool(stor10[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function maxSwapSize() {
    return maxSwapSize
}

function sub_541b4de7(?) {
    return sub_cf4be394
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

function sub_8072250b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function charityFeeReceiver() {
    return charityFeeReceiverAddress
}

function checkMaxWalletToken() {
    return checkMaxWalletToken
}

function sub_b6692852(?) {
    return bool(sub_b6692852)
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_cf4be394(?) {
    return sub_cf4be394
}

function sub_d799d791(?) {
    return sub_d799d791
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

function sub_e99090c1(?) {
    return sub_e99090c1
}

function sub_ea19e4a8(?) {
    return sub_ea19e4a8
}

function charityFee() {
    return charityFee
}

function router() {
    return routerAddress
}

function sub_fd6bfc7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fd6bfc7b[arg1]
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function isNotInSwap() {
    return not bool(stor44)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
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
    require arg1 < 250 * 3600
    stor39 = arg1
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_154d4abb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_b6692852 = 0
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 0, 17
    sub_33477327 = totalSupply / 1000 * arg1
}

function sub_96c99f5b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_b6692852 = 0
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 0, 17
    sub_cf4be394 = totalSupply / 1000 * arg1
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor37 = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_b6692852 = 0
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 0, 17
    checkMaxWalletToken = totalSupply / 1000 * arg1
}

function sub_215a62d4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(bool(arg2))
    stor11[address(arg1)] = uint8(bool(arg2))
    stor10[address(arg1)] = uint8(bool(arg2))
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
    charityFeeReceiverAddress = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_ea19e4a8 = arg1
    sub_1d2198e1 = arg2
    sub_7fbcedff = arg3
    sub_d799d791 = arg4
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_e99090c1 = arg1
    sub_01b343c0 = arg2
    sub_6d796e88 = arg3
    sub_1bc6c093 = arg4
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if totalSupply / 10000 and arg2 > -1 / totalSupply / 10000:
        revert with 0, 17
    checkSwapThreshold = totalSupply / 10000 * arg2
    if totalSupply / 10000 and arg3 > -1 / totalSupply / 10000:
        revert with 0, 17
    maxSwapSize = totalSupply / 10000 * arg3
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

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
