contract main {




// =====================  Runtime code  =====================


#
#  - manualBurn(uint256 arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_f941874f(?)
#  - _fallback()
#
address owner;
address stor1;
uint256 geUnlockTime;
uint8 stor3;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
array of address stor12;
uint256 totalSupply;
uint256 stor14;
uint256 totalFees;
array of struct stor16;
array of struct stor17;
uint8 decimals;
uint256 _taxFee;
uint256 stor20;
uint256 _liquidityFee;
uint256 stor22;
uint256 _marketingFee;
uint256 stor24;
uint256 buybackDivisor;
uint256 sub_0971c53f;
uint256 sub_170dde6a;
uint256 sub_40615b8b;
address marketingWalletAddress;
address deadWalletAddress;
address uniswapV2RouterAddress;
uint8 stor32; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor32; offset 168
address uniswapV2PairAddress;
uint256 sub_7428edea;
bool stor34;
uint256 stor34; offset 1
uint256 _maxBuyAmount;
uint256 stor35;
bool stor36;
uint256 stor36; offset 1
uint256 maxLimit;
uint256 buyBackUpperLimitAmount;
uint8 buyBackEnabled;

function _maxBuyAmount() {
    return _maxBuyAmount
}

function sub_0971c53f(?) {
    return sub_0971c53f
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_170dde6a(?) {
    return sub_170dde6a
}

function totalSupply() {
    return totalSupply
}

function maxLimit() {
    return maxLimit
}

function _marketingFee() {
    return _marketingFee
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function sub_40615b8b(?) {
    return sub_40615b8b
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function _liquidityFee() {
    return _liquidityFee
}

function sub_7428edea(?) {
    return sub_7428edea
}

function marketingWallet() {
    return marketingWalletAddress
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function sub_99aad6ba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function sub_a1089750(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[address(arg1)])
}

function geUnlockTime() {
    return geUnlockTime
}

function buyBackUpperLimitAmount() {
    return buyBackUpperLimitAmount
}

function buybackDivisor() {
    return buybackDivisor
}

function sub_da5102b0(?) {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa2ce79b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[address(arg1)])
}

function addAmount() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor3 = 1
}

function sub_3d195ebb(?) {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor3 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5d0a8f6d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_7428edea = arg1
}

function setMaxWalletLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    maxLimit = arg1
}

function setMaxBuyAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _maxBuyAmount = arg1
}

function setBuybackDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    buybackDivisor = arg1
}

function sub_a883aa73(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor8[address(arg1)] = 1
}

function includeInReflection(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor8[address(arg1)] = 0
}

function sub_6f7920b6(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_0971c53f = arg1
    sub_170dde6a = arg2
    sub_40615b8b = arg3
}

function setmarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketingWalletAddress = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    buyBackEnabled = uint8(arg1)
    emit BuyBackEnabledUpdated(arg1);
}

function sub_f9258613(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function sub_46dc353d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor10[address(arg1)] = uint8(bool(arg2))
}

function sub_50cba057(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _taxFee = arg1
    stor20 = arg1
    _liquidityFee = arg2
    stor22 = arg2
    _marketingFee = arg3
    stor24 = arg3
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor32.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setBuybackUpperLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    buyBackUpperLimitAmount = 10^18 * arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp >= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor35 = arg1
    emit Log(string arg1, uint256 arg2):
             64,
             arg1,
             37,
             'NumTokensSellToAddToLiquidity ch',
             0x616e676564000000000000000000000000000000000000000000000000000000,
}

function prepareForPresale() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _taxFee = 0
    stor20 = 0
    _liquidityFee = 0
    stor22 = 0
    _marketingFee = 0
    stor24 = 0
    sub_0971c53f = 0
    sub_170dde6a = 0
    sub_40615b8b = 0
    maxLimit = totalSupply
    sub_7428edea = totalSupply
    _maxBuyAmount = totalSupply
    Mask(88, 0, stor32.field_168) = 0
    emit SwapAndLiquifyEnabledUpdated(0);
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x7245524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
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

function sub_b93eb707(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor11[address(arg1)]:
        revert with 0, 'Account is getting reflections'
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor12.length < 1:
            revert with 0, 17
        if stor12.length - 1 >= stor12.length:
            revert with 0, 50
        if idx >= stor12.length:
            revert with 0, 50
        stor12[idx] = stor12[stor12.length]
        stor6[address(arg1)] = 0
        stor11[address(arg1)] = 0
        if not stor12.length:
            revert with 0, 49
        stor12[stor12.length] = 0
        stor12.length--
}

function afterPresale() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _taxFee = 2
    stor20 = 2
    _liquidityFee = 6
    stor22 = 6
    _marketingFee = 5
    stor24 = 5
    sub_0971c53f = 3
    sub_170dde6a = 4
    sub_40615b8b = 6
    if not totalSupply / 100:
        maxLimit = 0
    else:
        if totalSupply / 100 and 2 > -1 / totalSupply / 100:
            revert with 0, 17
        if not totalSupply / 100:
            revert with 0, 18
        if 2 * totalSupply / 100 / totalSupply / 100 != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        bool(stor36.field_0) = 0
        uint255(stor36.field_1) = uint255(totalSupply / 100)
    if not totalSupply / 100:
        sub_7428edea = 0
    else:
        if totalSupply / 100 and 1 > -1 / totalSupply / 100:
            revert with 0, 17
        if not totalSupply / 100:
            revert with 0, 18
        if totalSupply / 100 / totalSupply / 100 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        sub_7428edea = totalSupply / 100
    if not totalSupply / 100:
        _maxBuyAmount = 0
    else:
        if totalSupply / 100 and 2 > -1 / totalSupply / 100:
            revert with 0, 17
        if not totalSupply / 100:
            revert with 0, 18
        if 2 * totalSupply / 100 / totalSupply / 100 != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        bool(stor34.field_0) = 0
        uint255(stor34.field_1) = uint255(totalSupply / 100)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor32.field_168) = 1
    emit SwapAndLiquifyEnabledUpdated(1);
}

function manualBuyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    uint8(stor32.field_160) = 1
    if 10^15 * arg1:
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
        if block.timestamp > -301:
            revert with 0, 17
        if block.timestamp + 300 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 324] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 260] = deadWalletAddress
        mem[ceil32(return_data.size) + 292] = block.timestamp + 300
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 10^15 * arg1 wei
             gas gas_remaining wei
            args 0, 128, deadWalletAddress, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192] = 10^15 * arg1
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 288
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit SwapETHForTokens(10^15 * arg1, Array(len=2, data=mem[ceil32(return_data.size) + 288 len 64]));
    uint8(stor32.field_160) = 0
}

