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
uint256 totalFee;
uint256 sub_ea19e4a8;
uint256 sub_1d2198e1;
uint256 sub_7fbcedff;
uint256 sub_391e73a3;
uint256 sub_e99090c1;
uint256 sub_01b343c0;
uint256 sub_6d796e88;
uint256 sub_7724555f;
uint256 launchedAt;
address autoLiquidityReceiverAddress;
address routerAddress;
uint8 tradingOpen; offset 160
address pairAddress;
address distributorAddress;
uint256 stor31;
uint8 swapEnabled;
uint8 stor32; offset 8
uint256 checkSwapThreshold;

function sub_01b343c0(?) {
    return sub_01b343c0
}

function swapThreshold() {
    return checkSwapThreshold
}

function totalSupply() {
    return totalSupply
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

function sub_391e73a3(?) {
    return sub_391e73a3
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

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
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

function sub_e99090c1(?) {
    return sub_e99090c1
}

function sub_ea19e4a8(?) {
    return sub_ea19e4a8
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
    return not bool(stor32)
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
    stor31 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_ea19e4a8 = arg1
    sub_7fbcedff = arg2
    sub_391e73a3 = arg3
    sub_e99090c1 = arg4
    sub_6d796e88 = arg5
    sub_7724555f = arg6
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if totalSupply / 10000 and arg2 > -1 / totalSupply / 10000:
        revert with 0, 17
    checkSwapThreshold = totalSupply / 10000 * arg2
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
    call 0xdcfaf96feea00a4f1cbd84aca1374f6abb3d9e6c with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
