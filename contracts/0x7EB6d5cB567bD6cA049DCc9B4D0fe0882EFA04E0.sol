contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'BABYELONTWITTER', 0

const decimals = 9

const symbol = 'BABYELONTWITTER', 0


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 launchedAt;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
address routerAddress;
address pairAddress;
address distributorAddress;
uint256 stor20;
uint8 swapEnabled;
uint256 swapThreshold;
uint256 maxSwapSize;
uint256 tokensToSell;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function tokensToSell() {
    return tokensToSell
}

function maxSwapSize() {
    return maxSwapSize
}

function getUnlockTime() {
    return unlockTime
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

function _maxWalletSize() {
    return _maxWalletSize
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function getTotalFee() {
    if launchedAt > -2:
        revert with 'NH{q', 17
    if launchedAt + 1 < block.number:
        return stor15
    return 99
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor16 = arg1
    emit 0x3706f034: stor16
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 < 750000
    stor20 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
    emit FeeExempt(address(arg1), arg2);
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor6[address(arg1)] = uint8(arg2)
    emit 0xf178cf12: address(arg1), arg2
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

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor16 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), stor16
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

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall distributorAddress.0x28fd3198 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    if 10^9 * arg1 < totalSupply / 500:
        revert with 0, 'Can't set lower limit than 0.2%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    _maxTxAmount = 10^9 * arg1
    emit 0xa3bf5649: arg1
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor15 = arg1 + arg2 + arg3
    emit SetFees(arg1, arg2, arg3);
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!OWNER'
    swapEnabled = uint8(arg1)
    if arg2 and 10^9 > -1 / arg2:
        revert with 'NH{q', 17
    swapThreshold = 10^9 * arg2
    if arg3 and 10^9 > -1 / arg3:
        revert with 'NH{q', 17
    maxSwapSize = 10^9 * arg3
    emit 0x512cfe1a: arg1, arg2, arg3
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    if 10^9 * arg1 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't set lower MaxWallet than 1%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    _maxWalletSize = 10^9 * arg1
    emit 0xa2c87c3e: arg1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 != this.address
    require arg1 != pairAddress
    stor7[address(arg1)] = uint8(arg2)
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
    emit 0xa838f7f8: address(arg1), arg2
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor16 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}



}
