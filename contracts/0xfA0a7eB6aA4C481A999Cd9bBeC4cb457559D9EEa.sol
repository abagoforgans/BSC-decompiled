contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'MetaIsle', 0

const decimals = 9

const symbol = 'MetaIsle', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmountBuy;
uint256 _maxTxAmountSell;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
uint256 stor18; offset 1
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 totalFee;
uint256 stor23;
uint256 stor24;
address stor25;
address stor26;
address stor27;
uint256 stor28;
uint256 stor29;
address routerAddress;
uint8 tradingOpen; offset 160
uint128 stor31; offset 160
address pairAddress;
uint256 launchedAt;
address stor33;
uint256 stor34;
uint8 sub_ba344dc4;
uint8 cooldownTimerInterval; offset 8
uint256 stor35; offset 16
uint8 swapEnabled;
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

function cooldownTimerInterval() {
    return cooldownTimerInterval
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

function sub_ba344dc4(?) {
    return bool(sub_ba344dc4)
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

function _maxTxAmountSell() {
    return _maxTxAmountSell
}

function router() {
    return routerAddress
}

function tradingOpen() {
    return bool(tradingOpen)
}

function getContractBalances() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return balanceOf[this.address]
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_a2247470(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return eth.balance(this.address)
}

function setSellMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
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
    require arg1 < 750000
    stor34 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor28 = arg1
    stor29 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTxLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmountBuy = arg1
    _maxTxAmountSell = arg2
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

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxWalletToken = totalSupply * arg1 / 100
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(96, 0, stor31.field_160) = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        launchedAt = block.number
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_ba344dc4 = uint8(arg1)
    cooldownTimerInterval = arg2
    stor35 = Mask(240, 16, arg1) >> 16
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor33)
    call stor33.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call stor26 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aad1d0b1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(bool(arg2))
    stor15[address(arg1)] = uint8(bool(arg2))
    stor16[address(arg1)] = uint8(bool(arg2))
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg2:
        stor1[address(arg1)] = 0
    else:
        stor1[address(arg1)] = 1
}

function setRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Enter valid contract address'
    if not ext_code.hash(arg1):
        revert with 0, 'Enter valid contract address'
    stor2 = arg1
    require ext_code.size(stor33)
    call stor33.changeToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bcf0c9f6(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not swapThreshold:
        if not totalFee:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalFee / 2)
    if swapThreshold and uint256(stor18.field_0) > -1 / swapThreshold:
        revert with 0, 17
    if not swapThreshold:
        revert with 0, 18
    if swapThreshold * uint256(stor18.field_0) / swapThreshold != uint256(stor18.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalFee:
        revert with 0, 'SafeMath: division by zero', 0
    return (swapThreshold * uint256(stor18.field_0) / totalFee / 2)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint256(stor18.field_0) = arg1
    stor19 = arg2
    stor20 = arg3
    stor21 = arg4
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
    totalFee = arg1 + arg2 + arg3 + arg4
    stor24 = arg5
    require totalFee < arg5 / 4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor17[address(arg1)] = uint8(arg2)
    require ext_code.size(stor33)
    if not arg2:
        call stor33.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor33.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d9d47d69(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not swapThreshold:
        if not totalFee:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / totalFee / 2 > swapThreshold:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if swapThreshold < 0 / totalFee / 2:
            revert with 0, 17
        return (swapThreshold - (0 / totalFee / 2))
    if swapThreshold and uint256(stor18.field_0) > -1 / swapThreshold:
        revert with 0, 17
    if not swapThreshold:
        revert with 0, 18
    if swapThreshold * uint256(stor18.field_0) / swapThreshold != uint256(stor18.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalFee:
        revert with 0, 'SafeMath: division by zero', 0
    if swapThreshold * uint256(stor18.field_0) / totalFee / 2 > swapThreshold:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if swapThreshold < swapThreshold * uint256(stor18.field_0) / totalFee / 2:
        revert with 0, 17
    return (swapThreshold - (swapThreshold * uint256(stor18.field_0) / totalFee / 2))
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    routerAddress = arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args stor3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    allowance[this.address][stor30] = -1
    stor17[address(stor31.field_0)] = 1
    stor15[address(arg1)] = 1
    require ext_code.size(stor33)
    call stor33.0x41cb87fc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3ae4651c: arg1
}

function sub_57e8a7ff(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < ext_call.return_data[0]:
        revert with 0, 17
    if uint255(stor18.field_1) > totalFee:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalFee < uint255(stor18.field_1):
        revert with 0, 17
    if not eth.balance(this.address) - ext_call.return_data[0]:
        if not totalFee - uint255(stor18.field_1):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalFee - uint255(stor18.field_1))
    if eth.balance(this.address) - ext_call.return_data[0] and stor19 > -1 / eth.balance(this.address) - ext_call.return_data[0]:
        revert with 0, 17
    if not eth.balance(this.address) - ext_call.return_data[0]:
        revert with 0, 18
    if (eth.balance(this.address) * stor19) - (ext_call.return_data[0] * stor19) / eth.balance(this.address) - ext_call.return_data[0] != stor19:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalFee - uint255(stor18.field_1):
        revert with 0, 'SafeMath: division by zero', 0
    return ((eth.balance(this.address) * stor19) - (ext_call.return_data[0] * stor19) / totalFee - uint255(stor18.field_1))
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if balanceOf[address(stor31.field_0)] and 2 > -1 / balanceOf[address(stor31.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor31.field_0)] / balanceOf[address(stor31.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[address(stor31.field_0)] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor31.field_0)] / arg1 != 2 * balanceOf[address(stor31.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor31.field_0)] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if balanceOf[address(stor31.field_0)] and 2 > -1 / balanceOf[address(stor31.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor31.field_0)] / balanceOf[address(stor31.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[address(stor31.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor31.field_0)] / arg2 != 2 * balanceOf[address(stor31.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor31.field_0)] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 12
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough tokens in wallet for airdrop'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _77 = mem[64]
        mem[64] = mem[64] + 64
        mem[_77] = 20
        mem[_77 + 32] = 'Insufficient Balance' << 96
        mem[32] = 12
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _80 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _80 + 68] = mem[idx + _77 + 32]
                idx = idx + 32
                continue 
            mem[_80 + 88] = 0
            revert with memory
              from mem[64]
               len _80 + -mem[64] + 100
        if balanceOf[address(arg1)] < cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 17
        if not stor17[address(cd[((32 * idx) + arg2 + 36)])]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 12
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(stor33)
            call stor33.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[32] = 17
    if stor17[address(arg1)]:
        _69 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = arg2.length
        idx = 0
        s = mem[64] + 96
        t = arg2 + 36
        while idx < arg2.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_69 + 32] = (32 * arg2.length) + 96
        mem[_69 + (32 * arg2.length) + 96] = arg3.length
        require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[_69 + (32 * arg2.length) + 128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg3.length) + _69 + (32 * arg2.length) + 128] = 0
        emit 0xf43b33bc: mem[mem[64] len (32 * arg3.length) + _69 + (32 * arg2.length) + -mem[64] + 128]
    else:
        mem[32] = 12
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = balanceOf[address(arg1)]
        require ext_code.size(stor33)
        call stor33.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            _73 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = arg2.length
            idx = 0
            s = mem[64] + 96
            t = arg2 + 36
            while idx < arg2.length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_73 + 32] = (32 * arg2.length) + 96
            mem[_73 + (32 * arg2.length) + 96] = arg3.length
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_73 + (32 * arg2.length) + 128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + _73 + (32 * arg2.length) + 128] = 0
            emit 0xf43b33bc: mem[mem[64] len (32 * arg3.length) + _73 + (32 * arg2.length) + -mem[64] + 128]
        else:
            _74 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = arg2.length
            idx = 0
            s = mem[64] + 96
            t = arg2 + 36
            while idx < arg2.length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_74 + 32] = (32 * arg2.length) + 96
            mem[_74 + (32 * arg2.length) + 96] = arg3.length
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[_74 + (32 * arg2.length) + 128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
            mem[(32 * arg3.length) + _74 + (32 * arg2.length) + 128] = 0
            emit 0xf43b33bc: mem[mem[64] len (32 * arg3.length) + _74 + (32 * arg2.length) + -mem[64] + 128]
}



}
