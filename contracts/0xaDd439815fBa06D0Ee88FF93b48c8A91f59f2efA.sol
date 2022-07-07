contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'ShenTeng'

const decimals = 4

const symbol = 'ShenTeng'


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 devFee;
uint256 totalFee;
uint256 feeDenominator;
uint8 blacklistMode;
mapping of uint8 stor19;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
uint256 sub_9858b488;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor27;
uint256 stor28;
address routerAddress;
address pairAddress;
uint8 tradingOpen; offset 160
uint8 sub_0cc6c813; offset 168
uint8 sub_ac4f8b92; offset 176
uint128 stor31; offset 176
uint128 stor31; offset 168
uint128 stor31; offset 160
address pairContractAddress;
address distributorAddress;
uint256 stor33;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor34; offset 16
uint8 swapEnabled;
uint8 stor36; offset 8
uint8 sub_a9c82154; offset 176
uint128 stor36; offset 176
address masterAddress; offset 16
uint256 swapThreshold;
uint256 rebase_count;
uint256 rate;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;

function swapThreshold() {
    return swapThreshold
}

function rebase_count() {
    return rebase_count
}

function sub_0cc6c813(?) {
    return bool(sub_0cc6c813)
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return _totalSupply
}

function totalFee() {
    return totalFee
}

function rate() {
    return rate
}

function _totalSupply() {
    return _totalSupply
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function pairContract() {
    return pairContractAddress
}

function isTimelockExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function devFee() {
    return devFee
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function blacklistMode() {
    return bool(blacklistMode)
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function sub_9858b488(?) {
    return sub_9858b488
}

function pair() {
    return pairAddress
}

function sub_a9c82154(?) {
    return bool(sub_a9c82154)
}

function sub_abb81052(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_ac4f8b92(?) {
    return bool(sub_ac4f8b92)
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function sellMultiplier() {
    return sellMultiplier
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(uint8(stor36.field_8))
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function checkMaxTxAmount() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (_maxTxAmount / rate)
}

function checkSwapThreshold() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (swapThreshold / rate)
}

function checkMaxWalletToken() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (_maxWalletToken / rate)
}

function sub_90319495(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_9858b488 = arg1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    masterAddress = arg1
}

function launchStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    launchedAt = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    pairContractAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function enable_blacklist(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    blacklistMode = uint8(arg1)
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (stor5[address(arg1)] / rate)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBeforeRebase(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(80, 0, stor36.field_176) = Mask(80, 0, arg1)
}

function sub_8e766f7d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(80, 0, stor31.field_176) = Mask(80, 0, arg1)
    return arg1
}

function sub_b59a31d9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(88, 0, stor31.field_168) = Mask(88, 0, arg1)
    return arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = arg1
    stor28 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 250 * 3600
    stor33 = arg1
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor34 = Mask(240, 16, arg1) >> 16
}

function setBot(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 == bool(stor7[address(arg1)]):
        revert with 0, 'already set'
    stor7[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
}

function sub_5e64f769(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor31.field_160) = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (-stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxTxAmount = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxWalletToken = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1
}

function manage_blacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 * arg2 / 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 != arg2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    swapThreshold = 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 * arg2
}

function bulkSetBot(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    devFee = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg4 + arg3 + arg2 + arg1
    feeDenominator = arg5
    if totalFee >= arg5 / 3:
        revert with 0, 'Fees cannot be more than 33%'
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor11[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    if arg2 >= 0:
        revert with 0, 'forbidden'
    rebase_count++
    if uint8(stor36.field_8):
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + _totalSupply < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            _totalSupply += arg2
        else:
            if -arg2 > _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            _totalSupply += arg2
        if test266151307() < _totalSupply:
            _totalSupply = test266151307()
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        rate = -7584007913129639936 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        emit 0x2e72725a: _totalSupply, arg1
    else:
        emit 0x2e72725a: _totalSupply, rebase_count
    return _totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor30] / rate:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    if 2 * stor5[stor30] / rate / stor5[stor30] / rate != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    if 2 * stor5[stor30] / rate * arg1 / arg1 != 2 * stor5[stor30] / rate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor30] / rate * arg1 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor30] / rate:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    if 2 * stor5[stor30] / rate / stor5[stor30] / rate != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    if 2 * stor5[stor30] / rate * arg2 / arg2 != 2 * stor5[stor30] / rate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor30] / rate * arg2 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
}

