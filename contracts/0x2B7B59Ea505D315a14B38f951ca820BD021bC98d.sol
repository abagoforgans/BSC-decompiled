contract main {




// =====================  Runtime code  =====================


#
#  - launch()
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'BabyLoto', 0

const totalSupply = 1000000000 * 10^18

const decimals = 18

const getTime = block.timestamp

const symbol = '', 0


address owner;
uint256 unlockTime;
address marketingAddress;
address liquidityAddress;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of address stor11;
uint256 stor12;
uint256 totalFees;
array of address buyerList;
uint256 buyCounter;
uint256 rewardBlockCooldown;
uint256 lastRewardBlock;
uint256 buysToTrigger;
uint256 stor19; offset 32
uint256 minBuyAmount;
uint8 sub_fbe8d4b7;
uint8 sub_a41575d7; offset 8
uint256 sub_dc8ba8e6;
uint256 stor23;
uint256 stor25;
uint256 _buyTaxFee;
uint256 _buyLiquidityFee;
uint256 _buyMarketingFee;
uint256 sub_cfc76a07;
uint256 _sellTaxFee;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 sub_0bd84afa;
uint256 tradingActiveBlock;
uint8 limitsInEffect;
uint8 tradingActive; offset 8
mapping of uint8 stor37;
uint8 transferDelayEnabled;
uint8 stor43;
uint256 stor44;
mapping of uint8 stor45;
uint256 minimumTokensBeforeSwap;
uint256 maxTransactionAmount;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor49; offset 168
address uniswapV2PairAddress;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function buyerList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < buyerList.length
    return buyerList[arg1]
}

function sub_0bd84afa(?) {
    return sub_0bd84afa
}

function _isExcludedMaxTransactionAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor37[arg1])
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _sellTaxFee() {
    return _sellTaxFee
}

function liquidityAddress() {
    return liquidityAddress
}

