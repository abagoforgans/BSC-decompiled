contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Swamp King Capital', 0

const decimals = 4

const symbol = 'SKC', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 teamFee;
uint256 burnFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address teamFeeReceiverAddress;
address burnFeeReceiverAddress;
uint256 stor28;
uint256 stor29;
address routerAddress;
uint8 tradingOpen; offset 160
uint128 stor31; offset 160
address pairAddress;
address distributorAddress;
uint256 stor33;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor34; offset 16
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
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

function teamFeeReceiver() {
    return teamFeeReceiverAddress
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
    return bool(stor10)
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function teamFee() {
    return teamFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function burnFeeReceiver() {
    return burnFeeReceiverAddress
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function burnFee() {
    return burnFee
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function enable_blacklist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10 = uint8(arg1)
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
    stor33 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor28 = arg1
    stor29 = arg2
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor31.field_160) = Mask(96, 0, arg1)
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
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

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxTxAmount = totalSupply * arg1 / 1000
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxWalletToken = totalSupply * arg1 / 1000
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor34 = Mask(240, 16, arg1) >> 16
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
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
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    teamFeeReceiverAddress = arg3
    burnFeeReceiverAddress = arg4
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
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
        revert with 0, 17
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manage_blacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 11
        stor11[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor15[address(arg1)] = uint8(arg2)
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    teamFee = arg4
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
    totalFee = arg1 + arg2 + arg3 + arg4 + arg5
    feeDenominator = arg6
    if totalFee >= arg6 / 2:
        revert with 0, 'Fees cannot be more than 50%'
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if balanceOf[address(stor31.field_0)] and 2 > -1 / balanceOf[address(stor31.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor31.field_0)] / balanceOf[address(stor31.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if arg1 and 2 * balanceOf[address(stor31.field_0)] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor31.field_0)] / arg1 != 2 * balanceOf[address(stor31.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor31.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if balanceOf[address(stor31.field_0)] and 2 > -1 / balanceOf[address(stor31.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor31.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor31.field_0)] / balanceOf[address(stor31.field_0)] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if arg2 and 2 * balanceOf[address(stor31.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor31.field_0)] / arg2 != 2 * balanceOf[address(stor31.field_0)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor31.field_0)] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 800 addresses'
    if arg3 and arg2.length > -1 / arg3:
        revert with 0, 17
    mem[0] = arg1
    mem[32] = 8
    if balanceOf[address(arg1)] < arg3 * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 20
        mem[_34 + 32] = 'Insufficient Balance'
        mem[32] = 8
        if arg3 > balanceOf[address(arg1)]:
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
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] > !arg3:
            revert with 0, 17
        if balanceOf[address(cd[((32 * idx) + arg2 + 36)])] + arg3 < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += arg3
        mem[mem[64]] = arg3
        emit Transfer(arg3, arg1, address(cd[((32 * idx) + arg2 + 36)]));
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg2 + 36)])]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor15[address(arg1)]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) payable {
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
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 501:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 500 addresses'
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
    mem[32] = 8
    if balanceOf[address(arg1)] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = 20
        mem[_61 + 32] = 'Insufficient Balance'
        mem[32] = 8
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
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
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg2 + 36)])]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor15[address(arg1)]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}



}
