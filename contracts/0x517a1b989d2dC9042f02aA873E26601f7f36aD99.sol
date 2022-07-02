contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_c5906a35(?)
#  - _fallback()
#
const name = 'LONDEX', 0

const decimals = 8

const symbol = 'LDX', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxBuyAmount;
uint256 _maxSellAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor12;
uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 sub_ce2d39d3;
uint256 totalFee;
uint256 feeDenominator;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_292e29b0Address;
uint256 referrerReward;
uint256 sub_418d14b7;
uint256 sub_3e1af9f5;
uint8 sub_7fd42c1e;
mapping of uint8 stor33;
uint256 sub_fe2ec09e;
mapping of uint256 sub_c7b05cbb;
mapping of uint256 sub_e31d390c;
mapping of struct stor38;
mapping of address sub_8bc9755d;
mapping of address sub_9d79cf8e;
array of address sub_d12eb0a3;
mapping of uint8 stor42;
uint256 stor43;
uint256 stor44;
address routerAddress;
uint8 tradingOpen; offset 160
uint128 stor46; offset 160
address pairAddress;
address distributorAddress;
uint256 stor48;
uint8 buyCooldownEnabled;
uint8 sub_a4817229; offset 8
uint8 sellCooldownEnabled; offset 16
uint8 sub_1341751d; offset 24
uint256 stor49; offset 32
mapping of uint256 stor52;
mapping of uint256 stor53;
mapping of uint256 stor54;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function _maxBuyAmount() {
    return _maxBuyAmount
}

function referrerReward() {
    return referrerReward
}

function sub_1341751d(?) {
    return sub_1341751d
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

function sub_292e29b0(?) {
    return sub_292e29b0Address
}

function sub_31860bd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor33[arg1])
}

function sub_3e1af9f5(?) {
    return sub_3e1af9f5
}

function sub_418d14b7(?) {
    return sub_418d14b7
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
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

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxSellAmount() {
    return _maxSellAmount
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_7fd42c1e(?) {
    return bool(sub_7fd42c1e)
}

function sub_81b13396(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor42[arg1])
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function sub_8bc9755d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_8bc9755d[arg1[all]]
}

function liquidityFee() {
    return liquidityFee
}

function sub_9d79cf8e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9d79cf8e[arg1]
}

function sub_a2196473(?) {
    return bool(stor13)
}

function sub_a4817229(?) {
    return sub_a4817229
}

function pair() {
    return pairAddress
}

function distributor() {
    return distributorAddress
}

function sub_c7b05cbb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c7b05cbb[address(arg1)]
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_ce2d39d3(?) {
    return sub_ce2d39d3
}

function sub_d12eb0a3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_d12eb0a3[arg1])
    return address(sub_d12eb0a3[arg1][arg2])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e31d390c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e31d390c[address(arg1)]
}