function name() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function symbol() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[ceil32(uint255(stor17.length) * 0.5) + (uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 5
        if stor5[stor12[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor14 / totalSupply:
                return (arg1 / stor14 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 6
        if stor6[stor12[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor14 / totalSupply:
                return (arg1 / stor14 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 5
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor12[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor5[stor12[idx]]:
            revert with 0, 17
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 6
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor12[idx]] <= s:
            if s < stor6[stor12[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor6[stor12[idx]]
            t = t - stor5[stor12[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor14 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor11[address(arg1)]:
        return stor6[address(arg1)]
    mem[0] = arg1
    mem[32] = 5
    if stor5[address(arg1)] > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = 5
        if stor5[stor12[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor14 / totalSupply:
                return (stor5[address(arg1)] / stor14 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 6
        if stor6[stor12[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor14 / totalSupply:
                return (stor5[address(arg1)] / stor14 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 5
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor12[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor5[stor12[idx]]:
            revert with 0, 17
        if idx >= stor12.length:
            revert with 0, 50
        mem[0] = stor12[idx]
        mem[32] = 6
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor12[idx]] <= s:
            if s < stor6[stor12[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor6[stor12[idx]]
            t = t - stor5[stor12[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor5[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor5[address(arg1)] / stor14 / totalSupply)
}

function sub_95fb3caa(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor11[address(arg1)]:
        revert with 0, 'Account has already claim'
    if stor5[address(arg1)]:
        mem[0] = address(arg1)
        mem[32] = 5
        if stor5[address(arg1)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor12.length:
            mem[0] = stor12[idx]
            mem[32] = 5
            if stor5[stor12[idx]] > t:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 26
                mem[_102 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _106 + 68] = mem[idx + _102 + 32]
                        idx = idx + 32
                        continue 
                    mem[_106 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _106 + -mem[64] + 100
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                if stor14 / totalSupply:
                    stor6[address(arg1)] = stor5[address(arg1)] / stor14 / totalSupply
                    stor11[address(arg1)] = 1
                    stor12.length++
                    stor12[stor12.length] = address(arg1)
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _136 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 94] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor12.length:
                revert with 0, 50
            mem[0] = stor12[idx]
            mem[32] = 6
            if stor6[stor12[idx]] > s:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _113 + 68] = mem[idx + _108 + 32]
                        idx = idx + 32
                        continue 
                    mem[_113 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _113 + -mem[64] + 100
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = 26
                mem[_138 + 32] = 'SafeMath: division by zero'
                if stor14 / totalSupply:
                    stor6[address(arg1)] = stor5[address(arg1)] / stor14 / totalSupply
                    stor11[address(arg1)] = 1
                    stor12.length++
                    stor12[stor12.length] = address(arg1)
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _143 + 68] = mem[idx + _138 + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 94] = 0
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            if idx >= stor12.length:
                revert with 0, 50
            mem[0] = stor12[idx]
            mem[32] = 5
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 30
            mem[_107 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor12[idx]] > t:
                _112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _112 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                mem[_112 + 98] = 0
                revert with memory
                  from mem[64]
                   len _112 + -mem[64] + 100
            if t < stor5[stor12[idx]]:
                revert with 0, 17
            if idx >= stor12.length:
                revert with 0, 50
            mem[0] = stor12[idx]
            mem[32] = 6
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 30
            mem[_137 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor12[idx]] <= s:
                if s < stor6[stor12[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor6[stor12[idx]]
                t = t - stor5[stor12[idx]]
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _142 + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 98] = 0
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor14 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor6[address(arg1)] = stor5[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor14 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor6[address(arg1)] = stor5[address(arg1)] / stor14 / totalSupply
    stor11[address(arg1)] = 1
    stor12.length++
    stor12[stor12.length] = address(arg1)
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 11
    if stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Recognized addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
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
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2251] = 26
                    mem[_2251 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2273 + 68] = mem[idx + _2251 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2273 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2273 + -mem[64] + 100
                    if not arg1:
                        _2441 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2441] = 30
                        mem[_2441 + 32] = 'SafeMath: subtraction overflow'
                        _2522 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2522] = 30
                        mem[_2522 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 5
                        _2779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2779] = 30
                        mem[_2779 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _2880 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2880 + 68] = mem[idx + _2779 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2880 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2880 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3173 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3173] = 30
                        mem[_3173 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3279 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3279 + 68] = mem[idx + _3173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3279 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3279 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2495] = 30
                    mem[_2495 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2521 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2521 + 68] = mem[idx + _2495 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2521 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2521 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _2657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2657] = 30
                    mem[_2657 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2713 + 68] = mem[idx + _2657 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2713 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3060] = 30
                    mem[_3060 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3172 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3172 + 68] = mem[idx + _3060 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3172 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3172 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3508] = 30
                    mem[_3508 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3617 + 68] = mem[idx + _3508 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3617 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3617 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2274] = 30
                    mem[_2274 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2294 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2294 + 68] = mem[idx + _2274 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2294 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2294 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2383 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2383] = 30
                    mem[_2383 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2395 + 68] = mem[idx + _2383 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2395 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2395 + -mem[64] + 100
                _2275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2275] = 26
                mem[_2275 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2295 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2295 + 68] = mem[idx + _2275 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2295 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2295 + -mem[64] + 100
                if not arg1:
                    _2457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2457] = 30
                    mem[_2457 + 32] = 'SafeMath: subtraction overflow'
                    _2548 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2548] = 30
                    mem[_2548 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 5
                    _2881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2881] = 30
                    mem[_2881 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor5[address(msg.sender)]:
                        _2963 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2963 + 68] = mem[idx + _2881 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2963 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2963 + -mem[64] + 100
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3281] = 30
                    mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3380 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3380 + 68] = mem[idx + _3281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3380 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3380 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2523] = 30
                mem[_2523 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _2547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2547 + 68] = mem[idx + _2523 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2547 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2547 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _2714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2714] = 30
                mem[_2714 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _2780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2780 + 68] = mem[idx + _2714 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2780 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2780 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                _3175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3175] = 30
                mem[_3175 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                    _3280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3280 + 68] = mem[idx + _3175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3280 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3280 + -mem[64] + 100
                if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _3619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3619] = 30
                mem[_3619 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3703 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3703 + 68] = mem[idx + _3619 + 32]
                    idx = idx + 32
                    continue 
                mem[_3703 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3703 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * t / s > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * t / s:
                        revert with 0, 17
                    stor14 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    if arg1 * stor14 / totalSupply > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
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
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2250] = 26
                    mem[_2250 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2270 + 68] = mem[idx + _2250 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2270 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2270 + -mem[64] + 100
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2440 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2440] = 30
                            mem[_2440 + 32] = 'SafeMath: subtraction overflow'
                            _2518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2518] = 30
                            mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 5
                            _2776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2776] = 30
                            mem[_2776 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor5[address(msg.sender)]:
                                _2874 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2874 + 68] = mem[idx + _2776 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2874 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2874 + -mem[64] + 100
                            if stor5[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3166 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3166] = 30
                            mem[_3166 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3272 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3272 + 68] = mem[idx + _3166 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3272 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3272 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2491] = 30
                        mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                        _2651 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2651] = 30
                        mem[_2651 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                            _2708 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2708 + 68] = mem[idx + _2651 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2708 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2708 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3054] = 30
                        mem[_3054 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _3165 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3165 + 68] = mem[idx + _3054 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3165 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3165 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3499] = 30
                        mem[_3499 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3608 + 68] = mem[idx + _3499 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3608 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3608 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2490] = 30
                        mem[_2490 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2517 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2517 + 68] = mem[idx + _2490 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2517 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2517 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _2649 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2649] = 30
                        mem[_2649 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2707 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2707 + 68] = mem[idx + _2649 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2707 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2707 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3053] = 30
                        mem[_3053 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                            _3164 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3164 + 68] = mem[idx + _3053 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3164 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3164 + -mem[64] + 100
                        if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _3497 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3497] = 30
                        mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3607 + 68] = mem[idx + _3497 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3607 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3607 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2592 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2592] = 30
                    mem[_2592 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2648 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2648 + 68] = mem[idx + _2592 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2648 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2648 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _2872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2872] = 30
                    mem[_2872 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _2954 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2954 + 68] = mem[idx + _2872 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2954 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2954 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3375] = 30
                    mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3496 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3496 + 68] = mem[idx + _3375 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3496 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3496 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3829] = 30
                    mem[_3829 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3930 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3930 + 68] = mem[idx + _3829 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3930 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3930 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2271] = 30
                    mem[_2271 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2291 + 68] = mem[idx + _2271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2291 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2291 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2380 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2380] = 30
                    mem[_2380 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2392 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2392 + 68] = mem[idx + _2380 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2392 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2392 + -mem[64] + 100
                _2272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2272] = 26
                mem[_2272 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2292 + 68] = mem[idx + _2272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2292 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2292 + -mem[64] + 100
                if not arg1:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2454 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2454] = 30
                        mem[_2454 + 32] = 'SafeMath: subtraction overflow'
                        _2546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2546] = 30
                        mem[_2546 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 5
                        _2875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2875] = 30
                        mem[_2875 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _2959 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2959 + 68] = mem[idx + _2875 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2959 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2959 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3275] = 30
                        mem[_3275 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3377 + 68] = mem[idx + _3275 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2520] = 30
                    mem[_2520 + 32] = 'SafeMath: subtraction overflow'
                    _2712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2712] = 30
                    mem[_2712 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                        _2778 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2778 + 68] = mem[idx + _2712 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2778 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2778 + -mem[64] + 100
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3169] = 30
                    mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor5[address(msg.sender)]:
                        _3274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3274 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3274 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3274 + -mem[64] + 100
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3613] = 30
                    mem[_3613 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3701 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3701 + 68] = mem[idx + _3613 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3701 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3701 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _2519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2519] = 30
                    mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2545 + 68] = mem[idx + _2519 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2545 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2545 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _2710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2710] = 30
                    mem[_2710 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2777 + 68] = mem[idx + _2710 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2777 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2777 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3168] = 30
                    mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3273 + 68] = mem[idx + _3168 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3273 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3273 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3611] = 30
                    mem[_3611 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3700 + 68] = mem[idx + _3611 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3700 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3700 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2652] = 30
                mem[_2652 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _2709 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2709 + 68] = mem[idx + _2652 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2709 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2709 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _2957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2957] = 30
                mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3055 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3055 + 68] = mem[idx + _2957 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3055 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3055 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                _3501 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3501] = 30
                mem[_3501 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                    _3610 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3610 + 68] = mem[idx + _3501 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3610 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3610 + -mem[64] + 100
                if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _3933 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3933] = 30
                mem[_3933 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4000 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4000 + 68] = mem[idx + _3933 + 32]
                    idx = idx + 32
                    continue 
                mem[_4000 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4000 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                            revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                            revert with 0, 17
                    if arg1 * t / s > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * t / s:
                        revert with 0, 17
                    stor14 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if 0 > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    if arg1 * stor14 / totalSupply > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2249] = 26
                    mem[_2249 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2267 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2267 + 68] = mem[idx + _2249 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2267 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2267 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _2439 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2439] = 30
                            mem[_2439 + 32] = 'SafeMath: subtraction overflow'
                            _2513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2513] = 30
                            mem[_2513 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 5
                            _2771 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2771] = 30
                            mem[_2771 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor5[address(msg.sender)]:
                                _2862 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2862 + 68] = mem[idx + _2771 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2862 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2862 + -mem[64] + 100
                            if stor5[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3154 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3154] = 30
                            mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3260 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3260 + 68] = mem[idx + _3154 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3260 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3260 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2487] = 30
                        mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _2512 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2512 + 68] = mem[idx + _2487 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2512 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2512 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _2641 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2641] = 30
                        mem[_2641 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            _2699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2699 + 68] = mem[idx + _2641 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2699 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2699 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3047] = 30
                        mem[_3047 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _3153 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3153 + 68] = mem[idx + _3047 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3153 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3153 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3485] = 30
                        mem[_3485 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3596 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3596 + 68] = mem[idx + _3485 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3596 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3596 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2511 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2511 + 68] = mem[idx + _2486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2511 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2511 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _2639 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2639] = 30
                        mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2698 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2698 + 68] = mem[idx + _2639 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2698 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2698 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = 30
                        mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                            _3152 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3152 + 68] = mem[idx + _3046 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3152 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3152 + -mem[64] + 100
                        if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _3483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3483] = 30
                        mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3595 + 68] = mem[idx + _3483 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3595 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3595 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2587] = 30
                    mem[_2587 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _2638 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2638 + 68] = mem[idx + _2587 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2638 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2638 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _2860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2860] = 30
                    mem[_2860 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        _2944 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2944 + 68] = mem[idx + _2860 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2944 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2944 + -mem[64] + 100
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3368] = 30
                    mem[_3368 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3482 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3482 + 68] = mem[idx + _3368 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3482 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3482 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3816] = 30
                    mem[_3816 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3918 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3918 + 68] = mem[idx + _3816 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3918 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3918 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2268] = 30
                    mem[_2268 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2288 + 68] = mem[idx + _2268 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2288 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2288 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2377 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2377] = 30
                    mem[_2377 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2389 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2389 + 68] = mem[idx + _2377 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2389 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2389 + -mem[64] + 100
                _2269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2269] = 26
                mem[_2269 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2289 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2289 + 68] = mem[idx + _2269 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2289 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2289 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _2451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2451] = 30
                        mem[_2451 + 32] = 'SafeMath: subtraction overflow'
                        _2541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2541] = 30
                        mem[_2541 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 5
                        _2863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2863] = 30
                        mem[_2863 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _2949 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2949 + 68] = mem[idx + _2863 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2949 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2949 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3263] = 30
                        mem[_3263 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3370 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3370 + 68] = mem[idx + _3263 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3370 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3370 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2516] = 30
                    mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _2540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2540 + 68] = mem[idx + _2516 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2540 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2540 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _2703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2703] = 30
                    mem[_2703 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        _2773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2773 + 68] = mem[idx + _2703 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2773 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2773 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3157] = 30
                    mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor5[address(msg.sender)]:
                        _3262 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3262 + 68] = mem[idx + _3157 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3262 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3262 + -mem[64] + 100
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3601] = 30
                    mem[_3601 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3696 + 68] = mem[idx + _3601 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3696 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2539 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2539 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2539 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2539 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _2701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2701] = 30
                    mem[_2701 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2772 + 68] = mem[idx + _2701 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2772 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2772 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3156 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3156] = 30
                    mem[_3156 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3261 + 68] = mem[idx + _3156 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3261 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3599] = 30
                    mem[_3599 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3695 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3695 + 68] = mem[idx + _3599 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3695 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3695 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2643] = 30
                mem[_2643 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _2700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2700 + 68] = mem[idx + _2643 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2700 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2700 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _2947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2947] = 30
                mem[_2947 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    _3048 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3048 + 68] = mem[idx + _2947 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3048 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3048 + -mem[64] + 100
                if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                _3487 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3487] = 30
                mem[_3487 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                    _3598 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3598 + 68] = mem[idx + _3487 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3598 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3598 + -mem[64] + 100
                if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _3921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3921] = 30
                mem[_3921 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3997 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3997 + 68] = mem[idx + _3921 + 32]
                    idx = idx + 32
                    continue 
                mem[_3997 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3997 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    if arg1 * t / s > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * t / s:
                        revert with 0, 17
                    stor14 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    if arg1 * stor14 / totalSupply > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2248] = 26
                    mem[_2248 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2264 + 68] = mem[idx + _2248 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2264 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2264 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                _2437 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2437] = 30
                                mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                                _2506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2506] = 30
                                mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 5
                                _2764 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2764] = 30
                                mem[_2764 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor5[address(msg.sender)]:
                                    _2847 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2847 + 68] = mem[idx + _2764 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2847 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2847 + -mem[64] + 100
                                if stor5[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 5
                                _3141 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3141] = 30
                                mem[_3141 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor14:
                                    if stor14 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _3245 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3245 + 68] = mem[idx + _3141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3245 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3245 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2479 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2479] = 30
                            mem[_2479 + 32] = 'SafeMath: subtraction overflow'
                            _2628 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2628] = 30
                            mem[_2628 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                                _2689 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2689 + 68] = mem[idx + _2628 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2689 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2689 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3037 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3037] = 30
                            mem[_3037 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor5[address(msg.sender)]:
                                _3140 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3140 + 68] = mem[idx + _3037 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3140 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3140 + -mem[64] + 100
                            if stor5[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3469 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3469] = 30
                            mem[_3469 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3580 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3580 + 68] = mem[idx + _3469 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3580 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3580 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2478 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2478] = 30
                            mem[_2478 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                                _2505 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2505 + 68] = mem[idx + _2478 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2505 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2505 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            _2626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2626] = 30
                            mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                                _2688 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2688 + 68] = mem[idx + _2626 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2688 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2688 + -mem[64] + 100
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3036 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3036] = 30
                            mem[_3036 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor5[address(msg.sender)]:
                                _3139 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3139 + 68] = mem[idx + _3036 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3139 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3139 + -mem[64] + 100
                            if stor5[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3467 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3467] = 30
                            mem[_3467 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3579 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3579 + 68] = mem[idx + _3467 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3579 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3579 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2578] = 30
                        mem[_2578 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _2625 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2625 + 68] = mem[idx + _2578 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2625 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2625 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _2845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2845] = 30
                        mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            _2929 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2929 + 68] = mem[idx + _2845 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2929 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2929 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3358] = 30
                        mem[_3358 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _3466 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3466 + 68] = mem[idx + _3358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3466 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3466 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3802 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3802] = 30
                        mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3901 + 68] = mem[idx + _3802 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3901 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3901 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2477 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2477] = 30
                            mem[_2477 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor14 / totalSupply:
                                _2504 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2504 + 68] = mem[idx + _2477 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2504 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2504 + -mem[64] + 100
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            _2623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2623] = 30
                            mem[_2623 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor14 / totalSupply:
                                _2687 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2687 + 68] = mem[idx + _2623 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2687 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2687 + -mem[64] + 100
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3035] = 30
                            mem[_3035 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                                _3138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3138 + 68] = mem[idx + _3035 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3138 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3138 + -mem[64] + 100
                            if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                            _3464 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3464] = 30
                            mem[_3464 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor14 / totalSupply <= stor14:
                                if stor14 < arg1 * stor14 / totalSupply:
                                    revert with 0, 17
                                stor14 += -1 * arg1 * stor14 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3578 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3578 + 68] = mem[idx + _3464 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3578 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3578 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2577] = 30
                        mem[_2577 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2622 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2622 + 68] = mem[idx + _2577 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2622 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2622 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _2843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2843] = 30
                        mem[_2843 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                            _2927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2927 + 68] = mem[idx + _2843 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2927 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2927 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3357] = 30
                        mem[_3357 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                            _3463 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3463 + 68] = mem[idx + _3357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3463 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3463 + -mem[64] + 100
                        if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _3800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3800] = 30
                        mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3899 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3899 + 68] = mem[idx + _3800 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3899 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3899 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2576] = 30
                        mem[_2576 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2621 + 68] = mem[idx + _2576 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _2841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2841] = 30
                        mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                            _2926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2926 + 68] = mem[idx + _2841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2926 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2926 + -mem[64] + 100
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3356] = 30
                        mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                            _3462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3462 + 68] = mem[idx + _3356 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3462 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3462 + -mem[64] + 100
                        if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3898 + 68] = mem[idx + _3798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3898 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3898 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2763] = 30
                    mem[_2763 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _2840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2840 + 68] = mem[idx + _2763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2840 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2840 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3136] = 30
                    mem[_3136 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        _3241 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3241 + 68] = mem[idx + _3136 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3241 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3241 + -mem[64] + 100
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3687] = 30
                    mem[_3687 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3797 + 68] = mem[idx + _3687 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3797 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3797 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _4069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4069] = 30
                    mem[_4069 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4151 + 68] = mem[idx + _4069 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4151 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4151 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2265] = 30
                    mem[_2265 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2285 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2285 + 68] = mem[idx + _2265 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2285 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2285 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2374] = 30
                    mem[_2374 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2386 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2386 + 68] = mem[idx + _2374 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2386 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2386 + -mem[64] + 100
                _2266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2266] = 26
                mem[_2266 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2286 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2286 + 68] = mem[idx + _2266 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2286 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2286 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2447 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2447] = 30
                            mem[_2447 + 32] = 'SafeMath: subtraction overflow'
                            _2538 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2538] = 30
                            mem[_2538 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 5
                            _2849 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2849] = 30
                            mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor5[address(msg.sender)]:
                                _2939 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2939 + 68] = mem[idx + _2849 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2939 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2939 + -mem[64] + 100
                            if stor5[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 5
                            _3251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3251] = 30
                            mem[_3251 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3363 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3363 + 68] = mem[idx + _3251 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3363 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3363 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2510] = 30
                        mem[_2510 + 32] = 'SafeMath: subtraction overflow'
                        _2697 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2697] = 30
                        mem[_2697 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                            _2768 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2768 + 68] = mem[idx + _2697 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2768 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2768 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _3250 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3250 + 68] = mem[idx + _3145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3250 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3250 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3589] = 30
                        mem[_3589 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3691 + 68] = mem[idx + _3589 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3691 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3691 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2509] = 30
                        mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _2537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2537 + 68] = mem[idx + _2509 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2537 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2537 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _2695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2695] = 30
                        mem[_2695 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            _2767 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2767 + 68] = mem[idx + _2695 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2767 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2767 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 30
                        mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor5[address(msg.sender)]:
                            _3249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3249 + 68] = mem[idx + _3144 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3249 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3249 + -mem[64] + 100
                        if stor5[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3587 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3587] = 30
                        mem[_3587 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3690 + 68] = mem[idx + _3587 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3690 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2631 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2631] = 30
                    mem[_2631 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _2694 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2694 + 68] = mem[idx + _2631 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2694 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2694 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _2937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2937] = 30
                    mem[_2937 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        _3041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3041 + 68] = mem[idx + _2937 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3041 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3041 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3473] = 30
                    mem[_3473 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor5[address(msg.sender)]:
                        _3586 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3586 + 68] = mem[idx + _3473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3586 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3586 + -mem[64] + 100
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3909 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3909] = 30
                    mem[_3909 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3994 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3994 + 68] = mem[idx + _3909 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3994 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3994 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2508] = 30
                        mem[_2508 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2536 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2536 + 68] = mem[idx + _2508 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2536 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2536 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _2692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2692] = 30
                        mem[_2692 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2766 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2766 + 68] = mem[idx + _2692 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2766 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2766 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        _3143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3143] = 30
                        mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                            _3248 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3248 + 68] = mem[idx + _3143 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3248 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3248 + -mem[64] + 100
                        if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 5
                        stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _3584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3584] = 30
                        mem[_3584 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3689 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3689 + 68] = mem[idx + _3584 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3689 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3689 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2630] = 30
                    mem[_2630 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _2691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2691 + 68] = mem[idx + _2630 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2691 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2691 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _2935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2935] = 30
                    mem[_2935 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3039 + 68] = mem[idx + _2935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3039 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3039 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3472] = 30
                    mem[_3472 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3583 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3583 + 68] = mem[idx + _3472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3583 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3583 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3907 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3907] = 30
                    mem[_3907 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3992 + 68] = mem[idx + _3907 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3992 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3992 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _2629 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2629] = 30
                    mem[_2629 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2690 + 68] = mem[idx + _2629 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _2933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2933] = 30
                    mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        _3038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3038 + 68] = mem[idx + _2933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3038 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3038 + -mem[64] + 100
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    _3471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3471] = 30
                    mem[_3471 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        _3582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3582 + 68] = mem[idx + _3471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3582 + -mem[64] + 100
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 5
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _3905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3905] = 30
                    mem[_3905 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3991 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3991 + 68] = mem[idx + _3905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3991 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3991 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2848] = 30
                mem[_2848 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _2932 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2932 + 68] = mem[idx + _2848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2932 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2932 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _3246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3246] = 30
                mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    _3359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3359 + 68] = mem[idx + _3246 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3359 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3359 + -mem[64] + 100
                if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                _3805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3805] = 30
                mem[_3805 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                    _3904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3904 + 68] = mem[idx + _3805 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3904 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3904 + -mem[64] + 100
                if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 5
                stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _4155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4155] = 30
                mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4207 + 68] = mem[idx + _4155 + 32]
                    idx = idx + 32
                    continue 
                mem[_4207 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4207 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    if arg1 * t / s > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * t / s:
                        revert with 0, 17
                    stor14 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                    if 0 > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if 0 > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                    if arg1 * stor14 / totalSupply > stor5[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor5[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor5[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    if arg1 * stor14 / totalSupply > stor14:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if _liquidityFee > !_marketingFee:
                revert with 0, 17
            if _liquidityFee + _marketingFee < _liquidityFee:
                revert with 0, 'SafeMath: addition overflow'
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
                s = totalSupply
                t = stor14
                while idx < stor12.length:
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    if stor5[stor12[idx]] > t:
                        _2478 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2478] = 26
                        mem[_2478 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _2516 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2516 + 68] = mem[idx + _2478 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2516 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2516 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor14 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2946 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2946] = 30
                        mem[_2946 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3004 + 68] = mem[idx + _2946 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3004 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3004 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3251] = 30
                        mem[_3251 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3374 + 68] = mem[idx + _3251 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3374 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3374 + -mem[64] + 100
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    if stor6[stor12[idx]] <= s:
                        if idx >= stor12.length:
                            revert with 0, 50
                        mem[0] = stor12[idx]
                        mem[32] = 5
                        _2517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2517] = 30
                        mem[_2517 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor12[idx]] > t:
                            _2557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2557 + 68] = mem[idx + _2517 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2557 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2557 + -mem[64] + 100
                        if t < stor5[stor12[idx]]:
                            revert with 0, 17
                        if idx >= stor12.length:
                            revert with 0, 50
                        mem[0] = stor12[idx]
                        mem[32] = 6
                        _2734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2734] = 30
                        mem[_2734 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor12[idx]] <= s:
                            if s < stor6[stor12[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor6[stor12[idx]]
                            t = t - stor5[stor12[idx]]
                            continue 
                        _2758 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2758 + 68] = mem[idx + _2734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2758 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2758 + -mem[64] + 100
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 26
                    mem[_2518 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2558 + 68] = mem[idx + _2518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2558 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2558 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3006] = 30
                    mem[_3006 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3058 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3058 + 68] = mem[idx + _3006 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3058 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3058 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3375] = 30
                    mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3504 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3504 + 68] = mem[idx + _3375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3504 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3504 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor14 / totalSupply:
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
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor14 / totalSupply)
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
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
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2477] = 26
                    mem[_2477 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2513 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2513 + 68] = mem[idx + _2477 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2513 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2513 + -mem[64] + 100
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2942] = 30
                        mem[_2942 + 32] = 'SafeMath: subtraction overflow'
                        _3245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3245] = 30
                        mem[_3245 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
                        _3369 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3369 + 68] = mem[idx + _3245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3369 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3369 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2941] = 30
                        mem[_2941 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3000 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3000 + 68] = mem[idx + _2941 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3000 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3000 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3368 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3368 + 68] = mem[idx + _3243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3368 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3368 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3139] = 30
                    mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3242 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3242 + 68] = mem[idx + _3139 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3242 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3242 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3657] = 30
                    mem[_3657 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                    _3827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3827 + 68] = mem[idx + _3657 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3827 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3827 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2514] = 30
                    mem[_2514 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2554 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2554 + 68] = mem[idx + _2514 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2554 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2554 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2731] = 30
                    mem[_2731 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2755 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2755 + 68] = mem[idx + _2731 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2755 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2755 + -mem[64] + 100
                _2515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2515] = 26
                mem[_2515 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2555 + 68] = mem[idx + _2515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2555 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2555 + -mem[64] + 100
                if not arg1:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3003 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3003] = 30
                    mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                    _3373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3373] = 30
                    mem[_3373 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
                    _3503 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3503 + 68] = mem[idx + _3373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3503 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3503 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _3002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3002] = 30
                    mem[_3002 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3056 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3056 + 68] = mem[idx + _3002 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3056 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3056 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3371] = 30
                    mem[_3371 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3502 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3502 + 68] = mem[idx + _3371 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3502 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3502 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3246] = 30
                mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _3370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3370 + 68] = mem[idx + _3246 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3370 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3370 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _3830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3830] = 30
                mem[_3830 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                _3980 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3980 + 68] = mem[idx + _3830 + 32]
                    idx = idx + 32
                    continue 
                mem[_3980 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3980 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    return 0
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor14 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < 0:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2476] = 26
                    mem[_2476 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2510 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2510 + 68] = mem[idx + _2476 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2510 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2510 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 30
                        mem[_2938 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _2995 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2995 + 68] = mem[idx + _2938 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2995 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2995 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 30
                        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
                        _3360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3360 + 68] = mem[idx + _3235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3360 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2937 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2937] = 30
                        mem[_2937 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2994 + 68] = mem[idx + _2937 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2994 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2994 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3233] = 30
                        mem[_3233 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3359 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3359 + 68] = mem[idx + _3233 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3359 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3359 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3134] = 30
                    mem[_3134 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3232 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3232 + 68] = mem[idx + _3134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3232 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3232 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3646] = 30
                    mem[_3646 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
                    _3817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3817 + 68] = mem[idx + _3646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3817 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3817 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2551 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2551 + 68] = mem[idx + _2511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2551 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2551 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2728] = 30
                    mem[_2728 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2752 + 68] = mem[idx + _2728 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2752 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2752 + -mem[64] + 100
                _2512 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2512] = 26
                mem[_2512 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2552 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2552 + 68] = mem[idx + _2512 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2552 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2552 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2999] = 30
                    mem[_2999 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _3051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3051 + 68] = mem[idx + _2999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3051 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3051 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3364] = 30
                    mem[_3364 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
                    _3499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3499 + 68] = mem[idx + _3364 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3499 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3499 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2998] = 30
                    mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3050 + 68] = mem[idx + _2998 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3050 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3050 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3362] = 30
                    mem[_3362 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3498 + 68] = mem[idx + _3362 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3498 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3498 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3237 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3237] = 30
                mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3361 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3361 + 68] = mem[idx + _3237 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3361 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3361 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _3820 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3820] = 30
                mem[_3820 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
                _3977 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3977 + 68] = mem[idx + _3820 + 32]
                    idx = idx + 32
                    continue 
                mem[_3977 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3977 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor14 / totalSupply)
            if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
        if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _taxFee / 100:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor12.length:
            mem[0] = stor12[idx]
            mem[32] = 5
            if stor5[stor12[idx]] > t:
                _2475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2475] = 26
                mem[_2475 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2507 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2507 + 68] = mem[idx + _2475 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2507 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2507 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        _3222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3222] = 30
                        mem[_3222 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
                        _3350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3350 + 68] = mem[idx + _3222 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3350 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3350 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2929] = 30
                        mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _2988 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2988 + 68] = mem[idx + _2929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2988 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2988 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3220] = 30
                        mem[_3220 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
                        _3349 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3349 + 68] = mem[idx + _3220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3349 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3349 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3125] = 30
                    mem[_3125 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _3219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3219 + 68] = mem[idx + _3125 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3219 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3219 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3632] = 30
                    mem[_3632 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                    _3802 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3802 + 68] = mem[idx + _3632 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3802 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3802 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2928] = 30
                        mem[_2928 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _2987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2987 + 68] = mem[idx + _2928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2987 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2987 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3217] = 30
                        mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3348 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3348 + 68] = mem[idx + _3217 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3348 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3348 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3124 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3124] = 30
                    mem[_3124 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3216 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3216 + 68] = mem[idx + _3124 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3216 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3216 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3630] = 30
                    mem[_3630 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                    _3800 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3800 + 68] = mem[idx + _3630 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3800 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3800 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _3123 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3123] = 30
                    mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3215 + 68] = mem[idx + _3123 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3215 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3215 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3628] = 30
                    mem[_3628 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
                    _3799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3799 + 68] = mem[idx + _3628 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3799 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3799 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3491 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3491] = 30
                mem[_3491 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3627 + 68] = mem[idx + _3491 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3627 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3627 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _4123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4123] = 30
                mem[_4123 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                _4273 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4273 + 68] = mem[idx + _4123 + 32]
                    idx = idx + 32
                    continue 
                mem[_4273 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4273 + -mem[64] + 100
            if idx >= stor12.length:
                revert with 0, 50
            mem[0] = stor12[idx]
            mem[32] = 6
            if stor6[stor12[idx]] <= s:
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 5
                _2508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2508] = 30
                mem[_2508 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor12[idx]] > t:
                    _2548 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2548 + 68] = mem[idx + _2508 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2548 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2548 + -mem[64] + 100
                if t < stor5[stor12[idx]]:
                    revert with 0, 17
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                _2725 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2725] = 30
                mem[_2725 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor12[idx]] <= s:
                    if s < stor6[stor12[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor6[stor12[idx]]
                    t = t - stor5[stor12[idx]]
                    continue 
                _2749 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2749 + 68] = mem[idx + _2725 + 32]
                    idx = idx + 32
                    continue 
                mem[_2749 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2749 + -mem[64] + 100
            _2509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2509] = 26
            mem[_2509 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _2549 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2549 + 68] = mem[idx + _2509 + 32]
                    idx = idx + 32
                    continue 
                mem[_2549 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2549 + -mem[64] + 100
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2993] = 30
                    mem[_2993 + 32] = 'SafeMath: subtraction overflow'
                    _3358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3358] = 30
                    mem[_3358 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3495 + 68] = mem[idx + _3358 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _2992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2992] = 30
                    mem[_2992 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2992 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
                    _3494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3494 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3494 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3494 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3225] = 30
                mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                    _3355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3355 + 68] = mem[idx + _3225 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3355 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _3810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3810] = 30
                mem[_3810 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                _3974 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3974 + 68] = mem[idx + _3810 + 32]
                    idx = idx + 32
                    continue 
                mem[_3974 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3974 + -mem[64] + 100
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3047 + 68] = mem[idx + _2991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3047 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3047 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3353 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3353] = 30
                    mem[_3353 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3493 + 68] = mem[idx + _3353 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3493 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3493 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3224] = 30
                mem[_3224 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _3352 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3352 + 68] = mem[idx + _3224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3352 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3352 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _3808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3808] = 30
                mem[_3808 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
                _3972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3972 + 68] = mem[idx + _3808 + 32]
                    idx = idx + 32
                    continue 
                mem[_3972 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3972 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                _3223 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3223] = 30
                mem[_3223 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3351 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3351 + 68] = mem[idx + _3223 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3351 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3351 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _3806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3806] = 30
                mem[_3806 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
                _3971 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3971 + 68] = mem[idx + _3806 + 32]
                    idx = idx + 32
                    continue 
                mem[_3971 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3971 + -mem[64] + 100
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3635] = 30
            mem[_3635 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                _3805 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3805 + 68] = mem[idx + _3635 + 32]
                    idx = idx + 32
                    continue 
                mem[_3805 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3805 + -mem[64] + 100
            if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                revert with 0, 17
            _4277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4277] = 30
            mem[_4277 + 32] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
            _4381 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4381 + 68] = mem[idx + _4277 + 32]
                idx = idx + 32
                continue 
            mem[_4381 + 98] = 0
            revert with memory
              from mem[64]
               len _4381 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor14 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    return 0
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
                return (-1 * (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply)
            if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor14 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
        if arg1 and stor14 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor14 / totalSupply)
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < 0:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
            if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply))
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
            revert with 0, 17
        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
            revert with 0, 17
        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) - ((_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
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
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2482] = 26
                    mem[_2482 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2528 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2528 + 68] = mem[idx + _2482 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2528 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2528 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2970] = 30
                    mem[_2970 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3024 + 68] = mem[idx + _2970 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3024 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3024 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3295] = 30
                    mem[_3295 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3408 + 68] = mem[idx + _3295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3408 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3408 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2529 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2529] = 30
                    mem[_2529 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2569 + 68] = mem[idx + _2529 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2569 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2569 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2746] = 30
                    mem[_2746 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2770 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2770 + 68] = mem[idx + _2746 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2770 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2770 + -mem[64] + 100
                _2530 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2530] = 26
                mem[_2530 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2570 + 68] = mem[idx + _2530 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2570 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2570 + -mem[64] + 100
                if not arg1:
                    return 0
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3026] = 30
                mem[_3026 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _3075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3075 + 68] = mem[idx + _3026 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3075 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3075 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _3409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3409] = 30
                mem[_3409 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor14 / totalSupply:
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor14 / totalSupply)
                _3524 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3524 + 68] = mem[idx + _3409 + 32]
                    idx = idx + 32
                    continue 
                mem[_3524 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3524 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
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
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < 0:
                revert with 0, 17
            if 0 > arg1 * stor14 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor14 / totalSupply < 0:
                revert with 0, 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
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
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2481 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2481] = 26
                    mem[_2481 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2525 + 68] = mem[idx + _2481 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2525 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2525 + -mem[64] + 100
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2966] = 30
                        mem[_2966 + 32] = 'SafeMath: subtraction overflow'
                        _3289 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3289] = 30
                        mem[_3289 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3403 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3403 + 68] = mem[idx + _3289 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3403 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3403 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _2965 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2965] = 30
                        mem[_2965 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3020 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3020 + 68] = mem[idx + _2965 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3020 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3020 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3287] = 30
                        mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3402 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3402 + 68] = mem[idx + _3287 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3402 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3402 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3167] = 30
                    mem[_3167 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3286 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3286 + 68] = mem[idx + _3167 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3286 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3286 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3711] = 30
                    mem[_3711 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3873 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3873 + 68] = mem[idx + _3711 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3873 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3873 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2526] = 30
                    mem[_2526 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2566 + 68] = mem[idx + _2526 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2566 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2566 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2743] = 30
                    mem[_2743 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2767 + 68] = mem[idx + _2743 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2767 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2767 + -mem[64] + 100
                _2527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2527] = 26
                mem[_2527 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2567 + 68] = mem[idx + _2527 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2567 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2567 + -mem[64] + 100
                if not arg1:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        return 0
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3023] = 30
                    mem[_3023 + 32] = 'SafeMath: subtraction overflow'
                    _3407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3407] = 30
                    mem[_3407 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3523 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3523 + 68] = mem[idx + _3407 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3523 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3523 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _3022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3022] = 30
                    mem[_3022 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3073 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3073 + 68] = mem[idx + _3022 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3073 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3073 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3405 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3405] = 30
                    mem[_3405 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3522 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3522 + 68] = mem[idx + _3405 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3522 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3522 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3290] = 30
                mem[_3290 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _3404 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3404 + 68] = mem[idx + _3290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3404 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3404 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                _3876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3876] = 30
                mem[_3876 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor14 / totalSupply)
                _3995 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3995 + 68] = mem[idx + _3876 + 32]
                    idx = idx + 32
                    continue 
                mem[_3995 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3995 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
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
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
            else:
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                    revert with 0, 17
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > !_marketingFee:
            revert with 0, 17
        if _liquidityFee + _marketingFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2480] = 26
                    mem[_2480 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2522 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2522 + 68] = mem[idx + _2480 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2522 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2522 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2962 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2962] = 30
                        mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _3015 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3015 + 68] = mem[idx + _2962 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3015 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3015 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 30
                        mem[_3279 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3394 + 68] = mem[idx + _3279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3394 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2961] = 30
                        mem[_2961 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3014 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3014 + 68] = mem[idx + _2961 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3014 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3014 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3277] = 30
                        mem[_3277 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3393 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3393 + 68] = mem[idx + _3277 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3393 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3393 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3162] = 30
                    mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3276 + 68] = mem[idx + _3162 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3276 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3276 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3700 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3700] = 30
                    mem[_3700 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3863 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3863 + 68] = mem[idx + _3700 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3863 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3863 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2523] = 30
                    mem[_2523 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2563 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2563 + 68] = mem[idx + _2523 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2563 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2563 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2740] = 30
                    mem[_2740 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2764 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2764 + 68] = mem[idx + _2740 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2764 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2764 + -mem[64] + 100
                _2524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2524] = 26
                mem[_2524 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2564 + 68] = mem[idx + _2524 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2564 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2564 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3019 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3019] = 30
                    mem[_3019 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _3068 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3068 + 68] = mem[idx + _3019 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3068 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3068 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3398] = 30
                    mem[_3398 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3519 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3519 + 68] = mem[idx + _3398 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3519 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3519 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _3018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3018] = 30
                    mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3067 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3067 + 68] = mem[idx + _3018 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3067 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3067 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3396] = 30
                    mem[_3396 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3518 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3518 + 68] = mem[idx + _3396 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3518 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3518 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3281] = 30
                mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3395 + 68] = mem[idx + _3281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3395 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3395 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _3866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3866] = 30
                mem[_3866 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                    return (arg1 * stor14 / totalSupply)
                _3992 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3992 + 68] = mem[idx + _3866 + 32]
                    idx = idx + 32
                    continue 
                mem[_3992 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3992 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
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
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                    revert with 0, 17
        else:
            if arg1 and _liquidityFee + _marketingFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / arg1 != _liquidityFee + _marketingFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor12.length:
                mem[0] = stor12[idx]
                mem[32] = 5
                if stor5[stor12[idx]] > t:
                    _2479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2479] = 26
                    mem[_2479 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2519 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2519 + 68] = mem[idx + _2479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2519 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2519 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                return 0
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2954 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2954] = 30
                            mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                            _3266 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3266] = 30
                            mem[_3266 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3384 + 68] = mem[idx + _3266 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3384 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3384 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2953 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2953] = 30
                            mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                                _3008 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3008 + 68] = mem[idx + _2953 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3008 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3008 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            _3264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3264] = 30
                            mem[_3264 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3383 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3383 + 68] = mem[idx + _3264 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3383 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3383 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3153] = 30
                        mem[_3153 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _3263 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3263 + 68] = mem[idx + _3153 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3263 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3263 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3686 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3686] = 30
                        mem[_3686 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3848 + 68] = mem[idx + _3686 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3848 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3848 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            _2952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2952] = 30
                            mem[_2952 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor14 / totalSupply:
                                _3007 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3007 + 68] = mem[idx + _2952 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3007 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3007 + -mem[64] + 100
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            _3261 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3261] = 30
                            mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor14 / totalSupply:
                                if arg1 * stor14 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor14 / totalSupply)
                            _3382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3382 + 68] = mem[idx + _3261 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3382 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3382 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3152 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3152] = 30
                        mem[_3152 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3260 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3260 + 68] = mem[idx + _3152 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3260 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3260 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3684 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3684] = 30
                        mem[_3684 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3846 + 68] = mem[idx + _3684 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3846 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3846 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _3151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3151] = 30
                        mem[_3151 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                            _3259 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3259 + 68] = mem[idx + _3151 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3259 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3259 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3682 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3682] = 30
                        mem[_3682 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                            if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3845 + 68] = mem[idx + _3682 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3845 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3845 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3511] = 30
                    mem[_3511 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3681 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3681 + 68] = mem[idx + _3511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3681 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3681 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _4163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4163] = 30
                    mem[_4163 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _4315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4315 + 68] = mem[idx + _4163 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4315 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4315 + -mem[64] + 100
                if idx >= stor12.length:
                    revert with 0, 50
                mem[0] = stor12[idx]
                mem[32] = 6
                if stor6[stor12[idx]] <= s:
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 5
                    _2520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2520] = 30
                    mem[_2520 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor12[idx]] > t:
                        _2560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2560 + 68] = mem[idx + _2520 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2560 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2560 + -mem[64] + 100
                    if t < stor5[stor12[idx]]:
                        revert with 0, 17
                    if idx >= stor12.length:
                        revert with 0, 50
                    mem[0] = stor12[idx]
                    mem[32] = 6
                    _2737 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2737] = 30
                    mem[_2737 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor12[idx]] <= s:
                        if s < stor6[stor12[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor6[stor12[idx]]
                        t = t - stor5[stor12[idx]]
                        continue 
                    _2761 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2761 + 68] = mem[idx + _2737 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2761 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2761 + -mem[64] + 100
                _2521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2521] = 26
                mem[_2521 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2561 + 68] = mem[idx + _2521 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2561 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2561 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            return 0
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3013] = 30
                        mem[_3013 + 32] = 'SafeMath: subtraction overflow'
                        _3392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3392] = 30
                        mem[_3392 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3515 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3515 + 68] = mem[idx + _3392 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3515 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3515 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _3012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3012] = 30
                        mem[_3012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _3065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3065 + 68] = mem[idx + _3012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3065 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3065 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        _3390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3390] = 30
                        mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3514 + 68] = mem[idx + _3390 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3514 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3514 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3269] = 30
                    mem[_3269 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _3389 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3389 + 68] = mem[idx + _3269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3389 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3389 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3856] = 30
                    mem[_3856 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3989 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3989 + 68] = mem[idx + _3856 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3989 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3989 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        _3011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3011] = 30
                        mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _3064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3064 + 68] = mem[idx + _3011 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3064 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        _3387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3387] = 30
                        mem[_3387 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor14 / totalSupply:
                            if arg1 * stor14 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor14 / totalSupply)
                        _3513 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3513 + 68] = mem[idx + _3387 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3513 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3513 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3268] = 30
                    mem[_3268 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3386 + 68] = mem[idx + _3268 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    _3854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3854] = 30
                    mem[_3854 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= arg1 * stor14 / totalSupply:
                        if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3987 + 68] = mem[idx + _3854 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    _3267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3267] = 30
                    mem[_3267 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _3385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3385 + 68] = mem[idx + _3267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3385 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    _3852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3852] = 30
                    mem[_3852 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor14 / totalSupply)
                    _3986 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3986 + 68] = mem[idx + _3852 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3986 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3986 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3689] = 30
                mem[_3689 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _3851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3851 + 68] = mem[idx + _3689 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3851 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3851 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                _4319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4319] = 30
                mem[_4319 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply <= (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor14 / totalSupply)
                _4387 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4387 + 68] = mem[idx + _4319 + 32]
                    idx = idx + 32
                    continue 
                mem[_4387 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4387 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor14 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and t / s > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > -1 * arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor14 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 and stor14 / totalSupply > -1 / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_marketingFee * arg1) / 100:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply / (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply > (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor14 / totalSupply) - (arg1 * _taxFee / 100 * stor14 / totalSupply) < (_liquidityFee * arg1) + (_marketingFee * arg1) / 100 * stor14 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor14 / totalSupply)
}



}