function rebase_percentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if masterAddress != msg.sender:
        require msg.sender == owner
    if not _totalSupply / 1000:
        if masterAddress != msg.sender:
            require msg.sender == owner
        revert with 0, 'forbidden'
    if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if -1 * arg1 * _totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require Mask(1, 255, arg1 * _totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
    require -1 * arg1 * _totalSupply / 1000 / -1 == arg1 * _totalSupply / 1000
    if masterAddress != msg.sender:
        require msg.sender == owner
    if -1 * arg1 * _totalSupply / 1000 >= 0:
        revert with 0, 'forbidden'
    rebase_count++
    if uint8(stor36.field_8):
        revert with 0, 'Try again'
    if -1 * arg1 * _totalSupply / 1000:
        if -1 * arg1 * _totalSupply / 1000 >= 0:
            if (-1 * arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            _totalSupply += -1 * arg1 * _totalSupply / 1000
        else:
            if test266151307() * arg1 * _totalSupply / 1000 > _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            _totalSupply += -1 * arg1 * _totalSupply / 1000
        if test266151307() < _totalSupply:
            _totalSupply = test266151307()
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        rate = -7584007913129639936 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x2e72725a: _totalSupply, rebase_count
    return _totalSupply
}

function rebase_new(uint256 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'forbidden'
    sub_a9c82154 = 1
    rebase_count++
    if uint8(stor36.field_8):
        revert with 0, 'Try again'
    if arg1:
        if not arg2:
            emit 0x2e72725a: _totalSupply, arg1
        else:
            if arg2 >= 0:
                if arg2 + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg2
            else:
                if -arg2 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg2
            if test266151307() < _totalSupply:
                _totalSupply = test266151307()
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            rate = -7584007913129639936 / _totalSupply
            emit 0x2e72725a: _totalSupply, arg1
            if not sub_ac4f8b92:
                if not rate:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(this.address), stor5[address(this.address)] / rate / 100, 0, 0, this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
    else:
        if not arg2:
            emit 0x2e72725a: _totalSupply, rebase_count
        else:
            if arg2 >= 0:
                if arg2 + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg2
            else:
                if -arg2 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg2
            if test266151307() < _totalSupply:
                _totalSupply = test266151307()
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            rate = -7584007913129639936 / _totalSupply
            emit 0x2e72725a: _totalSupply, rebase_count
            if not sub_ac4f8b92:
                if not rate:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(this.address), stor5[address(this.address)] / rate / 100, 0, 0, this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
    sub_a9c82154 = 0
    return _totalSupply
}

function sub_f5dc0c64(?) payable {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    if not _totalSupply / 1000:
        if masterAddress != msg.sender:
            require msg.sender == owner
        revert with 0, 'forbidden'
    if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if masterAddress != msg.sender:
        require msg.sender == owner
    if arg1 * _totalSupply / 1000 <= 0:
        revert with 0, 'forbidden'
    if not sub_0cc6c813:
        sub_a9c82154 = 1
        rebase_count++
        if uint8(stor36.field_8):
            revert with 0, 'Try again'
        if not arg1 * _totalSupply / 1000:
            emit 0x2e72725a: _totalSupply, rebase_count
        else:
            if arg1 * _totalSupply / 1000 >= 0:
                if (arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg1 * _totalSupply / 1000
            else:
                if -1 * arg1 * _totalSupply / 1000 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg1 * _totalSupply / 1000
            if test266151307() < _totalSupply:
                _totalSupply = test266151307()
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero'
            rate = -7584007913129639936 / _totalSupply
            emit 0x2e72725a: _totalSupply, rebase_count
            if not sub_ac4f8b92:
                if not rate:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(this.address), stor5[address(this.address)] / rate / 100, 0, 0, this.address, block.timestamp + 300
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        sub_a9c82154 = 0
    else:
        sub_0cc6c813 = 1
        sub_a9c82154 = 1
        rebase_count++
        if uint8(stor36.field_8):
            revert with 0, 'Try again'
        if not arg1 * _totalSupply / 1000:
            emit 0x2e72725a: _totalSupply, rebase_count
            sub_a9c82154 = 0
            sub_0cc6c813 = 0
        else:
            if arg1 * _totalSupply / 1000 >= 0:
                if (arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, rebase_count
                if not arg2:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg2 / arg2 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if rate * arg2 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg2
                    if (rate * arg2) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg2) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg2 / rate), msg.sender, this.address);
            else:
                if -1 * arg1 * _totalSupply / 1000 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, rebase_count
                if not arg2:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg2 / arg2 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if rate * arg2 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg2
                    if (rate * arg2) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg2) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg2 / rate), msg.sender, this.address);
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, arg2, 0, 0, this.address, block.timestamp + 300
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            sub_a9c82154 = 0
    return _totalSupply
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 2001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x74474153204572726f723a206d61782061697264726f70206c696d69742069732032303030206164647265737365,
                    mem[210 len 18]
    mem[0] = arg1
    mem[32] = 5
    mem[64] = 160
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if stor5[address(arg1)] / rate < arg2.length * arg3:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        if not arg3:
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 20
            mem[_139 + 32] = 'Insufficient Balance' << 96
            mem[32] = 5
            if 0 > stor5[address(arg1)]:
                _147 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _147 + 68] = mem[idx + _139 + 32]
                    idx = idx + 32
                    continue 
                mem[_147 + 68] = mem[_147 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _147 + -mem[64] + 100
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] = stor5[address(cd[((32 * idx) + arg2 + 36)])]
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 26
            mem[_176 + 32] = 'SafeMath: division by zero'
            if not rate:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0 / rate
            emit Transfer((0 / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 11
            if not stor11[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 26
                mem[_208 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        else:
            if rate * arg3 / arg3 != rate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 20
            mem[_143 + 32] = 'Insufficient Balance' << 96
            mem[32] = 5
            if rate * arg3 > stor5[address(arg1)]:
                _154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _154 + 68] = mem[idx + _143 + 32]
                    idx = idx + 32
                    continue 
                mem[_154 + 68] = mem[_154 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _154 + -mem[64] + 100
            stor5[address(arg1)] += -1 * rate * arg3
            if (rate * arg3) + stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] += rate * arg3
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            if not rate:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _177 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = rate * arg3 / rate
            emit Transfer((rate * arg3 / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 11
            if not stor11[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 26
                mem[_209 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _209 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        idx = idx + 1
        continue 
    if not stor11[address(arg1)]:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
}

function sub_7db13d1f(?) payable {
    require calldata.size - 4 >= 96
    if masterAddress != msg.sender:
        require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'forbidden'
    sub_0cc6c813 = 1
    sub_a9c82154 = 1
    rebase_count++
    if uint8(stor36.field_8):
        revert with 0, 'Try again'
    if arg1:
        if not arg2:
            emit 0x2e72725a: _totalSupply, arg1
            sub_a9c82154 = 0
            sub_0cc6c813 = 0
        else:
            if arg2 >= 0:
                if arg2 + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg2
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, arg1
                if not arg3:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg3 / arg3 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rate * arg3 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg3
                    if (rate * arg3) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg3) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg3 / rate), msg.sender, this.address);
            else:
                if -arg2 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg2
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, arg1
                if not arg3:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg3 / arg3 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if rate * arg3 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg3
                    if (rate * arg3) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg3) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg3 / rate), msg.sender, this.address);
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, arg3, 0, 0, this.address, block.timestamp + 300
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            sub_a9c82154 = 0
    else:
        if not arg2:
            emit 0x2e72725a: _totalSupply, rebase_count
            sub_a9c82154 = 0
            sub_0cc6c813 = 0
        else:
            if arg2 >= 0:
                if arg2 + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += arg2
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, rebase_count
                if not arg3:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg3 / arg3 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if rate * arg3 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg3
                    if (rate * arg3) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg3) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg3 / rate), msg.sender, this.address);
            else:
                if -arg2 > _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += arg2
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                emit 0x2e72725a: _totalSupply, rebase_count
                if not arg3:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    if stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((0 / rate), msg.sender, this.address);
                else:
                    if rate * arg3 / arg3 != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if rate * arg3 > stor5[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance'
                    stor5[address(msg.sender)] += -1 * rate * arg3
                    if (rate * arg3) + stor5[this.address] < stor5[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor5[address(this.address)] = (rate * arg3) + stor5[this.address]
                    if not rate:
                        revert with 0, 'SafeMath: division by zero'
                    emit Transfer((rate * arg3 / rate), msg.sender, this.address);
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, arg3, 0, 0, this.address, block.timestamp + 300
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            sub_a9c82154 = 0
    return _totalSupply
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xf2474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
                    mem[209 len 19]
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = cd[((32 * idx) + arg3 + 36)] + s
        continue 
    mem[0] = arg1
    mem[32] = 5
    mem[64] = 160
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if stor5[address(arg1)] / rate < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        if not cd[((32 * idx) + arg3 + 36)]:
            _264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_264] = 20
            mem[_264 + 32] = 'Insufficient Balance' << 96
            mem[32] = 5
            if 0 > stor5[address(arg1)]:
                _274 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _274 + 68] = mem[idx + _264 + 32]
                    idx = idx + 32
                    continue 
                mem[_274 + 68] = mem[_274 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _274 + -mem[64] + 100
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] = stor5[address(cd[((32 * idx) + arg2 + 36)])]
            _299 = mem[64]
            mem[64] = mem[64] + 64
            mem[_299] = 26
            mem[_299 + 32] = 'SafeMath: division by zero'
            if not rate:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _299 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0 / rate
            emit Transfer((0 / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 11
            if not stor11[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_331] = 26
                mem[_331 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _331 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        else:
            if rate * cd[((32 * idx) + arg3 + 36)] / cd[((32 * idx) + arg3 + 36)] != rate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_268] = 20
            mem[_268 + 32] = 'Insufficient Balance' << 96
            mem[32] = 5
            if rate * cd[((32 * idx) + arg3 + 36)] > stor5[address(arg1)]:
                _278 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[idx + _278 + 68] = mem[idx + _268 + 32]
                    idx = idx + 32
                    continue 
                mem[_278 + 68] = mem[_278 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _278 + -mem[64] + 100
            stor5[address(arg1)] += -1 * rate * cd[((32 * idx) + arg3 + 36)]
            if (rate * cd[((32 * idx) + arg3 + 36)]) + stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] += rate * cd[((32 * idx) + arg3 + 36)]
            _300 = mem[64]
            mem[64] = mem[64] + 64
            mem[_300] = 26
            mem[_300 + 32] = 'SafeMath: division by zero'
            if not rate:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _300 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = rate * cd[((32 * idx) + arg3 + 36)] / rate
            emit Transfer((rate * cd[((32 * idx) + arg3 + 36)] / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 11
            if not stor11[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_332] = 26
                mem[_332 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _332 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        idx = idx + 1
        continue 
    if not stor11[address(arg1)]:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
}



}
