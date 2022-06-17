contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Penny Inu', 0

const decimals = 9

const symbol = 'PENNYDOG', 0


address owner;
address BUSDAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 sub_32a23cfc;
uint256 buyMarketingFee;
uint256 buyLiquidityFee;
uint256 sub_a1dc92bc;
uint256 buyTotalFees;
uint256 sub_1e183252;
uint256 sellMarketingFee;
uint256 sellLiquidityFee;
uint256 sub_0d7f1441;
uint256 sellTotalFees;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
address sub_8c4ae0adAddress;
address routerAddress;
uint8 tradingOpen; offset 160
address pairAddress;
address sub_f088c98cAddress;
uint256 stor27;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function sub_0d7f1441(?) {
    return sub_0d7f1441
}

function totalSupply() {
    return totalSupply
}

function sub_1e183252(?) {
    return sub_1e183252
}

function sub_32a23cfc(?) {
    return sub_32a23cfc
}

function BUSD() {
    return BUSDAddress
}

function sellTotalFees() {
    return sellTotalFees
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function buyMarketingFee() {
    return buyMarketingFee
}

function sub_8c4ae0ad(?) {
    return sub_8c4ae0adAddress
}

function owner() {
    return owner
}

function sellMarketingFee() {
    return sellMarketingFee
}

function sub_a1dc92bc(?) {
    return sub_a1dc92bc
}

function pair() {
    return pairAddress
}

function buyTotalFees() {
    return buyTotalFees
}

function devFeeReceiver() {
    return devFeeReceiverAddress
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

function sub_f088c98c(?) {
    return sub_f088c98cAddress
}

function buyLiquidityFee() {
    return buyLiquidityFee
}

function sellLiquidityFee() {
    return sellLiquidityFee
}

function router() {
    return routerAddress
}

function tradingOpen() {
    return bool(tradingOpen)
}

function tradingStatus() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingOpen = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1aacf441(?) {
    require ext_code.size(sub_f088c98cAddress)
    call sub_f088c98cAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args stor27
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

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor27 = arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function sub_711ee875(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
    stor9[address(arg1)] = 1
    stor10[address(arg1)] = 1
}

function sub_4572b6bc(?) {
    staticcall sub_f088c98cAddress.getLastProcessedIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3c8a73db(?) {
    staticcall sub_f088c98cAddress.totalDistributedRewards() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_99d55644(?) {
    staticcall sub_f088c98cAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingFeeReceiverAddress = arg1
    devFeeReceiverAddress = arg2
    sub_8c4ae0adAddress = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ee3154a4(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f088c98cAddress)
    call sub_f088c98cAddress.setDistributionCriteria(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7d5f4c88(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_f088c98cAddress.0xa05cd01 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_622bb925(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(sub_f088c98cAddress)
    call sub_f088c98cAddress.claimDividend() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(sub_f088c98cAddress)
        call sub_f088c98cAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args stor27
}

function updateBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_32a23cfc = arg1
    buyMarketingFee = arg2
    buyLiquidityFee = arg3
    sub_a1dc92bc = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    buyTotalFees = arg1 + arg2 + arg3 + arg4
    if 15 < arg1 + arg2 + arg3 + arg4:
        revert with 0, 'Total fee is over 15%'
}

function updateSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1e183252 = arg1
    sellMarketingFee = arg2
    sellLiquidityFee = arg3
    sub_0d7f1441 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    sellTotalFees = arg1 + arg2 + arg3 + arg4
    if 15 < arg1 + arg2 + arg3 + arg4:
        revert with 0, 'Total fee is over 15%'
}

function sub_7e39cee9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1) != this.address
    require pairAddress != address(arg1)
    stor9[address(arg1)] = uint8(bool(arg2))
    require ext_code.size(sub_f088c98cAddress)
    if not arg2:
        call sub_f088c98cAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call sub_f088c98cAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
