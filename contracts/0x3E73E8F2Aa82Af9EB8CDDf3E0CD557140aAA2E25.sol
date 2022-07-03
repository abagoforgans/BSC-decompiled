contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 9

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 blacklistMode;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 sub_bcc1f3e8;
uint256 burnFee;
uint256 stor21;
uint256 feeDenominator;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_4c20dc72Address;
address burnFeeReceiverAddress;
uint256 stor28;
uint256 stor29;
address routerAddress;
uint8 tradingOpen; offset 160
address pairAddress;
uint256 stor32;
address distributorAddress;
uint256 stor36;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor37; offset 16
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

function sub_4c20dc72(?) {
    return sub_4c20dc72Address
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
    return bool(blacklistMode)
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_bcc1f3e8(?) {
    return sub_bcc1f3e8
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
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
    return bool(stor11[arg1])
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function sub_53371be0(?) {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = 1
    stor32 = block.number
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

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxTxAmount = totalSupply * arg1 / 1000
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxWalletToken = totalSupply * arg1 / 1000
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor36 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor28 = arg1
    stor29 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor37 = Mask(240, 16, arg1) >> 16
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    sub_4c20dc72Address = arg3
    burnFeeReceiverAddress = arg4
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
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
        mem[32] = 11
        stor11[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    sub_bcc1f3e8 = arg4
    burnFee = arg5
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor21 = arg5 + arg4 + arg3 + arg2 + arg1
    feeDenominator = arg6
    if stor21 >= arg6 / 2:
        revert with 0, 'Fees cannot be more than 50%'
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor31]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor31] / balanceOf[stor31] != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor31] * arg1 / arg1 != 2 * balanceOf[stor31]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor31] * arg1 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor31]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor31] / balanceOf[stor31] != 2:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor31] * arg2 / arg2 != 2 * balanceOf[stor31]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor31] * arg2 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x73474153204572726f723a206d61782061697264726f70206c696d697420697320383030206164647265737365,
                    mem[209 len 19]
    mem[0] = arg1
    mem[32] = 8
    if balanceOf[address(arg1)] < arg2.length * arg3:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        _38 = mem[64]
        mem[64] = mem[64] + 64
        mem[_38] = 20
        mem[_38 + 32] = 'Insufficient Balance' << 96
        mem[32] = 8
        if arg3 > balanceOf[address(arg1)]:
            _40 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _40 + 68] = mem[idx + _38 + 32]
                idx = idx + 32
                continue 
            mem[_40 + 68] = mem[_40 + 80 len 20]
            revert with memory
              from mem[64]
               len _40 + -mem[64] + 100
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[address(cd[((32 * idx) + arg2 + 36)])] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += arg3
        mem[mem[64]] = arg3
        emit 0x2eddf252: arg3, arg1, address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg2 + 36)])]:
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
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
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 501:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xef474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
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
    mem[32] = 8
    if balanceOf[address(arg1)] < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _69 = mem[64]
        mem[64] = mem[64] + 64
        mem[_69] = 20
        mem[_69 + 32] = 'Insufficient Balance' << 96
        mem[32] = 8
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _71 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _71 + 68] = mem[idx + _69 + 32]
                idx = idx + 32
                continue 
            mem[_71 + 68] = mem[_71 + 80 len 20]
            revert with memory
              from mem[64]
               len _71 + -mem[64] + 100
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if cd[((32 * idx) + arg3 + 36)] + balanceOf[address(cd[((32 * idx) + arg2 + 36)])] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit 0x2eddf252: cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg2 + 36)])]:
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        idx = idx + 1
        continue 
    if not stor15[address(arg1)]:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}



}