function buysToTrigger() {
    return buysToTrigger
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function limitsInEffect() {
    return bool(limitsInEffect)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function getBuyerListLength() {
    return buyerList.length
}

function sub_8396a136(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function owner() {
    return owner
}

function buyCounter() {
    return buyCounter
}

function rewardBlockCooldown() {
    return rewardBlockCooldown
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwap
}

function sub_a41575d7(?) {
    return bool(sub_a41575d7)
}

function marketingAddress() {
    return marketingAddress
}

function lastRewardBlock() {
    return lastRewardBlock
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor45[arg1])
}

function tradingActive() {
    return bool(tradingActive)
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function transferDelayEnabled() {
    return bool(transferDelayEnabled)
}

function maxTransactionAmount() {
    return maxTransactionAmount
}

function sub_cfc76a07(?) {
    return sub_cfc76a07
}

function minimumTokensBeforeSwap() {
    return minimumTokensBeforeSwap
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function sub_dc8ba8e6(?) {
    return sub_dc8ba8e6
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function tradingActiveBlock() {
    return tradingActiveBlock
}

function _buyTaxFee() {
    return _buyTaxFee
}

function minBuyAmount() {
    return minBuyAmount
}

function sub_fbe8d4b7(?) {
    return bool(sub_fbe8d4b7)
}

function sub_08020515(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a41575d7 = 0
}

function disableTransferDelay() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferDelayEnabled = 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    limitsInEffect = 0
    stor43 = 0
    transferDelayEnabled = 0
    return 1
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingActive = 1
    swapAndLiquifyEnabled = 1
    tradingActiveBlock = block.number
}

function sub_4df857fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
}

function sub_a80f0f8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function setProtectionSettings(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor43 = uint8(arg1)
}

function withdrawStuckETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_285b9747(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fbe8d4b7 = uint8(bool(arg1))
}

function sub_f498cceb(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Must have a value in here'
    minBuyAmount = arg1
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityAddress = arg1
    stor8[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
    stor8[address(arg1)] = 1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor49 = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 50
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor44 = 10^9 * arg1
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = uint8(arg2)
    emit ExcludedMaxTransactionAmount(arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_59903566(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have between 1 and 50 percent lottery'
    if arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have between 1 and 50 percent lottery'
    sub_dc8ba8e6 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateBuysToTriggerReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have between 5 and 100 buys per reward payout'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have between 5 and 100 buys per reward payout'
    buysToTrigger = arg1
}

function setBuyFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyTaxFee = arg1
    _buyLiquidityFee = arg2
    _buyMarketingFee = arg3
    sub_cfc76a07 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > 20:
        revert with 0, 'Must keep taxes below 20%'
}

function setSellFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _sellTaxFee = arg1
    _sellLiquidityFee = arg2
    _sellMarketingFee = arg3
    sub_0bd84afa = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > 30:
        revert with 0, 'Must keep taxes below 30%'
}

function updateRewardBlockCooldown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must have a cooldown between 1 and 100 blocks on rewards'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must have a cooldown between 1 and 100 blocks on rewards'
    lastRewardBlock = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length - 1 >= stor11.length:
            revert with 0, 50
        if idx >= stor11.length:
            revert with 0, 50
        stor11[idx] = stor11[stor11.length]
        stor6[address(arg1)] = 0
        stor9[address(arg1)] = 0
        if not stor11.length:
            revert with 0, 49
        stor11[stor11.length] = 0
        stor11.length--
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'Can't withdraw native tokens'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_8b28cd19(?) {
    mem[96] = 2
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = minBuyAmount
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args minBuyAmount, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 288 len 4], stor19
    require mem[ceil32(return_data.size) + 288 len 4], stor19 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 319 < ceil32(return_data.size) + return_data.size + 288
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 288] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 288]) + 289 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 288]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], stor19 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = _26
    require (32 * _26) + _25 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(32 * _26)] = mem[ceil32(return_data.size) + _25 + 320 len ceil32(32 * _26)]
    if 1 >= _26:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 352]
    return memory
      from mem[64]
       len 32
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 1000000000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            if stor12 / 1000000000 * 10^18:
                return (arg1 / stor12 / 1000000000 * 10^18)
            _83 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _83 + 68] = mem[idx + _77 + 32]
                idx = idx + 32
                continue 
            mem[_83 + 94] = 0
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        if stor6[stor11[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = 26
            mem[_85 + 32] = 'SafeMath: division by zero'
            if stor12 / 1000000000 * 10^18:
                return (arg1 / stor12 / 1000000000 * 10^18)
            _89 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _89 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            mem[_89 + 94] = 0
            revert with memory
              from mem[64]
               len _89 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 5
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] > t:
            _70 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _70 + 68] = mem[idx + _68 + 32]
                idx = idx + 32
                continue 
            mem[_70 + 98] = 0
            revert with memory
              from mem[64]
               len _70 + -mem[64] + 100
        if t < stor5[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor11[idx]] <= s:
            if s < stor6[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor6[stor11[idx]]
            t = t - stor5[stor11[idx]]
            continue 
        _88 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _88 + 68] = mem[idx + _84 + 32]
            idx = idx + 32
            continue 
        mem[_88 + 98] = 0
        revert with memory
          from mem[64]
           len _88 + -mem[64] + 100
    if t < stor12 / 1000000000 * 10^18:
        if not stor12 / 1000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor12 / 1000000000 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / t / s)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9[address(arg1)]:
        return stor6[address(arg1)]
    mem[0] = arg1
    mem[32] = 5
    if stor5[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 1000000000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor12 / 1000000000 * 10^18:
                return (stor5[address(arg1)] / stor12 / 1000000000 * 10^18)
            _88 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _88 + 68] = mem[idx + _82 + 32]
                idx = idx + 32
                continue 
            mem[_88 + 94] = 0
            revert with memory
              from mem[64]
               len _88 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        if stor6[stor11[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 26
            mem[_90 + 32] = 'SafeMath: division by zero'
            if stor12 / 1000000000 * 10^18:
                return (stor5[address(arg1)] / stor12 / 1000000000 * 10^18)
            _94 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _94 + 68] = mem[idx + _90 + 32]
                idx = idx + 32
                continue 
            mem[_94 + 94] = 0
            revert with memory
              from mem[64]
               len _94 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 5
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] > t:
            _75 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _75 + 68] = mem[idx + _73 + 32]
                idx = idx + 32
                continue 
            mem[_75 + 98] = 0
            revert with memory
              from mem[64]
               len _75 + -mem[64] + 100
        if t < stor5[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor11[idx]] <= s:
            if s < stor6[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor6[stor11[idx]]
            t = t - stor5[stor11[idx]]
            continue 
        _93 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _93 + 68] = mem[idx + _89 + 32]
            idx = idx + 32
            continue 
        mem[_93 + 98] = 0
        revert with memory
          from mem[64]
           len _93 + -mem[64] + 100
    if t < stor12 / 1000000000 * 10^18:
        if not stor12 / 1000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor5[address(arg1)] / stor12 / 1000000000 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor5[address(arg1)] / t / s)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor11.length:
        revert with 0, 17
    if stor11.length + 1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
    if stor5[address(arg1)]:
        mem[0] = arg1
        mem[32] = 5
        if stor5[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 1000000000 * 10^18
        t = stor12
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > t:
                _75 = mem[64]
                mem[64] = mem[64] + 64
                mem[_75] = 26
                mem[_75 + 32] = 'SafeMath: division by zero'
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                if stor12 / 1000000000 * 10^18:
                    stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
                    stor9[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _93 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _93 + 68] = mem[idx + _87 + 32]
                    idx = idx + 32
                    continue 
                mem[_93 + 94] = 0
                revert with memory
                  from mem[64]
                   len _93 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 6
            if stor6[stor11[idx]] > s:
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 26
                mem[_79 + 32] = 'SafeMath: division by zero'
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 26
                mem[_95 + 32] = 'SafeMath: division by zero'
                if stor12 / 1000000000 * 10^18:
                    stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
                    stor9[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _99 + 68] = mem[idx + _95 + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 94] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 5
            _78 = mem[64]
            mem[64] = mem[64] + 64
            mem[_78] = 30
            mem[_78 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] > t:
                _80 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _80 + 68] = mem[idx + _78 + 32]
                    idx = idx + 32
                    continue 
                mem[_80 + 98] = 0
                revert with memory
                  from mem[64]
                   len _80 + -mem[64] + 100
            if t < stor5[stor11[idx]]:
                revert with 0, 17
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 6
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 30
            mem[_94 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor11[idx]] <= s:
                if s < stor6[stor11[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor6[stor11[idx]]
                t = t - stor5[stor11[idx]]
                continue 
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _98 + 68] = mem[idx + _94 + 32]
                idx = idx + 32
                continue 
            mem[_98 + 98] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
        if t < stor12 / 1000000000 * 10^18:
            if not stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
        else:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor6[address(arg1)] = stor5[address(arg1)] / t / s
    stor9[address(arg1)] = 1
    stor11.length++
    stor175B[stor11.length] = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The pair cannot be removed from automatedMarketMakerPairs'
    stor45[address(arg1)] = uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = uint8(arg2)
    mem[96] = arg2
    emit ExcludedMaxTransactionAmount(arg2, arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if not stor9[address(arg1)]:
            revert with 0, 'Account is not excluded'
        idx = 0
        while idx < stor11.length:
            mem[0] = 11
            if stor11[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor11.length < 1:
                revert with 0, 17
            if stor11.length - 1 >= stor11.length:
                revert with 0, 50
            if idx >= stor11.length:
                revert with 0, 50
            stor11[idx] = stor11[stor11.length]
            stor6[address(arg1)] = 0
            stor9[address(arg1)] = 0
            if not stor11.length:
                revert with 0, 49
            stor11[stor11.length] = 0
            stor11.length--
    else:
        if stor9[address(arg1)]:
            revert with 0, 'Account is already excluded'
        if 1 > !stor11.length:
            revert with 0, 17
        if stor11.length + 1 > 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
        if stor5[address(arg1)]:
            mem[0] = arg1
            mem[32] = 5
            if stor5[address(arg1)] > stor12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_153] = 26
                    mem[_153 + 32] = 'SafeMath: division by zero'
                    _175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_175] = 26
                    mem[_175 + 32] = 'SafeMath: division by zero'
                    if not stor12 / 1000000000 * 10^18:
                        _181 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _181 + 68] = mem[idx + _175 + 32]
                            idx = idx + 32
                            continue 
                        mem[_181 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _181 + -mem[64] + 100
                    stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
                    stor9[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor9[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor11.length:
                            mem[0] = 11
                            if stor11[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor11.length < 1:
                                revert with 0, 17
                            if stor11.length - 1 >= stor11.length:
                                revert with 0, 50
                            if idx >= stor11.length:
                                revert with 0, 50
                            stor11[idx] = stor11[stor11.length]
                            stor6[address(arg1)] = 0
                            stor9[address(arg1)] = 0
                            if not stor11.length:
                                revert with 0, 49
                            stor11[stor11.length] = 0
                            stor11.length--
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > s:
                    _165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_165] = 26
                    mem[_165 + 32] = 'SafeMath: division by zero'
                    _183 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_183] = 26
                    mem[_183 + 32] = 'SafeMath: division by zero'
                    if not stor12 / 1000000000 * 10^18:
                        _187 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _187 + 68] = mem[idx + _183 + 32]
                            idx = idx + 32
                            continue 
                        mem[_187 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _187 + -mem[64] + 100
                    stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
                    stor9[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor9[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor11.length:
                            mem[0] = 11
                            if stor11[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor11.length < 1:
                                revert with 0, 17
                            if stor11.length - 1 >= stor11.length:
                                revert with 0, 50
                            if idx >= stor11.length:
                                revert with 0, 50
                            stor11[idx] = stor11[stor11.length]
                            stor6[address(arg1)] = 0
                            stor9[address(arg1)] = 0
                            if not stor11.length:
                                revert with 0, 49
                            stor11[stor11.length] = 0
                            stor11.length--
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 5
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 30
                mem[_164 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor11[idx]] > t:
                    _168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _168 + 68] = mem[idx + _164 + 32]
                        idx = idx + 32
                        continue 
                    mem[_168 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _168 + -mem[64] + 100
                if t < stor5[stor11[idx]]:
                    revert with 0, 17
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 30
                mem[_182 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor11[idx]] <= s:
                    if s < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor6[stor11[idx]]
                    t = t - stor5[stor11[idx]]
                    continue 
                _186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _186 + 68] = mem[idx + _182 + 32]
                    idx = idx + 32
                    continue 
                mem[_186 + 98] = 0
                revert with memory
                  from mem[64]
                   len _186 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                stor6[address(arg1)] = stor5[address(arg1)] / stor12 / 1000000000 * 10^18
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                stor6[address(arg1)] = stor5[address(arg1)] / t / s
        stor9[address(arg1)] = 1
        stor11.length++
        stor175B[stor11.length] = arg1
        if not arg2:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not stor9[address(arg1)]:
                revert with 0, 'Account is not excluded'
            idx = 0
            while idx < stor11.length:
                mem[0] = 11
                if stor11[idx] != arg1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor11.length < 1:
                    revert with 0, 17
                if stor11.length - 1 >= stor11.length:
                    revert with 0, 50
                if idx >= stor11.length:
                    revert with 0, 50
                stor11[idx] = stor11[stor11.length]
                stor6[address(arg1)] = 0
                stor9[address(arg1)] = 0
                if not stor11.length:
                    revert with 0, 49
                stor11[stor11.length] = 0
                stor11.length--
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > 1000000000 * 10^18:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = 1000000000 * 10^18
                t = stor12
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] > t:
                        _2254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2254] = 26
                        mem[_2254 + 32] = 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2578] = 30
                        mem[_2578 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2636 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2636 + 68] = mem[idx + _2578 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2636 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2636 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2883 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2883] = 30
                        mem[_2883 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3006 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3006 + 68] = mem[idx + _2883 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3006 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3006 + -mem[64] + 100
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    if stor6[stor11[idx]] <= s:
                        if idx >= stor11.length:
                            revert with 0, 50
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _2281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2281] = 30
                        mem[_2281 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] > t:
                            _2294 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2294 + 68] = mem[idx + _2281 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2294 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2294 + -mem[64] + 100
                        if t < stor5[stor11[idx]]:
                            revert with 0, 17
                        if idx >= stor11.length:
                            revert with 0, 50
                        mem[0] = stor11[idx]
                        mem[32] = 6
                        _2386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2386] = 30
                        mem[_2386 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor11[idx]] <= s:
                            if s < stor6[stor11[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor6[stor11[idx]]
                            t = t - stor5[stor11[idx]]
                            continue 
                        _2402 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2402 + 68] = mem[idx + _2386 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2402 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2402 + -mem[64] + 100
                    _2282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2282] = 26
                    mem[_2282 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2638] = 30
                    mem[_2638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2690 + 68] = mem[idx + _2638 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3007] = 30
                    mem[_3007 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3136 + 68] = mem[idx + _3007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3136 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3136 + -mem[64] + 100
                if t < stor12 / 1000000000 * 10^18:
                    if not arg1:
                        return 0
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if arg1 and stor25 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor25 / arg1 != stor25:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor25 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor25 / 100:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2253] = 26
                    mem[_2253 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor25 / 100:
                            return 0
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 30
                        mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                        _2877 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2877] = 30
                        mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                            if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                        _3001 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3001 + 68] = mem[idx + _2877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3001 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3001 + -mem[64] + 100
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        _2573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2573] = 30
                        mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2632 + 68] = mem[idx + _2573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2632 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2632 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2875] = 30
                        mem[_2875 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3000 + 68] = mem[idx + _2875 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3000 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3000 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2771] = 30
                    mem[_2771 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2874 + 68] = mem[idx + _2771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2874 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2874 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3289] = 30
                    mem[_3289 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                    _3459 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3459 + 68] = mem[idx + _3289 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3459 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3459 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2279 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2279] = 30
                    mem[_2279 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2293 + 68] = mem[idx + _2279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2293 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2293 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2384] = 30
                    mem[_2384 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2400 + 68] = mem[idx + _2384 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2400 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2400 + -mem[64] + 100
                _2280 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2280] = 26
                mem[_2280 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor25 / 100:
                        return 0
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2635] = 30
                    mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                    _3005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3005] = 30
                    mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                        if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                    _3135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3135 + 68] = mem[idx + _3005 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3135 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3135 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    _2634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2634] = 30
                    mem[_2634 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2688 + 68] = mem[idx + _2634 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2688 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2688 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3003 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3003] = 30
                    mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3134 + 68] = mem[idx + _3003 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3134 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3134 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2878] = 30
                mem[_2878 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    _3002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3002 + 68] = mem[idx + _2878 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3002 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3002 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                _3462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3462] = 30
                mem[_3462 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                _3612 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3612 + 68] = mem[idx + _3462 + 32]
                    idx = idx + 32
                    continue 
                mem[_3612 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3612 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    if not arg1 * stor25 / 100:
                        return 0
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor25 / 100:
                    return 0
                if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor25 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor25 / 100 * t / s:
                    revert with 0, 17
                return (-1 * arg1 * stor25 / 100 * t / s)
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor25 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                revert with 0, 17
            if not arg1 * stor25 / 100:
                revert with 0, 18
            if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 0, 17
            if arg1 * stor25 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * stor25 / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * stor25 / 100 * t / s))
        if arg1 and stor23 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor23 / arg1 != stor23:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor23 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor23 / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor23 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor23 / 100) < 0:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2252] = 26
                    mem[_2252 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor23 / 100:
                            return 0
                        if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2570] = 30
                        mem[_2570 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            _2627 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2627 + 68] = mem[idx + _2570 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2627 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2627 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _2867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2867] = 30
                        mem[_2867 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                        _2992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2992 + 68] = mem[idx + _2867 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2992 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2992 + -mem[64] + 100
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _2569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2569] = 30
                        mem[_2569 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2626 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2626 + 68] = mem[idx + _2569 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2626 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2626 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2865] = 30
                        mem[_2865 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _2991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2991 + 68] = mem[idx + _2865 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2991 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2991 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2766 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2766] = 30
                    mem[_2766 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        _2864 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2864 + 68] = mem[idx + _2766 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2864 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2864 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3278 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3278] = 30
                    mem[_3278 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                            revert with 0, 17
                        return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
                    _3449 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3449 + 68] = mem[idx + _3278 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3449 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3449 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2277] = 30
                    mem[_2277 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2292 + 68] = mem[idx + _2277 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2292 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2292 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2382] = 30
                    mem[_2382 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2398 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2398 + 68] = mem[idx + _2382 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2398 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2398 + -mem[64] + 100
                _2278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2278] = 26
                mem[_2278 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor23 / 100:
                        return 0
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2631 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2631] = 30
                    mem[_2631 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        _2683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2683 + 68] = mem[idx + _2631 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2683 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2683 + -mem[64] + 100
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _2996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2996] = 30
                    mem[_2996 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                    _3131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3131 + 68] = mem[idx + _2996 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3131 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3131 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    _2630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2630] = 30
                    mem[_2630 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2682 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2682 + 68] = mem[idx + _2630 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2682 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2682 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3130 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3130 + 68] = mem[idx + _2994 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3130 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3130 + -mem[64] + 100
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2869 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2869] = 30
                mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    _2993 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2993 + 68] = mem[idx + _2869 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2993 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2993 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3452] = 30
                mem[_3452 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
                _3609 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3609 + 68] = mem[idx + _3452 + 32]
                    idx = idx + 32
                    continue 
                mem[_3609 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3609 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    if not arg1 * stor23 / 100:
                        return 0
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor23 / 100:
                    return 0
                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor23 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor23 / 100 * t / s:
                    revert with 0, 17
                if 0 > -1 * arg1 * stor23 / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor23 / 100 * t / s < 0:
                    revert with 0, 17
                return (-1 * arg1 * stor23 / 100 * t / s)
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor23 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                revert with 0, 17
            if not arg1 * stor23 / 100:
                revert with 0, 18
            if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                revert with 0, 17
            if 0 > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < 0:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * stor23 / 100 * t / s))
        if arg1 and stor25 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor25 / arg1 != stor25:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * stor23 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * stor23 / 100:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * stor25 / 100 > arg1 - (arg1 * stor23 / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * stor23 / 100) < arg1 * stor25 / 100:
            revert with 0, 17
        idx = 0
        s = 1000000000 * 10^18
        t = stor12
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > t:
                _2251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2251] = 26
                mem[_2251 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor23 / 100:
                        if not arg1 * stor25 / 100:
                            return 0
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2562] = 30
                        mem[_2562 + 32] = 'SafeMath: subtraction overflow'
                        _2854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2854] = 30
                        mem[_2854 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                            if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                        _2982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2982 + 68] = mem[idx + _2854 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2982 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2982 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        _2561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2561] = 30
                        mem[_2561 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            _2620 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2620 + 68] = mem[idx + _2561 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2620 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2620 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _2852 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2852] = 30
                        mem[_2852 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                        _2981 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2981 + 68] = mem[idx + _2852 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2981 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2981 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2757 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2757] = 30
                    mem[_2757 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        _2851 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2851 + 68] = mem[idx + _2757 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2851 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2851 + -mem[64] + 100
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3264] = 30
                    mem[_3264 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return ((-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                    _3434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3434 + 68] = mem[idx + _3264 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3434 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3434 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    if not arg1 * stor25 / 100:
                        _2560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2560] = 30
                        mem[_2560 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2619 + 68] = mem[idx + _2560 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2619 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2619 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2849] = 30
                        mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _2980 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2980 + 68] = mem[idx + _2849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2980 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2980 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2756] = 30
                    mem[_2756 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2848 + 68] = mem[idx + _2756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2848 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2848 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3262] = 30
                    mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                    _3432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3432 + 68] = mem[idx + _3262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3432 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3432 + -mem[64] + 100
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    _2755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2755] = 30
                    mem[_2755 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        _2847 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2847 + 68] = mem[idx + _2755 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2847 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2847 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3260] = 30
                    mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                            revert with 0, 17
                        return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
                    _3431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3431 + 68] = mem[idx + _3260 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3431 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3431 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3123] = 30
                mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    _3259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3259 + 68] = mem[idx + _3123 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3259 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3259 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3755] = 30
                mem[_3755 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                _3905 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3905 + 68] = mem[idx + _3755 + 32]
                    idx = idx + 32
                    continue 
                mem[_3905 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3905 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 6
            if stor6[stor11[idx]] <= s:
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 5
                _2275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2275] = 30
                mem[_2275 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor11[idx]] > t:
                    _2291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2291 + 68] = mem[idx + _2275 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2291 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2291 + -mem[64] + 100
                if t < stor5[stor11[idx]]:
                    revert with 0, 17
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                _2380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2380] = 30
                mem[_2380 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor11[idx]] <= s:
                    if s < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor6[stor11[idx]]
                    t = t - stor5[stor11[idx]]
                    continue 
                _2396 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2396 + 68] = mem[idx + _2380 + 32]
                    idx = idx + 32
                    continue 
                mem[_2396 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2396 + -mem[64] + 100
            _2276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2276] = 26
            mem[_2276 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 * stor23 / 100:
                    if not arg1 * stor25 / 100:
                        return 0
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                        if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                    _3127 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3127 + 68] = mem[idx + _2990 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3127 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3127 + -mem[64] + 100
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    _2624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2624] = 30
                    mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        _2680 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2680 + 68] = mem[idx + _2624 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2680 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2680 + -mem[64] + 100
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _2988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2988] = 30
                    mem[_2988 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                    _3126 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3126 + 68] = mem[idx + _2988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3126 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3126 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2857 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2857] = 30
                mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                    _2987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2987 + 68] = mem[idx + _2857 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2987 + -mem[64] + 100
                if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3442] = 30
                mem[_3442 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return ((-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                _3606 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3606 + 68] = mem[idx + _3442 + 32]
                    idx = idx + 32
                    continue 
                mem[_3606 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3606 + -mem[64] + 100
            if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor23 / 100:
                if not arg1 * stor25 / 100:
                    _2623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2623] = 30
                    mem[_2623 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2679 + 68] = mem[idx + _2623 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2679 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2679 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3125 + 68] = mem[idx + _2985 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3125 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3125 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2856 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2856] = 30
                mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    _2984 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2984 + 68] = mem[idx + _2856 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2984 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2984 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                _3440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3440] = 30
                mem[_3440 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
                _3604 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3604 + 68] = mem[idx + _3440 + 32]
                    idx = idx + 32
                    continue 
                mem[_3604 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3604 + -mem[64] + 100
            if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                revert with 0, 17
            if not arg1 * stor23 / 100:
                revert with 0, 18
            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor25 / 100:
                _2855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2855] = 30
                mem[_2855 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    _2983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2983 + 68] = mem[idx + _2855 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2983 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2983 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3438] = 30
                mem[_3438 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
                _3603 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3603 + 68] = mem[idx + _3438 + 32]
                    idx = idx + 32
                    continue 
                mem[_3603 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3603 + -mem[64] + 100
            if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                revert with 0, 17
            if not arg1 * stor25 / 100:
                revert with 0, 18
            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _3267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3267] = 30
            mem[_3267 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                _3437 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3437 + 68] = mem[idx + _3267 + 32]
                    idx = idx + 32
                    continue 
                mem[_3437 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3437 + -mem[64] + 100
            if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                revert with 0, 17
            _3909 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3909] = 30
            mem[_3909 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
            _4013 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4013 + 68] = mem[idx + _3909 + 32]
                idx = idx + 32
                continue 
            mem[_4013 + 98] = 0
            revert with memory
              from mem[64]
               len _4013 + -mem[64] + 100
        if t < stor12 / 1000000000 * 10^18:
            if not arg1:
                if not arg1 * stor23 / 100:
                    if not arg1 * stor25 / 100:
                        return 0
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return (-1 * arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18)
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18)
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                return ((-1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
            if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor23 / 100:
                if not arg1 * stor25 / 100:
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
            if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                revert with 0, 17
            if not arg1 * stor23 / 100:
                revert with 0, 18
            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor25 / 100:
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18))
            if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                revert with 0, 17
            if not arg1 * stor25 / 100:
                revert with 0, 18
            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                revert with 0, 17
            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                revert with 0, 17
            return ((arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) - (arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18))
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * stor23 / 100:
                if not arg1 * stor25 / 100:
                    return 0
                if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor25 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor25 / 100 * t / s:
                    revert with 0, 17
                return (-1 * arg1 * stor25 / 100 * t / s)
            if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                revert with 0, 17
            if not arg1 * stor23 / 100:
                revert with 0, 18
            if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor25 / 100:
                if arg1 * stor23 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor23 / 100 * t / s:
                    revert with 0, 17
                if 0 > -1 * arg1 * stor23 / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor23 / 100 * t / s < 0:
                    revert with 0, 17
                return (-1 * arg1 * stor23 / 100 * t / s)
            if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                revert with 0, 17
            if not arg1 * stor25 / 100:
                revert with 0, 18
            if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor23 / 100 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * stor23 / 100 * t / s:
                revert with 0, 17
            if arg1 * stor25 / 100 * t / s > -1 * arg1 * stor23 / 100 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * stor23 / 100 * t / s < arg1 * stor25 / 100 * t / s:
                revert with 0, 17
            return ((-1 * arg1 * stor23 / 100 * t / s) - (arg1 * stor25 / 100 * t / s))
        if arg1 and t / s > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * stor23 / 100:
            if not arg1 * stor25 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                revert with 0, 17
            if not arg1 * stor25 / 100:
                revert with 0, 18
            if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 0, 17
            if arg1 * stor25 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * stor25 / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * stor25 / 100 * t / s))
        if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
            revert with 0, 17
        if not arg1 * stor23 / 100:
            revert with 0, 18
        if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * stor25 / 100:
            if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                revert with 0, 17
            if 0 > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < 0:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * stor23 / 100 * t / s))
        if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
            revert with 0, 17
        if not arg1 * stor25 / 100:
            revert with 0, 18
        if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * stor23 / 100 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * t / s < arg1 * stor23 / 100 * t / s:
            revert with 0, 17
        if arg1 * stor25 / 100 * t / s > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < arg1 * stor25 / 100 * t / s:
            revert with 0, 17
        return ((arg1 * t / s) - (arg1 * stor23 / 100 * t / s) - (arg1 * stor25 / 100 * t / s))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2258] = 26
                    mem[_2258 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2602] = 30
                    mem[_2602 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2656 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2656 + 68] = mem[idx + _2602 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2656 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2656 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _2927 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2927] = 30
                    mem[_2927 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3040 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3040 + 68] = mem[idx + _2927 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3040 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3040 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2289] = 30
                    mem[_2289 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2298 + 68] = mem[idx + _2289 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2298 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2298 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2394] = 30
                    mem[_2394 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2410 + 68] = mem[idx + _2394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2410 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2410 + -mem[64] + 100
                _2290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2290] = 26
                mem[_2290 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2658 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2658] = 30
                mem[_2658 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    _2707 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2707 + 68] = mem[idx + _2658 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2707 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2707 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                _3041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3041] = 30
                mem[_3041 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                _3156 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3156 + 68] = mem[idx + _3041 + 32]
                    idx = idx + 32
                    continue 
                mem[_3156 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3156 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    return 0
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                return (arg1 * stor12 / 1000000000 * 10^18)
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 0, 17
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 0, 17
        else:
            if arg1 and stor25 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor25 / arg1 != stor25:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor25 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor25 / 100:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2257] = 26
                    mem[_2257 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor25 / 100:
                            return 0
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2598 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2598] = 30
                        mem[_2598 + 32] = 'SafeMath: subtraction overflow'
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                            if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            else:
                                return 0
                        _3035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3035 + 68] = mem[idx + _2921 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3035 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3035 + -mem[64] + 100
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        _2597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2597] = 30
                        mem[_2597 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2652 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2652 + 68] = mem[idx + _2597 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2652 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2652 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2919 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2919] = 30
                        mem[_2919 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3034 + 68] = mem[idx + _2919 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2799] = 30
                    mem[_2799 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2918 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2918 + 68] = mem[idx + _2799 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2918 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2918 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3343] = 30
                    mem[_3343 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3505 + 68] = mem[idx + _3343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3505 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3505 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2287] = 30
                    mem[_2287 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2297 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2297 + 68] = mem[idx + _2287 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2297 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2297 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2392] = 30
                    mem[_2392 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2408 + 68] = mem[idx + _2392 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2408 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2408 + -mem[64] + 100
                _2288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2288] = 26
                mem[_2288 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor25 / 100:
                        return 0
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2655] = 30
                    mem[_2655 + 32] = 'SafeMath: subtraction overflow'
                    _3039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3039] = 30
                    mem[_3039 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                        if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        else:
                            return 0
                    _3155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3155 + 68] = mem[idx + _3039 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3155 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3155 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    _2654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2654] = 30
                    mem[_2654 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2705 + 68] = mem[idx + _2654 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2705 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2705 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3037] = 30
                    mem[_3037 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3154 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3154 + 68] = mem[idx + _3037 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3154 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3154 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2922] = 30
                mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / 1000000000 * 10^18:
                    _3036 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3036 + 68] = mem[idx + _2922 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3036 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3036 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                    revert with 0, 17
                _3508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3508] = 30
                mem[_3508 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                _3627 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3627 + 68] = mem[idx + _3508 + 32]
                    idx = idx + 32
                    continue 
                mem[_3627 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3627 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    if arg1 * stor25 / 100:
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                return (arg1 * stor12 / 1000000000 * 10^18)
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * stor25 / 100:
                    if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor25 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor25 / 100 * t / s:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor25 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
            else:
                if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * stor25 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor25 / 100 * t / s:
                    revert with 0, 17
    else:
        if arg1 and stor23 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor23 / arg1 != stor23:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor23 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor23 / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor23 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor23 / 100) < 0:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2256 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2256] = 26
                    mem[_2256 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor23 / 100:
                            return 0
                        if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2594] = 30
                        mem[_2594 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            _2647 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2647 + 68] = mem[idx + _2594 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2647 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2647 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _2911 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2911] = 30
                        mem[_2911 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3026 + 68] = mem[idx + _2911 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3026 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3026 + -mem[64] + 100
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        _2593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2593] = 30
                        mem[_2593 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2646 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2646 + 68] = mem[idx + _2593 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2646 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2646 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _2909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2909] = 30
                        mem[_2909 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3025 + 68] = mem[idx + _2909 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3025 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3025 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2794] = 30
                    mem[_2794 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        _2908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2908 + 68] = mem[idx + _2794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2908 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3332 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3332] = 30
                    mem[_3332 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3495 + 68] = mem[idx + _3332 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2285] = 30
                    mem[_2285 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2296 + 68] = mem[idx + _2285 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2296 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2296 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2390] = 30
                    mem[_2390 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2406 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2406 + 68] = mem[idx + _2390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2406 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2406 + -mem[64] + 100
                _2286 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2286] = 26
                mem[_2286 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor23 / 100:
                        return 0
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2651] = 30
                    mem[_2651 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        _2700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2700 + 68] = mem[idx + _2651 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2700 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2700 + -mem[64] + 100
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3030 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3030] = 30
                    mem[_3030 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3151 + 68] = mem[idx + _3030 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3151 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3151 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    _2650 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2650] = 30
                    mem[_2650 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _2699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2699 + 68] = mem[idx + _2650 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2699 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2699 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3028] = 30
                    mem[_3028 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3150 + 68] = mem[idx + _3028 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3150 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3150 + -mem[64] + 100
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2913 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2913] = 30
                mem[_2913 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    _3027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3027 + 68] = mem[idx + _2913 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3027 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3027 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3498] = 30
                mem[_3498 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                _3624 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3624 + 68] = mem[idx + _3498 + 32]
                    idx = idx + 32
                    continue 
                mem[_3624 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3624 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    if arg1 * stor23 / 100:
                        if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                        revert with 0, 17
                return (arg1 * stor12 / 1000000000 * 10^18)
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * stor23 / 100:
                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor23 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor23 / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor23 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor23 / 100 * t / s < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor23 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
            else:
                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < 0:
                    revert with 0, 17
        else:
            if arg1 and stor25 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor25 / arg1 != stor25:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor23 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor23 / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor25 / 100 > arg1 - (arg1 * stor23 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor23 / 100) < arg1 * stor25 / 100:
                revert with 0, 17
            idx = 0
            s = 1000000000 * 10^18
            t = stor12
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] > t:
                    _2255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2255] = 26
                    mem[_2255 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 * stor23 / 100:
                            if not arg1 * stor25 / 100:
                                return 0
                            if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                                revert with 0, 17
                            if not arg1 * stor25 / 100:
                                revert with 0, 18
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2586 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2586] = 30
                            mem[_2586 + 32] = 'SafeMath: subtraction overflow'
                            _2898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2898] = 30
                            mem[_2898 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                                if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3016 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3016 + 68] = mem[idx + _2898 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3016 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3016 + -mem[64] + 100
                        if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor25 / 100:
                            _2585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2585] = 30
                            mem[_2585 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                                _2640 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2640 + 68] = mem[idx + _2585 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2640 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2640 + -mem[64] + 100
                            if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            _2896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2896] = 30
                            mem[_2896 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3015 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3015 + 68] = mem[idx + _2896 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3015 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3015 + -mem[64] + 100
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2785] = 30
                        mem[_2785 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            _2895 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2895 + 68] = mem[idx + _2785 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2895 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2895 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _3318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3318] = 30
                        mem[_3318 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            else:
                                return 0
                        _3480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3480 + 68] = mem[idx + _3318 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3480 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3480 + -mem[64] + 100
                    if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor23 / 100:
                        if not arg1 * stor25 / 100:
                            _2584 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2584] = 30
                            mem[_2584 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / 1000000000 * 10^18:
                                _2639 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2639 + 68] = mem[idx + _2584 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2639 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2639 + -mem[64] + 100
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            _2893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2893] = 30
                            mem[_2893 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                                if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / 1000000000 * 10^18)
                            _3014 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3014 + 68] = mem[idx + _2893 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3014 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3014 + -mem[64] + 100
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2784] = 30
                        mem[_2784 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2892 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2892 + 68] = mem[idx + _2784 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2892 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2892 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _3316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3316] = 30
                        mem[_3316 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3478 + 68] = mem[idx + _3316 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3478 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3478 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        _2783 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2783] = 30
                        mem[_2783 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                            _2891 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2891 + 68] = mem[idx + _2783 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2891 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2891 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _3314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3314] = 30
                        mem[_3314 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                            if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3477 + 68] = mem[idx + _3314 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3477 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3477 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3143] = 30
                    mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        _3313 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3313 + 68] = mem[idx + _3143 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3313 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3313 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3795] = 30
                    mem[_3795 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3947 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3947 + 68] = mem[idx + _3795 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3947 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3947 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _2283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2283] = 30
                    mem[_2283 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] > t:
                        _2295 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2295 + 68] = mem[idx + _2283 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2295 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2295 + -mem[64] + 100
                    if t < stor5[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2388] = 30
                    mem[_2388 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] <= s:
                        if s < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor11[idx]]
                        t = t - stor5[stor11[idx]]
                        continue 
                    _2404 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2404 + 68] = mem[idx + _2388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2404 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2404 + -mem[64] + 100
                _2284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2284] = 26
                mem[_2284 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * stor23 / 100:
                        if not arg1 * stor25 / 100:
                            return 0
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2645] = 30
                        mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                        _3024 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3024] = 30
                        mem[_3024 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= 0:
                            if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            else:
                                return 0
                        _3147 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3147 + 68] = mem[idx + _3024 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3147 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3147 + -mem[64] + 100
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        _2644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2644] = 30
                        mem[_2644 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                            _2697 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2697 + 68] = mem[idx + _2644 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2697 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2697 + -mem[64] + 100
                        if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        _3022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3022] = 30
                        mem[_3022 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3146 + 68] = mem[idx + _3022 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3146 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3146 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2901] = 30
                    mem[_2901 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                        _3021 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3021 + 68] = mem[idx + _2901 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3021 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3021 + -mem[64] + 100
                    if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3488] = 30
                    mem[_3488 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        else:
                            return 0
                    _3621 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3621 + 68] = mem[idx + _3488 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3621 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3621 + -mem[64] + 100
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    if not arg1 * stor25 / 100:
                        _2643 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2643] = 30
                        mem[_2643 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            _2696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2696 + 68] = mem[idx + _2643 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2696 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2696 + -mem[64] + 100
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        _3019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3019] = 30
                        mem[_3019 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / 1000000000 * 10^18:
                            if arg1 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / 1000000000 * 10^18)
                        _3145 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3145 + 68] = mem[idx + _3019 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3145 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3145 + -mem[64] + 100
                    if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2900] = 30
                    mem[_2900 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / 1000000000 * 10^18:
                        _3018 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3018 + 68] = mem[idx + _2900 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3018 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3018 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < 0:
                        revert with 0, 17
                    _3486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3486] = 30
                    mem[_3486 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= arg1 * stor12 / 1000000000 * 10^18:
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3619 + 68] = mem[idx + _3486 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3619 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3619 + -mem[64] + 100
                if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    _2899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2899] = 30
                    mem[_2899 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                        _3017 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3017 + 68] = mem[idx + _2899 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3017 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3017 + -mem[64] + 100
                    if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    _3484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3484] = 30
                    mem[_3484 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / 1000000000 * 10^18)
                    _3618 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3618 + 68] = mem[idx + _3484 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3618 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3618 + -mem[64] + 100
                if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                    revert with 0, 17
                if not arg1 * stor25 / 100:
                    revert with 0, 18
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3321] = 30
                mem[_3321 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                    _3483 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3483 + 68] = mem[idx + _3321 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3483 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3483 + -mem[64] + 100
                if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                    revert with 0, 17
                _3951 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3951] = 30
                mem[_3951 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 <= (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                    if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                        revert with 0, 17
                    return (arg1 * stor12 / 1000000000 * 10^18)
                _4019 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4019 + 68] = mem[idx + _3951 + 32]
                    idx = idx + 32
                    continue 
                mem[_4019 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4019 + -mem[64] + 100
            if t < stor12 / 1000000000 * 10^18:
                if not arg1:
                    if not arg1 * stor23 / 100:
                        if arg1 * stor25 / 100:
                            if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                                revert with 0, 17
                            if not arg1 * stor25 / 100:
                                revert with 0, 18
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                    else:
                        if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                            revert with 0, 17
                        if not arg1 * stor23 / 100:
                            revert with 0, 18
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor25 / 100:
                            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                                revert with 0, 17
                            if not arg1 * stor25 / 100:
                                revert with 0, 18
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                            if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                                revert with 0, 17
                    return 0
                if arg1 and stor12 / 1000000000 * 10^18 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / 1000000000 * 10^18 / arg1 != stor12 / 1000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor23 / 100:
                    if not arg1 * stor25 / 100:
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < 0:
                            revert with 0, 17
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                else:
                    if arg1 * stor23 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor23 / 100 != stor12 / 1000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        if 0 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor25 / 100 and stor12 / 1000000000 * 10^18 > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 / arg1 * stor25 / 100 != stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18 > arg1 * stor12 / 1000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / 1000000000 * 10^18 < arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                        if arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18 > (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor12 / 1000000000 * 10^18) - (arg1 * stor23 / 100 * stor12 / 1000000000 * 10^18) < arg1 * stor25 / 100 * stor12 / 1000000000 * 10^18:
                            revert with 0, 17
                return (arg1 * stor12 / 1000000000 * 10^18)
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor23 / 100:
                    if arg1 * stor25 / 100:
                        if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor25 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor25 / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                        revert with 0, 17
                    if not arg1 * stor23 / 100:
                        revert with 0, 18
                    if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor25 / 100:
                        if arg1 * stor23 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor23 / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor23 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor23 / 100 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                            revert with 0, 17
                        if not arg1 * stor25 / 100:
                            revert with 0, 18
                        if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor23 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor23 / 100 * t / s:
                            revert with 0, 17
                        if arg1 * stor25 / 100 * t / s > -1 * arg1 * stor23 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor23 / 100 * t / s < arg1 * stor25 / 100 * t / s:
                            revert with 0, 17
                return 0
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor23 / 100:
                if not arg1 * stor25 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * stor25 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * stor25 / 100 * t / s:
                        revert with 0, 17
            else:
                if arg1 * stor23 / 100 and t / s > -1 / arg1 * stor23 / 100:
                    revert with 0, 17
                if not arg1 * stor23 / 100:
                    revert with 0, 18
                if arg1 * stor23 / 100 * t / s / arg1 * stor23 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor25 / 100:
                    if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor25 / 100 and t / s > -1 / arg1 * stor25 / 100:
                        revert with 0, 17
                    if not arg1 * stor25 / 100:
                        revert with 0, 18
                    if arg1 * stor25 / 100 * t / s / arg1 * stor25 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor23 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * stor23 / 100 * t / s:
                        revert with 0, 17
                    if arg1 * stor25 / 100 * t / s > (arg1 * t / s) - (arg1 * stor23 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * stor23 / 100 * t / s) < arg1 * stor25 / 100 * t / s:
                        revert with 0, 17
    return (arg1 * t / s)
}



}