function sellCooldownEnabled() {
    return bool(sellCooldownEnabled)
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function sub_fe2ec09e(?) {
    return sub_fe2ec09e
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sellMultiplier() {
    return sellMultiplier
}

function tradingOpen() {
    return bool(tradingOpen)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_6f8c80a3(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function sub_dac5c419(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    _maxSellAmount = arg1
}

function setBuyTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    _maxBuyAmount = arg1
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function sub_3ec44dd7(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor13 = uint8(bool(arg1))
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

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor48 = arg1
}

function sub_1eebe557(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor53[address(arg1)] = arg2
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor43 = arg1
    stor44 = arg2
}

function sub_446c9f4e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor52[address(arg1)] = arg2
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_c9d5fa3f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor54[address(arg1)] = arg2
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor46.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function sub_c213d702(?) {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    referrerReward = arg1
    sub_418d14b7 = arg2
    sub_7fd42c1e = uint8(bool(arg3))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
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

function sub_fe1f76e2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxTxAmount = totalSupply * arg1 / 1000
}

function sub_66a5d350(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxBuyAmount = totalSupply * arg1 / 1000
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor17[address(arg1)] = uint8(arg2)
}

function sub_856d496e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxSellAmount = totalSupply * arg1 / 1000
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxWalletToken = totalSupply * arg1 / 1000
}

function sub_88dc8c06(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 'NH{q', 17
    stor54[address(arg1)] = totalSupply * arg2 / 1000
}

function sub_f417a1d9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 'NH{q', 17
    stor53[address(arg1)] = totalSupply * arg2 / 1000
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    sub_292e29b0Address = arg3
}

function sub_b74a199b(?) {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0xb74a199b with:
         gas gas_remaining wei
        args arg1, arg2, bool(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_095b6c2c(?) {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg2 == uint8(arg2)
    require arg3 == bool(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(bool(arg1))
    sub_a4817229 = uint8(arg2)
    sellCooldownEnabled = uint8(bool(arg3))
    sub_1341751d = uint8(arg4)
    stor49 = Mask(224, 16, bool(arg3)) >> 16
    stor49 = Mask(224, 32, bool(arg1)) >> 32
}

function sub_a3942601(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2c21fb7a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cant be set to 0. Use isUFeeExempt instead'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cant be set to 0, Use isUFeeExempt instead'
    if not arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cant be set to 0, Use isUFeeExempt instead'
    uint256(stor12[address(arg1)].field_0) = arg2
    uint256(stor12[address(arg1)].field_256) = arg3
    uint256(stor12[address(arg1)].field_512) = arg4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor18[address(arg1)] = uint8(arg2)
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
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    sub_ce2d39d3 = arg4
    if arg1 > !arg2:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 'NH{q', 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 'NH{q', 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3 + arg4
    feeDenominator = arg5
    if totalFee >= arg5 / 3:
        revert with 0, 'Fees cannot be more than 33%'
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor46.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if balanceOf[address(stor46.field_0)] and 2 > -1 / balanceOf[address(stor46.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor46.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor46.field_0)] / balanceOf[address(stor46.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor46.field_0)] > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * 2 * balanceOf[address(stor46.field_0)] / arg1 != 2 * balanceOf[address(stor46.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor46.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 'NH{q', 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor46.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if balanceOf[address(stor46.field_0)] and 2 > -1 / balanceOf[address(stor46.field_0)]:
        revert with 'NH{q', 17
    if not balanceOf[address(stor46.field_0)]:
        revert with 'NH{q', 18
    if 2 * balanceOf[address(stor46.field_0)] / balanceOf[address(stor46.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor46.field_0)] > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * 2 * balanceOf[address(stor46.field_0)] / arg2 != 2 * balanceOf[address(stor46.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor46.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function sub_4f8b9df0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        revert with 0, 'Invalid code!'
    if arg1.length > 10:
        revert with 0, 'Invalid code!'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 39
    if stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
        revert with 0, 'Code already used!'
    if bool(stor38[msg.sender].field_0):
        if bool(stor38[msg.sender].field_0) == uint255(uint256(stor38[msg.sender].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, uint256(stor38[msg.sender].field_0)):
            revert with 0, 'User already generated code!'
    else:
        if bool(stor38[msg.sender].field_0) == stor38[msg.sender].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor38[msg.sender].field_1 % 128:
            revert with 0, 'User already generated code!'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 39
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = msg.sender
    if bool(stor38[address(msg.sender)].field_0):
        if bool(stor38[address(msg.sender)].field_0) == uint255(uint256(stor38[address(msg.sender)].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor38[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor38[address(msg.sender)].field_0) = 0
            idx = 0
            while (uint255(uint256(stor38[address(msg.sender)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor38[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor38[address(msg.sender)].field_0) == stor38[address(msg.sender)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor38[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor38[address(msg.sender)].field_0) = 0
            idx = 0
            while stor38[address(msg.sender)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor38[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_63d17918(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg2.length:
        revert with 0, 'Invalid code!'
    if arg2.length > 10:
        revert with 0, 'Invalid code!'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 39
    if stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]:
        revert with 0, 'Code already used!'
    if bool(stor38[address(arg1)].field_0):
        if bool(stor38[address(arg1)].field_0) == uint255(uint256(stor38[address(arg1)].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, uint256(stor38[address(arg1)].field_0)):
            revert with 0, 'User already generated code!'
    else:
        if bool(stor38[address(arg1)].field_0) == stor38[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor38[address(arg1)].field_1 % 128:
            revert with 0, 'User already generated code!'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 39
    stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = address(arg1)
    if bool(stor38[address(arg1)].field_0):
        if bool(stor38[address(arg1)].field_0) == uint255(uint256(stor38[address(arg1)].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor38[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor38[address(arg1)].field_0) = 0
            idx = 0
            while (uint255(uint256(stor38[address(arg1)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor38[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor38[address(arg1)].field_0) == stor38[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor38[address(arg1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor38[address(arg1)].field_0) = 0
            idx = 0
            while stor38[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor38[address(arg1)][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_a8e24794(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 36).length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 800 addresses'
    if cd[68] and ('cd', 36).length > -1 / cd[68]:
        revert with 'NH{q', 17
    mem[0] = address(cd[4])
    mem[32] = 10
    if balanceOf[address(cd[4])] < cd[68] * ('cd', 36).length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 20
        mem[_34 + 32] = 'Insufficient Balance'
        mem[32] = 10
        if cd[68] > balanceOf[address(cd[4])]:
            _36 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _36 + 68] = mem[idx + _34 + 32]
                idx = idx + 32
                continue 
            mem[_36 + 88] = 0
            revert with memory
              from mem[64]
               len _36 + -mem[64] + 100
        if balanceOf[address(cd[4])] < cd[68]:
            revert with 'NH{q', 17
        balanceOf[address(cd[4])] -= cd[68]
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] > !cd[68]:
            revert with 'NH{q', 17
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + cd[68] < balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] += cd[68]
        mem[mem[64]] = cd[68]
        emit Transfer(cd[68], address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 18
        if not stor18[address(cd[((32 * idx) + cd[36] + 36)])]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 10
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor18[address(cd[4])]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), balanceOf[address(cd[4])]
}

function sub_f6141651(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor38[arg1].field_0):
        if bool(stor38[arg1].field_0) == uint255(uint256(stor38[arg1].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor38[arg1].field_0):
            if bool(stor38[arg1].field_0) == uint255(uint256(stor38[arg1].field_0)) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, uint256(stor38[arg1].field_0)):
                if 31 < uint255(uint256(stor38[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor38[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor38[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor38[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor38[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor38[arg1].field_8)
        else:
            if bool(stor38[arg1].field_0) == stor38[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor38[arg1].field_1 % 128:
                if 31 < stor38[arg1].field_1 % 128:
                    mem[128] = uint256(stor38[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor38[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor38[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor38[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor38[arg1].field_8)
        mem[ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5) > uint255(uint256(stor38[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor38[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor38[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor38[arg1].field_0)) * 0.5)]), 
    if bool(stor38[arg1].field_0) == stor38[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor38[arg1].field_0):
        if bool(stor38[arg1].field_0) == uint255(uint256(stor38[arg1].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, uint256(stor38[arg1].field_0)):
            if 31 < uint255(uint256(stor38[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor38[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor38[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor38[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor38[arg1].field_0 % 128, data=mem[128 len ceil32(stor38[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor38[arg1].field_8)
    else:
        if bool(stor38[arg1].field_0) == stor38[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor38[arg1].field_1 % 128:
            if 31 < stor38[arg1].field_1 % 128:
                mem[128] = uint256(stor38[arg1].field_0)
                idx = 128
                s = 0
                while stor38[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor38[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor38[arg1].field_0 % 128, data=mem[128 len ceil32(stor38[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor38[arg1].field_8)
    mem[ceil32(stor38[arg1].field_1 % 128) + 192 len ceil32(stor38[arg1].field_1 % 128)] = mem[128 len ceil32(stor38[arg1].field_1 % 128)]
    if ceil32(stor38[arg1].field_1 % 128) > stor38[arg1].field_1 % 128:
        mem[stor38[arg1].field_1 % 128 + ceil32(stor38[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor38[arg1].field_0 % 128, data=mem[128 len ceil32(stor38[arg1].field_1 % 128)], mem[(2 * ceil32(stor38[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor38[arg1].field_1 % 128)]), 
}

function sub_00e1dff0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 36).length >= 501:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 500 addresses'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s > !cd[((32 * idx) + cd[68] + 36)]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + cd[68] + 36)]
        continue 
    mem[0] = address(cd[4])
    mem[32] = 10
    if balanceOf[address(cd[4])] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = 20
        mem[_61 + 32] = 'Insufficient Balance'
        mem[32] = 10
        if cd[((32 * idx) + cd[68] + 36)] > balanceOf[address(cd[4])]:
            _63 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _63 + 68] = mem[idx + _61 + 32]
                idx = idx + 32
                continue 
            mem[_63 + 88] = 0
            revert with memory
              from mem[64]
               len _63 + -mem[64] + 100
        if balanceOf[address(cd[4])] < cd[((32 * idx) + cd[68] + 36)]:
            revert with 'NH{q', 17
        balanceOf[address(cd[4])] -= cd[((32 * idx) + cd[68] + 36)]
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
            revert with 'NH{q', 17
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + cd[((32 * idx) + cd[68] + 36)] < balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
        emit Transfer(cd[((32 * idx) + cd[68] + 36)], address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 18
        if not stor18[address(cd[((32 * idx) + cd[36] + 36)])]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 10
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor18[address(cd[4])]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), balanceOf[address(cd[4])]
}

function sub_0265c947(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s > !cd[((32 * idx) + cd[68] + 36)]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + cd[68] + 36)]
        continue 
    if balanceOf[address(cd[4])] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    t = 0
    t = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
            revert with 'NH{q', 17
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] + cd[((32 * idx) + cd[68] + 36)] < balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
        mem[96] = cd[((32 * idx) + cd[68] + 36)]
        emit Transfer(cd[((32 * idx) + cd[68] + 36)], address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 18
        if not stor18[address(cd[((32 * idx) + cd[36] + 36)])]:
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 10
            mem[96] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[132] = balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = cd[((32 * idx) + cd[68] + 36)]
        t = cd[((32 * idx) + cd[36] + 36)]
        continue 
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length > balanceOf[address(cd[4])]:
        revert with 0, 'Insufficient Balance', 0
    if balanceOf[address(cd[4])] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
        revert with 'NH{q', 17
    balanceOf[address(cd[4])] += -1 * s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
    if not stor18[address(cd[4])]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), balanceOf[address(cd[4])]
}



}
