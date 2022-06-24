contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'FOMO Pot', 0

const totalSupply = 100000000000 * 10^18

const decimals = 18

const getTime = block.timestamp

const symbol = 'FOMO', 0

const FEE_DIVISOR = 10000


address owner;
uint256 unlockTime;
address marketingAddress;
address devAddress;
address stakingAddress;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
uint8 transferDelayEnabled;
uint8 limitsInEffect; offset 8
uint16 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of address stor13;
uint256 stor14;
uint256 totalFees;
uint256 _buyTaxFee;
uint256 _buyLiquidityFee;
uint256 _buyMarketingFee;
uint256 sub_c61f3838;
uint256 _buyDevFee;
uint256 _sellTaxFee;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 sub_b7668670;
uint256 _sellDevFee;
uint256 tradingActiveBlock;
uint256 _liquidityTokensToSwap;
uint256 _marketingTokensToSwap;
uint256 sub_e4844854;
uint256 sub_2d691bad;
uint256 maxTransactionAmount;
mapping of uint8 stor37;
mapping of uint8 stor38;
uint256 minimumTokensBeforeSwapAmount;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 tradingActive; offset 176
uint16 stor41; offset 168
uint128 stor41; offset 168
address uniswapV2PairAddress;

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

function _marketingTokensToSwap() {
    return _marketingTokensToSwap
}

function sub_2d691bad(?) {
    return sub_2d691bad
}

function devAddress() {
    return devAddress
}

