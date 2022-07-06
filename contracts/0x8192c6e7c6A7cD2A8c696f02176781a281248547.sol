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
uint256 totalSupply;
uint256 liquidityFee;
uint256 burnFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 buybackFee;
uint256 _maxTxAmount;
uint256 sub_da846447;
address marketingFeeReceiverAddress;
address sub_84b1d1efAddress;
address stor13;
address stor14;
mapping of uint8 stor15;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
uint256 feeDenominator;
uint256 stor22;
address autoLiquidityReceiverAddress;
array of address pairs;
address routerAddress;
address stor26;
address stor27;
uint256 stor28;
uint256 launchedAt;
uint8 sub_ed5792d7;
uint8 feesOnNormalTransfers; offset 8
uint8 swapEnabled; offset 16
uint256 stor30; offset 16
uint256 stor30; offset 8
uint256 swapThreshold;
array of address stor80167465652159884487584418398737133515478493586045375474096367959472086682926;

function swapThreshold() {
    return swapThreshold
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function buybackFee() {
    return buybackFee
}

function feesOnNormalTransfers() {
    return bool(feesOnNormalTransfers)
}

function marketingFee() {
    return marketingFee
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

function reflectionFee() {
    return reflectionFee
}

function sub_84b1d1ef(?) {
    return sub_84b1d1efAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function pairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return pairs[arg1]
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_da846447(?) {
    return sub_da846447
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

function sub_ed5792d7(?) {
    return bool(sub_ed5792d7)
}

function router() {
    return routerAddress
}

function burnFee() {
    return burnFee
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function renouceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLaunchedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    launchedAt = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function removeLastPair() {
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    if not pairs.length:
        revert with 0, 49
    pairs[pairs.length] = 0
    pairs.length--
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    require arg1 <= 10^6
    stor28 = arg1
}

function setLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    sub_ed5792d7 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimDividend() {
    require ext_code.size(stor27)
    call stor27.0xf0fc6bca with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    pairs.length++
    storB13D[stor24.length] = arg1
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    Mask(248, 0, stor30.field_8) = Mask(248, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3611fd9c(?) {
    call marketingFeeReceiverAddress with:
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
        revert with 0, 'Ownership required.'
    stor19[address(arg1)] = uint8(arg2)
}

function setIsMaxHoldExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    stor18[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    stor15[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    Mask(240, 0, stor30.field_16) = Mask(240, 0, arg1)
    swapThreshold = arg2
}

function setMaxHoldPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    if totalSupply / 100 and arg1 > -1 / totalSupply / 100:
        revert with 0, 17
    sub_da846447 = totalSupply / 100 * arg1
}

function getTotalFee() {
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 < block.number:
        return stor22
    if 1 > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if feeDenominator < 1:
        revert with 0, 17
    return (feeDenominator - 1)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    sub_84b1d1efAddress = arg1
    autoLiquidityReceiverAddress = arg2
    marketingFeeReceiverAddress = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    require ext_code.size(stor27)
    call stor27.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor13] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor13]:
        revert with 0, 17
    if balanceOf[stor14] > totalSupply - balanceOf[stor13]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor13] < balanceOf[stor14]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor13] - balanceOf[stor14])
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    require arg1 != this.address
    require stor26 != arg1
    stor20[address(arg1)] = uint8(arg2)
    require ext_code.size(stor27)
    if not arg2:
        call stor27.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor27.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTxLimit(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    if not arg2:
        require arg1 >= totalSupply / 2000
    else:
        if balanceOf[stor13] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < balanceOf[stor13]:
            revert with 0, 17
        if balanceOf[stor14] > totalSupply - balanceOf[stor13]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply - balanceOf[stor13] < balanceOf[stor14]:
            revert with 0, 17
        require arg1 >= totalSupply - balanceOf[stor13] - balanceOf[stor14] / 2000
    _maxTxAmount = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    buybackFee = arg4
    burnFee = arg5
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor22 = arg1 + arg2 + arg3 + arg4 + arg5
    feeDenominator = arg6
}



}
