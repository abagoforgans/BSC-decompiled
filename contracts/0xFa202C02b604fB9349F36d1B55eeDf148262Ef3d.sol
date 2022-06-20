contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'CarbonEco', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor2;
address stor3;
uint256 totalSupply;
uint256 _maxTxAmountBuy;
uint256 _maxTxAmountSell;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 totalFee;
uint256 stor21; offset 1
uint256 feeDenominator;
address teamWallet1Address;
address teamWallet2Address;
address sub_be073729Address;
address sub_1094f17aAddress;
address routerAddress;
address pairAddress;
uint256 launchedAt;
address stor29;
uint256 stor30;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function sub_1094f17a(?) {
    return sub_1094f17aAddress
}

function teamWallet1() {
    return teamWallet1Address
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function isInBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    return bool(stor13[address(arg1)])
}

function _maxTxAmountBuy() {
    return _maxTxAmountBuy
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxWalletToken() {
    return _maxWalletToken
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function sub_be073729(?) {
    return sub_be073729Address
}

function launchedAt() {
    return launchedAt
}

function teamWallet2() {
    return teamWallet2Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _maxTxAmountSell() {
    return _maxTxAmountSell
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function getFees() {
    if owner != msg.sender:
        revert with 0, '!Owner'
    return stor15, stor16, stor17, stor18, stor19
}

function setBuyTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    _maxTxAmountBuy = arg1
}

function setSellTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    _maxTxAmountSell = arg1
}

function setMaxWalletToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    _maxWalletToken = arg1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    require arg1 < 750000
    stor30 = arg1
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setInitialBlockLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    if arg1 <= 0:
        revert with 0, 'Blocks should be greater than 0'
    stor14 = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!Owner'
    require ext_code.size(stor29)
    call stor29.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '!Owner'
    teamWallet1Address = arg1
    teamWallet2Address = arg2
    sub_be073729Address = arg3
    sub_1094f17aAddress = arg4
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > !stor14:
        revert with 0, 17
    if launchedAt + stor14 < block.number:
        if not arg1:
            return totalFee
    if 1 > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if feeDenominator < 1:
        revert with 0, 17
    return (feeDenominator - 1)
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function manualBurn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!Owner'
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 'Insufficient Balance', 0
    if balanceOf[address(this.address)] < arg1:
        revert with 0, 17
    balanceOf[address(this.address)] -= arg1
    if balanceOf[stor2] > !arg1:
        revert with 0, 17
    if balanceOf[stor2] + arg1 < balanceOf[stor2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor2] += arg1
    emit Transfer(arg1, this.address, stor2);
    return 1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor29)
    if not arg2:
        call stor29.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor29.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBot(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor13[address(arg1)] = uint8(arg2)
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor29)
    if not arg2:
        call stor29.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor29.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, '!Owner'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
    stor19 = arg5
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
    totalFee = arg1 + arg2 + arg3 + arg4 + arg5
    if totalFee >= stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total Fee cannot be more than 50%'
}



}
