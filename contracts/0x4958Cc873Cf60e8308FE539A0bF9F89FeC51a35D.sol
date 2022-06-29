contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Olympics Inu', 0

const decimals = 9

const symbol = 'OLYMPICSINU', 0


address owner;
address sub_e70347bbAddress;
address autoLiquidityReceiverAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
uint256 reflectionFee;
uint256 sub_6042f719;
uint256 externalFee;
uint256 sub_e2db2a08;
uint256 liquidityFee;
uint256 sellLiquidityFee;
uint256 sub_91dfe116;
uint256 totalSellFee;
uint256 feeDenominator;
address routerAddress;
uint8 tradingOpen; offset 160
uint128 stor28; offset 160
address pairAddress;
uint256 stor29;
address stor30;
uint256 stor31;
uint8 swapEnabled;
uint256 _maxTxAmount;
uint256 _maxWallet;
uint256 sub_7b67ccd0;

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_6042f719(?) {
    return sub_6042f719
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7b67ccd0(?) {
    return sub_7b67ccd0
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function reflectionFee() {
    return reflectionFee
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function owner() {
    return owner
}

function sub_91dfe116(?) {
    return sub_91dfe116
}

function liquidityFee() {
    return liquidityFee
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function sub_aef8aaec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function externalFee() {
    return externalFee
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

function sub_e2db2a08(?) {
    return sub_e2db2a08
}

function sub_e70347bb(?) {
    return sub_e70347bbAddress
}

function sellLiquidityFee() {
    return sellLiquidityFee
}

function router() {
    return routerAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTransactionCooldownTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
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

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28 = Mask(96, 0, arg1)
}

function setBNBDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor31 = arg1
}

function setExternalAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e70347bbAddress = arg1
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = uint8(arg2)
}

function setIsExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = uint8(arg2)
}

function setIsExcludedFromTransactionCooldown(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = uint8(arg2)
}

function recoverETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBNBDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor30)
    call stor30.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        _maxWallet = 0
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWallet = 10^9 * arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        _maxTxAmount = 0
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxTxAmount = 10^9 * arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    if not arg2:
        sub_7b67ccd0 = 0
    else:
        if arg2 and 10^9 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10^9 * arg2 / arg2 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_7b67ccd0 = 10^9 * arg2
}

function blacklistSingleWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13[address(arg1)]) != 1:
        stor13[address(arg1)] = 1
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require arg1 != this.address
        require pairAddress != arg1
        stor15[address(arg1)] = 1
        require ext_code.size(stor30)
        call stor30.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function unBlacklistSingleWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg1)]:
        stor13[address(arg1)] = 0
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require arg1 != this.address
        require pairAddress != arg1
        stor15[address(arg1)] = 0
        require ext_code.size(stor30)
        call stor30.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require pairAddress != arg1
    stor15[address(arg1)] = uint8(arg2)
    require ext_code.size(stor30)
    if not arg2:
        call stor30.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor30.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reflectionFee = arg1
    sub_6042f719 = arg2
    externalFee = arg3
    sub_e2db2a08 = arg4
    liquidityFee = arg5
    sellLiquidityFee = arg6
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 > !arg5:
        revert with 0, 17
    sub_91dfe116 = arg1 + arg3 + arg5
    if arg2 > !arg4:
        revert with 0, 17
    if arg2 + arg4 > !arg6:
        revert with 0, 17
    totalSellFee = arg2 + arg4 + arg6
    feeDenominator = arg7
    if arg7 <= sub_91dfe116:
        revert with 0, 'Fees cannot be more than 99%'
    if totalSellFee >= feeDenominator:
        revert with 0, 'Fees cannot be more than 25%'
}

function recoverTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not Enough Tokens in contract to recover.'
    if arg2:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
