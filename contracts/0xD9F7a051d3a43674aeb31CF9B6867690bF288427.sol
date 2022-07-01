contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Starbase Texas Inu'

const decimals = 18

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _walletMax;
uint8 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 liquidityFee;
uint256 marketingFee;
uint256 rewardsFee;
uint256 extraFeeOnSell;
uint256 totalFee;
uint256 totalFeeIfSelling;
address autoLiquidityReceiverAddress;
address marketingWalletAddress;
address stor23;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 tradingOpen;
address dividendDistributorAddress; offset 8
uint256 stor28;
uint8 swapAndLiquifyEnabled; offset 8
uint8 swapAndLiquifyByLimitOnly; offset 16
uint256 stor29; offset 24
uint256 stor29; offset 16
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function rewardsFee() {
    return rewardsFee
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function restrictWhales() {
    return bool(stor9)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function extraFeeOnSell() {
    return extraFeeOnSell
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _walletMax() {
    return _walletMax
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function dividendDistributor() {
    return dividendDistributorAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function totalFeeIfSelling() {
    return totalFeeIfSelling
}

function swapAndLiquifyByLimitOnly() {
    return bool(swapAndLiquifyByLimitOnly)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function changeTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function changeWalletLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _walletMax = arg1
}

function changeRestrictWhales(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function changeDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor28 = arg1
}

function changeIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function changeFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingWalletAddress = arg2
    stor23 = arg3
}

function claim() {
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function changeSwapBackSettings(bool arg1, uint256 arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapThreshold = arg2
    swapAndLiquifyEnabled = uint8(arg1)
    Mask(240, 0, stor29.field_16) = Mask(240, 0, arg3)
    Mask(232, 0, stor29.field_24) = 0
    Mask(232, 0, stor29.field_24) = Mask(232, 16, arg1) >> 16
}

function changeDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    rewardsFee = arg2
    marketingFee = arg3
    extraFeeOnSell = arg4
    if arg3 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg2 + arg3 + arg1
    if extraFeeOnSell < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFeeIfSelling = extraFeeOnSell + arg2 + arg3 + arg1
}

function changeIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(dividendDistributorAddress)
    if not arg2:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
