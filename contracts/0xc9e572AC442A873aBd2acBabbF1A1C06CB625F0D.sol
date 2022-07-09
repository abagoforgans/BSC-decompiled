contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Meta DogeKing'

const decimals = 2

const symbol = 'Meta DogeKing'


address owner;
address stor1;
mapping of uint8 stor2;
address stor4;
address stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
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
uint8 stor18;
uint8 stor18; offset 8
uint256 stor18; offset 8
mapping of uint8 stor19;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor26;
uint256 stor27;
address routerAddress;
address pairAddress;
uint8 tradingOpen; offset 160
uint128 stor30; offset 160
address pairContractAddress;
address distributorAddress;
uint256 stor32;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor33; offset 16
uint8 swapEnabled;
uint8 stor35; offset 8
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

function sub_15aa823e(?) {
    return bool(uint8(stor18.field_8))
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
    return bool(uint8(stor18.field_0))
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function liquidityFee() {
    return liquidityFee
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
    return bool(stor2[address(arg1)])
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
    return not bool(stor35)
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
    return (stor6[address(arg1)] / rate)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    masterAddress = arg1
}

function launchStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    launchedAt = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    pairContractAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    stor2[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    stor2[address(arg1)] = 0
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = arg1
    stor27 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 250 * 3600
    stor32 = arg1
}

function enable_blacklist(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    uint8(stor18.field_0) = uint8(arg1)
}

function sub_e112904e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    Mask(248, 0, stor18.field_8) = Mask(248, 0, arg1)
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
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    owner = arg1
    stor2[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor33 = Mask(240, 16, arg1) >> 16
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    stor30 = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b74a199b(?) {
    require calldata.size - 4 >= 96
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0xb74a199b with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor6[stor4] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[stor5] > -stor6[stor4] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (-stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate)
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
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
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxTxAmount = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 != arg1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxWalletToken = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22cec1cac1efa0800000 * arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c0591b89b523ad200000 * arg2 / 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c0591b89b523ad200000 != arg2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    swapThreshold = 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c0591b89b523ad200000 * arg2
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor2[address(msg.sender)]:
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
    if not stor2[address(msg.sender)]:
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
            args address(arg1), stor6[address(arg1)] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manage_blacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    if arg1.length >= 201:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x74474153204572726f723a206d617820616c6c6f77656420746f20626c61636b6c697374203230302061646472657373657320617420612074696d,
                    mem[223 len 5]
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    rebase_count++
    if stor35:
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
        rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        emit LogRebase(_totalSupply, arg1);
    else:
        emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6[stor4] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[stor5] > -stor6[stor4] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor6[stor29] / rate:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate)
    if 2 * stor6[stor29] / rate / stor6[stor29] / rate != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate)
    if 2 * stor6[stor29] / rate * arg1 / arg1 != 2 * stor6[stor29] / rate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor6[stor29] / rate * arg1 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor6[stor4] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor6[stor5] > -stor6[stor4] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor6[stor29] / rate:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate > arg1)
    if 2 * stor6[stor29] / rate / stor6[stor29] / rate != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate > arg1)
    if 2 * stor6[stor29] / rate * arg2 / arg2 != 2 * stor6[stor29] / rate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor6[stor29] / rate * arg2 / -stor6[stor4] + -stor6[stor5] - 39457584007913129639936 / rate > arg1)
}

