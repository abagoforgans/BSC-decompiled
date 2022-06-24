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
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor9;
uint256 _maxWalletSize;
uint256 _maxTxAmount;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 _sellBuybackFee;
uint256 sub_6620cec9;
address stor28;
address stor29;
uint256 stor30;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function _sellBuybackFee() {
    return _sellBuybackFee
}

function getUnlockTime() {
    return unlockTime
}

function sub_6620cec9(?) {
    return sub_6620cec9
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

function _sellLiquidityFee() {
    return _sellLiquidityFee
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

function _sellMarketingFee() {
    return _sellMarketingFee
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setTargetLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor30 = arg1
    emit 0x52b2b08b: arg1
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
    emit 0x1b92447b: address(arg1), arg2
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor28 = arg1
    stor29 = arg2
    emit 0x47ec85e8: address(arg1), arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor6[address(arg1)] = uint8(arg2)
    emit 0x6824b1d8: address(arg1), arg2
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
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor28 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), stor28
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 <= 0:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    emit SetSwapBackSettings(bool(uint8(arg1)), arg2);
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

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor32] > -1 / arg1:
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor32] / stor9)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor32] > -1 / arg2:
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor32] / stor9 > arg1)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * arg1 / 100 < totalSupply / 100:
        revert with 0, 'Can't set MaxWallet below 1%'
    _maxWalletSize = totalSupply * arg1 / 100
    emit 0xa2c87c3e: (totalSupply * arg1 / 100)
}

function setMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * arg1 / 1000 < totalSupply / 1000:
        revert with 0, 'Can't set MaxTX below 0.1%'
    _maxTxAmount = totalSupply * arg1 / 1000
    emit SetMaxTxAmount((totalSupply * arg1 / 1000));
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 >= 33:
        revert with 0, 'Total fees must be below 33%'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    stor19 = arg1 + arg2 + arg3
    emit 0x38a68439: arg1, arg2, arg3, stor15
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 >= 33:
        revert with 0, 'Total fees must be below 33%'
    _sellLiquidityFee = arg1
    _sellMarketingFee = arg2
    _sellBuybackFee = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    sub_6620cec9 = arg1 + arg2 + arg3
    emit SetSellFees(arg1, arg2, arg3, stor15);
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor28 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}



}