function _liquidityTokensToSwap() {
    return _liquidityTokensToSwap
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
    return bool(stor11[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function _buyDevFee() {
    return _buyDevFee
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function owner() {
    return owner
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function marketingAddress() {
    return marketingAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor38[arg1])
}

function sub_b7668670(?) {
    return sub_b7668670
}

function tradingActive() {
    return bool(tradingActive)
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function sub_c61f3838(?) {
    return sub_c61f3838
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

function _sellDevFee() {
    return _sellDevFee
}

function stakingAddress() {
    return stakingAddress
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4844854(?) {
    return sub_e4844854
}

function tradingActiveBlock() {
    return tradingActiveBlock
}

function _buyTaxFee() {
    return _buyTaxFee
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = 0
    return 1
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

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingActive:
        revert with 0, 'cannot reenable trading'
    uint16(stor41.field_168) = 257
    tradingActiveBlock = block.number
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor41.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function addPresaleAddressForExclusions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = 1
    stor11[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '_devAddress address cannot be 0'
    devAddress = arg1
    emit 0x804ec39c: arg1
}

function withdrawStuckETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only withdraw if trading hasn't started'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function setStakingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_stakingAddress address cannot be 0'
    stakingAddress = arg1
    emit 0x7d7c7910: arg1
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

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_marketingAddress address cannot be 0'
    marketingAddress = arg1
    emit UpdatedMarketingAddress(arg1);
}

function updateMaxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set maxTransactionAmount lower than 0.2%'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    maxTransactionAmount = 10^18 * arg1
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

function updateMinimumTokensBeforeSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Swap amount cannot be lower than 0.001% total supply.'
    if arg1 > 500000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Swap amount cannot be higher than 0.5% total supply.'
    minimumTokensBeforeSwapAmount = arg1
}

function setBuyFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyTaxFee = arg1
    _buyLiquidityFee = arg2
    _buyMarketingFee = arg3
    _buyDevFee = arg4
    sub_c61f3838 = arg5
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 + arg5 > 1500:
        revert with 0, 'Must keep buy taxes below 15%'
    emit 0x33ab81cd: arg3, arg2, arg1, arg4, arg5
}

function setSellFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _sellTaxFee = arg1
    _sellLiquidityFee = arg2
    _sellMarketingFee = arg3
    _sellDevFee = arg4
    sub_b7668670 = arg5
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 + arg5 > 3000:
        revert with 0, 'Must keep sell taxes below 30%'
    emit 0x3e1202cb: arg3, arg2, arg1, arg4, arg5
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
    if not stor12[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor13.length:
        mem[0] = 13
        if stor13[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor13.length < 1:
            revert with 0, 17
        if stor13.length - 1 >= stor13.length:
            revert with 0, 50
        if idx >= stor13.length:
            revert with 0, 50
        stor13[idx] = stor13[stor13.length]
        stor7[address(arg1)] = 0
        stor12[address(arg1)] = 0
        if not stor13.length:
            revert with 0, 49
        stor13[stor13.length] = 0
        stor13.length--
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '_token address cannot be 0'
    if this.address == arg1:
        revert with 0, 'Can't withdraw native tokens'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TransferForeignToken(address(arg1), ext_call.return_data[0]);
    return bool(ext_call.return_data[0])
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 100000000000 * 10^18
    t = stor14
    while idx < stor13.length:
        mem[0] = stor13[idx]
        mem[32] = 6
        if stor6[stor13[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            if stor14 / 100000000000 * 10^18:
                return (arg1 / stor14 / 100000000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        if stor7[stor13[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = 26
            mem[_85 + 32] = 'SafeMath: division by zero'
            if stor14 / 100000000000 * 10^18:
                return (arg1 / stor14 / 100000000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 6
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor13[idx]] > t:
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
        if t < stor6[stor13[idx]]:
            revert with 0, 17
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor13[idx]] <= s:
            if s < stor7[stor13[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor13[idx]]
            t = t - stor6[stor13[idx]]
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
    if t < stor14 / 100000000000 * 10^18:
        if not stor14 / 100000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor14 / 100000000000 * 10^18)
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
    if stor12[address(arg1)]:
        return stor7[address(arg1)]
    mem[0] = arg1
    mem[32] = 6
    if stor6[address(arg1)] > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 100000000000 * 10^18
    t = stor14
    while idx < stor13.length:
        mem[0] = stor13[idx]
        mem[32] = 6
        if stor6[stor13[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor14 / 100000000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        if stor7[stor13[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 26
            mem[_90 + 32] = 'SafeMath: division by zero'
            if stor14 / 100000000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 6
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor13[idx]] > t:
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
        if t < stor6[stor13[idx]]:
            revert with 0, 17
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor13[idx]] <= s:
            if s < stor7[stor13[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor13[idx]]
            t = t - stor6[stor13[idx]]
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
    if t < stor14 / 100000000000 * 10^18:
        if not stor14 / 100000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor6[address(arg1)] / t / s)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor13.length:
        revert with 0, 17
    if stor13.length + 1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot exclude more than 20 accounts.  Include a previously excluded address.'
    if stor6[address(arg1)]:
        mem[0] = arg1
        mem[32] = 6
        if stor6[address(arg1)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 100000000000 * 10^18
        t = stor14
        while idx < stor13.length:
            mem[0] = stor13[idx]
            mem[32] = 6
            if stor6[stor13[idx]] > t:
                _75 = mem[64]
                mem[64] = mem[64] + 64
                mem[_75] = 26
                mem[_75 + 32] = 'SafeMath: division by zero'
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                if stor14 / 100000000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
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
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            if stor7[stor13[idx]] > s:
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 26
                mem[_79 + 32] = 'SafeMath: division by zero'
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 26
                mem[_95 + 32] = 'SafeMath: division by zero'
                if stor14 / 100000000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
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
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 6
            _78 = mem[64]
            mem[64] = mem[64] + 64
            mem[_78] = 30
            mem[_78 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor13[idx]] > t:
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
            if t < stor6[stor13[idx]]:
                revert with 0, 17
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 30
            mem[_94 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor13[idx]] <= s:
                if s < stor7[stor13[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor7[stor13[idx]]
                t = t - stor6[stor13[idx]]
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
        if t < stor14 / 100000000000 * 10^18:
            if not stor14 / 100000000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
        else:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / t / s
    stor12[address(arg1)] = 1
    stor13.length++
    stor13[stor13.length] = arg1
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
    stor38[address(arg1)] = uint8(arg2)
    stor37[address(arg1)] = uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if not stor12[address(arg1)]:
            revert with 0, 'Account is not excluded'
        idx = 0
        while idx < stor13.length:
            mem[0] = 13
            if stor13[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor13.length < 1:
                revert with 0, 17
            if stor13.length - 1 >= stor13.length:
                revert with 0, 50
            if idx >= stor13.length:
                revert with 0, 50
            stor13[idx] = stor13[stor13.length]
            stor7[address(arg1)] = 0
            stor12[address(arg1)] = 0
            if not stor13.length:
                revert with 0, 49
            stor13[stor13.length] = 0
            stor13.length--
    else:
        if stor12[address(arg1)]:
            revert with 0, 'Account is already excluded'
        if 1 > !stor13.length:
            revert with 0, 17
        if stor13.length + 1 > 20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot exclude more than 20 accounts.  Include a previously excluded address.'
        if stor6[address(arg1)]:
            mem[0] = arg1
            mem[32] = 6
            if stor6[address(arg1)] > stor14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 100000000000 * 10^18
            t = stor14
            while idx < stor13.length:
                mem[0] = stor13[idx]
                mem[32] = 6
                if stor6[stor13[idx]] > t:
                    _149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_149] = 26
                    mem[_149 + 32] = 'SafeMath: division by zero'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 26
                    mem[_171 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        _177 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _177 + 68] = mem[idx + _171 + 32]
                            idx = idx + 32
                            continue 
                        mem[_177 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _177 + -mem[64] + 100
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor12[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor13.length:
                            mem[0] = 13
                            if stor13[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor13.length < 1:
                                revert with 0, 17
                            if stor13.length - 1 >= stor13.length:
                                revert with 0, 50
                            if idx >= stor13.length:
                                revert with 0, 50
                            stor13[idx] = stor13[stor13.length]
                            stor7[address(arg1)] = 0
                            stor12[address(arg1)] = 0
                            if not stor13.length:
                                revert with 0, 49
                            stor13[stor13.length] = 0
                            stor13.length--
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                if stor7[stor13[idx]] > s:
                    _161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_161] = 26
                    mem[_161 + 32] = 'SafeMath: division by zero'
                    _179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_179] = 26
                    mem[_179 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        _183 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _183 + 68] = mem[idx + _179 + 32]
                            idx = idx + 32
                            continue 
                        mem[_183 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _183 + -mem[64] + 100
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor12[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor13.length:
                            mem[0] = 13
                            if stor13[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor13.length < 1:
                                revert with 0, 17
                            if stor13.length - 1 >= stor13.length:
                                revert with 0, 50
                            if idx >= stor13.length:
                                revert with 0, 50
                            stor13[idx] = stor13[stor13.length]
                            stor7[address(arg1)] = 0
                            stor12[address(arg1)] = 0
                            if not stor13.length:
                                revert with 0, 49
                            stor13[stor13.length] = 0
                            stor13.length--
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 6
                _160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_160] = 30
                mem[_160 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor13[idx]] > t:
                    _164 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _164 + 68] = mem[idx + _160 + 32]
                        idx = idx + 32
                        continue 
                    mem[_164 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _164 + -mem[64] + 100
                if t < stor6[stor13[idx]]:
                    revert with 0, 17
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 30
                mem[_178 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor13[idx]] <= s:
                    if s < stor7[stor13[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor13[idx]]
                    t = t - stor6[stor13[idx]]
                    continue 
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _182 + 68] = mem[idx + _178 + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 98] = 0
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
            if t < stor14 / 100000000000 * 10^18:
                if not stor14 / 100000000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(arg1)] = stor6[address(arg1)] / t / s
        stor12[address(arg1)] = 1
        stor13.length++
        stor13[stor13.length] = arg1
        if not arg2:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not stor12[address(arg1)]:
                revert with 0, 'Account is not excluded'
            idx = 0
            while idx < stor13.length:
                mem[0] = 13
                if stor13[idx] != arg1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                if idx >= stor13.length:
                    revert with 0, 50
                stor13[idx] = stor13[stor13.length]
                stor7[address(arg1)] = 0
                stor12[address(arg1)] = 0
                if not stor13.length:
                    revert with 0, 49
                stor13[stor13.length] = 0
                stor13.length--
}



}