function sub_401f0a07(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    if not arg2:
        if not _totalSupply / 10^6:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 10^6 / _totalSupply / 10^6 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if arg1 * _totalSupply / 10^6:
                if arg1 * _totalSupply / 10^6 >= 0:
                    if (arg1 * _totalSupply / 10^6) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += arg1 * _totalSupply / 10^6
                else:
                    if -1 * arg1 * _totalSupply / 10^6 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += arg1 * _totalSupply / 10^6
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 10^6:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 10^6 / _totalSupply / 10^6 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * _totalSupply / 10^6 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * _totalSupply / 10^6) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * _totalSupply / 10^6 / -1 == arg1 * _totalSupply / 10^6
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if -1 * arg1 * _totalSupply / 10^6:
                if -1 * arg1 * _totalSupply / 10^6 >= 0:
                    if (-1 * arg1 * _totalSupply / 10^6) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 10^6
                else:
                    if test266151307() * arg1 * _totalSupply / 10^6 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 10^6
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function rebase_percentage_owner(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
    if not arg2:
        if not _totalSupply / 1000:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if arg1 * _totalSupply / 1000:
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
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 1000:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * _totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * _totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * _totalSupply / 1000 / -1 == arg1 * _totalSupply / 1000
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
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
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function rebase_percentage_master(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    if arg1 >= 101:
        revert with 0, 'Cant rebase more than 10%'
    if not arg2:
        if not _totalSupply / 1000:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if arg1 * _totalSupply / 1000:
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
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 1000:
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * _totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * _totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * _totalSupply / 1000 / -1 == arg1 * _totalSupply / 1000
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, '!OWNER'
            rebase_count++
            if stor35:
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
                rate = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender == owner:
        if arg2.length >= 2001:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x65474153204572726f723a206d61782061697264726f70206c696d69742069732032303030206164647265737365,
                        mem[210 len 18]
        mem[0] = arg1
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(arg1)] / rate < arg2.length * arg3:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < arg2.length:
            if not arg3:
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 20
                mem[_272 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(arg1)]:
                    _287 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _287 + 68] = mem[idx + _272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_287 + 68] = mem[_287 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _287 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] = stor6[address(cd[((32 * idx) + arg2 + 36)])]
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 26
                mem[_346 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _346 + 32]
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
                    mem[32] = 6
                    _411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_411] = 26
                    mem[_411 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _411 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            else:
                if rate * arg3 / arg3 != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_285] = 20
                mem[_285 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if rate * arg3 > stor6[address(arg1)]:
                    _308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _308 + 68] = mem[idx + _285 + 32]
                        idx = idx + 32
                        continue 
                    mem[_308 + 68] = mem[_308 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _308 + -mem[64] + 100
                stor6[address(arg1)] += -1 * rate * arg3
                if (rate * arg3) + stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] += rate * arg3
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 26
                mem[_351 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _351 + 32]
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
                    mem[32] = 6
                    _415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_415] = 26
                    mem[_415 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _415 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
        if arg2.length >= 2001:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x65474153204572726f723a206d61782061697264726f70206c696d69742069732032303030206164647265737365,
                        mem[210 len 18]
        mem[0] = arg1
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(arg1)] / rate < arg2.length * arg3:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < arg2.length:
            if not arg3:
                _277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_277] = 20
                mem[_277 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(arg1)]:
                    _294 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _294 + 68] = mem[idx + _277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_294 + 68] = mem[_294 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _294 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] = stor6[address(cd[((32 * idx) + arg2 + 36)])]
                _348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_348] = 26
                mem[_348 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _348 + 32]
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
                    mem[32] = 6
                    _412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_412] = 26
                    mem[_412 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _412 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            else:
                if rate * arg3 / arg3 != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_292] = 20
                mem[_292 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if rate * arg3 > stor6[address(arg1)]:
                    _315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _315 + 68] = mem[idx + _292 + 32]
                        idx = idx + 32
                        continue 
                    mem[_315 + 68] = mem[_315 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _315 + -mem[64] + 100
                stor6[address(arg1)] += -1 * rate * arg3
                if (rate * arg3) + stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] += rate * arg3
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _355 + 32]
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
                    mem[32] = 6
                    _419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_419] = 26
                    mem[_419 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _419 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            idx = idx + 1
            continue 
    if not stor11[address(arg1)]:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor6[address(arg1)] / rate
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if msg.sender == owner:
        if arg2.length >= 801:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
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
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(arg1)] / rate < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            if not cd[((32 * idx) + arg3 + 36)]:
                _521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_521] = 20
                mem[_521 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(arg1)]:
                    _537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _537 + 68] = mem[idx + _521 + 32]
                        idx = idx + 32
                        continue 
                    mem[_537 + 68] = mem[_537 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _537 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] = stor6[address(cd[((32 * idx) + arg2 + 36)])]
                _592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_592] = 26
                mem[_592 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _592 + 32]
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
                    mem[32] = 6
                    _657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_657] = 26
                    mem[_657 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _657 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            else:
                if rate * cd[((32 * idx) + arg3 + 36)] / cd[((32 * idx) + arg3 + 36)] != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_535] = 20
                mem[_535 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if rate * cd[((32 * idx) + arg3 + 36)] > stor6[address(arg1)]:
                    _557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _557 + 68] = mem[idx + _535 + 32]
                        idx = idx + 32
                        continue 
                    mem[_557 + 68] = mem[_557 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _557 + -mem[64] + 100
                stor6[address(arg1)] += -1 * rate * cd[((32 * idx) + arg3 + 36)]
                if (rate * cd[((32 * idx) + arg3 + 36)]) + stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] += rate * cd[((32 * idx) + arg3 + 36)]
                _597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_597] = 26
                mem[_597 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _597 + 32]
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
                    mem[32] = 6
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = 26
                    mem[_661 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _661 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
        if arg2.length >= 801:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
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
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(arg1)] / rate < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            if not cd[((32 * idx) + arg3 + 36)]:
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 20
                mem[_527 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(arg1)]:
                    _544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _544 + 68] = mem[idx + _527 + 32]
                        idx = idx + 32
                        continue 
                    mem[_544 + 68] = mem[_544 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _544 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] = stor6[address(cd[((32 * idx) + arg2 + 36)])]
                _594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_594] = 26
                mem[_594 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _594 + 32]
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
                    mem[32] = 6
                    _658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_658] = 26
                    mem[_658 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _658 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            else:
                if rate * cd[((32 * idx) + arg3 + 36)] / cd[((32 * idx) + arg3 + 36)] != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _542 = mem[64]
                mem[64] = mem[64] + 64
                mem[_542] = 20
                mem[_542 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if rate * cd[((32 * idx) + arg3 + 36)] > stor6[address(arg1)]:
                    _561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _561 + 68] = mem[idx + _542 + 32]
                        idx = idx + 32
                        continue 
                    mem[_561 + 68] = mem[_561 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _561 + -mem[64] + 100
                stor6[address(arg1)] += -1 * rate * cd[((32 * idx) + arg3 + 36)]
                if (rate * cd[((32 * idx) + arg3 + 36)]) + stor6[address(cd[((32 * idx) + arg2 + 36)])] < stor6[address(cd[((32 * idx) + arg2 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + arg2 + 36)])] += rate * cd[((32 * idx) + arg3 + 36)]
                _601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_601] = 26
                mem[_601 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _601 + 32]
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
                    mem[32] = 6
                    _665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_665] = 26
                    mem[_665 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _665 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + arg2 + 36)]), stor6[address(cd[((32 * idx) + arg2 + 36)])] / rate
            idx = idx + 1
            continue 
    if not stor11[address(arg1)]:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor6[address(arg1)] / rate
}

