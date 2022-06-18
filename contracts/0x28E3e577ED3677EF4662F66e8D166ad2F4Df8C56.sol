contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'TESTFEBRUARY'

const decimals = 2

const symbol = 'TESTFEBRUARY'


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint8 stor7;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 totalBuyFee;
uint256 totalSellFee;
uint256 stor21;
address autoLiquidityReceiverAddress;
address sub_d26d2c1aAddress;
address sub_767a0d23Address;
uint256 stor25;
uint256 stor26;
address routerAddress;
address pairAddress;
uint256 sub_f6c4bd3a;
uint256 launchedAt;
uint8 tradingOpen;
uint8 buyCooldownEnabled; offset 8
uint8 cooldownTimerInterval; offset 16
uint256 stor31; offset 24
uint8 swapEnabled;
uint256 swapThreshold;
mapping of uint8 stor36;
address stor37;
uint256 sub_407846b4;
uint8 stor39;

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor36[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function sub_407846b4(?) {
    return sub_407846b4
}

function sub_575eb5d7(?) {
    return bool(stor7)
}

function totalBuyFee() {
    return totalBuyFee
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
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

function sub_767a0d23(?) {
    return sub_767a0d23Address
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_d26d2c1a(?) {
    return sub_d26d2c1aAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f6c4bd3a(?) {
    return sub_f6c4bd3a
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

function sub_12fca2ae(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor7 = uint8(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function addSniper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor36[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_a409aa38(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_407846b4 = arg1
}

function sub_14711150(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor39 = uint8(arg1)
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

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxWalletToken = totalSupply * arg1 / 100
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
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
    stor31 = 0
    stor31 = Mask(232, 16, arg1) >> 16
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    sub_d26d2c1aAddress = arg2
    sub_767a0d23Address = arg3
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    tradingOpen = uint8(arg1)
    if uint8(arg1):
        if not launchedAt:
            sub_f6c4bd3a = arg2
            launchedAt = block.number
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b2175829(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor37)
    staticcall stor37.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_407846b4:
        return 1
    else:
        return 0
}

function setBuyFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15 = arg1
    stor16 = arg2
    if arg1 + stor14 < stor14:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalBuyFee = arg2 + arg1 + stor14
    require stor21 > arg2 + arg1 + stor14
}

function setSellFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17 = arg1
    stor18 = arg2
    if arg1 + stor14 < stor14:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalSellFee = arg2 + arg1 + stor14
    require stor21 > arg2 + arg1 + stor14
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not stor36[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e4163636f756e74206973206e6f742061207265636f7264656420736e69706572,
                    mem[197 len 31]
    stor36[address(arg1)] = 0
}

function sub_fa69d595(?) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    stor15 = arg2
    stor17 = arg2
    stor16 = arg3
    stor18 = arg3
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    totalBuyFee = (2 * arg2) + arg1
    if arg3 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    totalSellFee = (2 * arg3) + arg1
    stor21 = arg4
    require arg4 > totalBuyFee
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor28]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor28] / balanceOf[stor28] != 2:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor28] * arg1 / arg1 != 2 * balanceOf[stor28]:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor28] * arg1 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor28]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor28] / balanceOf[stor28] != 2:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor28] * arg2 / arg2 != 2 * balanceOf[stor28]:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor28] * arg2 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
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
    mem[32] = 9
    if balanceOf[address(arg1)] < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734e6f7420656e6f75676820746f6b656e7320696e2077616c6c657420666f722061697264726f,
                    mem[203 len 25]
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _43 = mem[64]
        mem[64] = mem[64] + 64
        mem[_43] = 20
        mem[_43 + 32] = 'Insufficient Balance' << 96
        mem[32] = 9
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _45 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _45 + 68] = mem[idx + _43 + 32]
                idx = idx + 32
                continue 
            mem[_45 + 68] = mem[_45 + 80 len 20]
            revert with memory
              from mem[64]
               len _45 + -mem[64] + 100
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if cd[((32 * idx) + arg3 + 36)] + balanceOf[address(cd[((32 * idx) + arg2 + 36)])] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 9
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        idx = idx + 1
        continue 
}



}