function sub_ae29c074(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == owner:
        if ('cd', 36).length >= 801:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
                        mem[209 len 19]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                        mem[204 len 24]
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            idx = idx + 1
            s = cd[((32 * idx) + cd[68] + 36)] + s
            continue 
        mem[0] = address(cd[4])
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(cd[4])] / rate < 100 * cd[((32 * ('cd', 36).length) + cd[68] + 36)] * ('cd', 36).length:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            if not 100 * cd[((32 * idx) + cd[68] + 36)]:
                _521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_521] = 20
                mem[_521 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(cd[4])]:
                    _537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _537 + 68] = mem[idx + _521 + 32]
                        idx = idx + 32
                        continue 
                    mem[_537 + 68] = mem[_537 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _537 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + cd[36] + 36)])] < stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + cd[36] + 36)])] = stor6[address(cd[((32 * idx) + cd[36] + 36)])]
                _592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_592] = 26
                mem[_592 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _592 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0 / rate
                emit Transfer((0 / rate), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 11
                if not stor11[address(cd[((32 * idx) + cd[36] + 36)])]:
                    require idx < ('cd', 36).length
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    _657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_657] = 26
                    mem[_657 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _657 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
            else:
                if 100 * rate * cd[((32 * idx) + cd[68] + 36)] / 100 * cd[((32 * idx) + cd[68] + 36)] != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_535] = 20
                mem[_535 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 100 * rate * cd[((32 * idx) + cd[68] + 36)] > stor6[address(cd[4])]:
                    _557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _557 + 68] = mem[idx + _535 + 32]
                        idx = idx + 32
                        continue 
                    mem[_557 + 68] = mem[_557 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _557 + -mem[64] + 100
                stor6[address(cd[4])] += -100 * rate * cd[((32 * idx) + cd[68] + 36)]
                if (100 * rate * cd[((32 * idx) + cd[68] + 36)]) + stor6[address(cd[((32 * idx) + cd[36] + 36)])] < stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + cd[36] + 36)])] += 100 * rate * cd[((32 * idx) + cd[68] + 36)]
                _597 = mem[64]
                mem[64] = mem[64] + 64
                mem[_597] = 26
                mem[_597 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _597 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 100 * rate * cd[((32 * idx) + cd[68] + 36)] / rate
                emit Transfer((100 * rate * cd[((32 * idx) + cd[68] + 36)] / rate), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 11
                if not stor11[address(cd[((32 * idx) + cd[36] + 36)])]:
                    require idx < ('cd', 36).length
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = 26
                    mem[_661 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _661 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, '!OWNER'
        if ('cd', 36).length >= 801:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
                        mem[209 len 19]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                        mem[204 len 24]
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            idx = idx + 1
            s = cd[((32 * idx) + cd[68] + 36)] + s
            continue 
        mem[0] = address(cd[4])
        mem[32] = 6
        mem[64] = 160
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        if stor6[address(cd[4])] / rate < 100 * cd[((32 * ('cd', 36).length) + cd[68] + 36)] * ('cd', 36).length:
            revert with 0, 'Not enough tokens in wallet'
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            if not 100 * cd[((32 * idx) + cd[68] + 36)]:
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 20
                mem[_527 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 0 > stor6[address(cd[4])]:
                    _544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _544 + 68] = mem[idx + _527 + 32]
                        idx = idx + 32
                        continue 
                    mem[_544 + 68] = mem[_544 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _544 + -mem[64] + 100
                if stor6[address(cd[((32 * idx) + cd[36] + 36)])] < stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + cd[36] + 36)])] = stor6[address(cd[((32 * idx) + cd[36] + 36)])]
                _594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_594] = 26
                mem[_594 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _594 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0 / rate
                emit Transfer((0 / rate), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 11
                if not stor11[address(cd[((32 * idx) + cd[36] + 36)])]:
                    require idx < ('cd', 36).length
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    _658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_658] = 26
                    mem[_658 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _658 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
            else:
                if 100 * rate * cd[((32 * idx) + cd[68] + 36)] / 100 * cd[((32 * idx) + cd[68] + 36)] != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _542 = mem[64]
                mem[64] = mem[64] + 64
                mem[_542] = 20
                mem[_542 + 32] = 'Insufficient Balance' << 96
                mem[32] = 6
                if 100 * rate * cd[((32 * idx) + cd[68] + 36)] > stor6[address(cd[4])]:
                    _561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 20
                    idx = 0
                    while idx < 20:
                        mem[idx + _561 + 68] = mem[idx + _542 + 32]
                        idx = idx + 32
                        continue 
                    mem[_561 + 68] = mem[_561 + 80 len 20]
                    revert with memory
                      from mem[64]
                       len _561 + -mem[64] + 100
                stor6[address(cd[4])] += -100 * rate * cd[((32 * idx) + cd[68] + 36)]
                if (100 * rate * cd[((32 * idx) + cd[68] + 36)]) + stor6[address(cd[((32 * idx) + cd[36] + 36)])] < stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 6
                stor6[address(cd[((32 * idx) + cd[36] + 36)])] += 100 * rate * cd[((32 * idx) + cd[68] + 36)]
                _601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_601] = 26
                mem[_601 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _601 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 100 * rate * cd[((32 * idx) + cd[68] + 36)] / rate
                emit Transfer((100 * rate * cd[((32 * idx) + cd[68] + 36)] / rate), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 11
                if not stor11[address(cd[((32 * idx) + cd[36] + 36)])]:
                    require idx < ('cd', 36).length
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 6
                    _665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_665] = 26
                    mem[_665 + 32] = 'SafeMath: division by zero'
                    if not rate:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _665 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
                    require ext_code.size(distributorAddress)
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[36] + 36)]), stor6[address(cd[((32 * idx) + cd[36] + 36)])] / rate
            idx = idx + 1
            continue 
    if not stor11[address(cd[4])]:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor6[address(cd[4])] / rate
}



}
