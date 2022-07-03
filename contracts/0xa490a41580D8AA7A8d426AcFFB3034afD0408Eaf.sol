contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of address stor11;
address stor12;
address stor13;
uint256 sub_df375e49;
uint256 sub_f7632f4c;
uint256 sub_c3366099;
uint256 minLottoBalance;
uint256 totalSupply;
uint256 stor20;
uint256 totalFees;
array of struct stor22;
array of struct stor23;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _lottoFee;
uint256 _devFee;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 176
uint8 sub_dc687166; offset 184
uint8 _shouldSwapToBNB; offset 192
uint64 stor34; offset 192
uint128 stor34; offset 184
uint128 stor34; offset 176
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 sub_c151ff1c;
uint8 sub_42737bb1;
uint256 sub_260978d8;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function minLottoBalance() {
    return minLottoBalance
}

function totalSupply() {
    return totalSupply
}

function sub_260978d8(?) {
    return sub_260978d8
}

function sub_2c505e90(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function sub_42737bb1(?) {
    return bool(sub_42737bb1)
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isIncludeFromLotto(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function _devFee() {
    return _devFee
}

function _shouldSwapToBNB() {
    return bool(_shouldSwapToBNB)
}

function geUnlockTime() {
    return geUnlockTime
}

function sub_c151ff1c(?) {
    return sub_c151ff1c
}

function sub_c3366099(?) {
    return sub_c3366099
}

function sub_dc687166(?) {
    return bool(sub_dc687166)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_df375e49(?) {
    return sub_df375e49
}

function _lottoFee() {
    return _lottoFee
}

function sub_f7632f4c(?) {
    return sub_f7632f4c
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setDevFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devFee = arg1
}

function setLottoFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _lottoFee = arg1
}

function setLotteryThresHold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c151ff1c = arg1
}

function setMinLottoBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minLottoBalance = arg1
}

function setAntiWhaleThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_260978d8 = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setUniswapPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function setAntiWhaleEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_42737bb1 = uint8(arg1)
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
}

function setshouldSwapToBNB(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor34.field_192) = uint64(arg1)
}

function setLottoEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor34.field_184) = Mask(72, 0, arg1)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor34.field_176) = Mask(80, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxTxAmount = totalSupply * arg1 / 100
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0xe042455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
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
        stor4[address(arg1)] = 0
        stor7[address(arg1)] = 0
        if not stor11.length:
            revert with 0, 49
        stor11[stor11.length] = 0
        stor11.length--
}

function name() {
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22.length):
                if 31 < uint255(stor22.length) * 0.5:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor22.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        else:
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 0, 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        mem[ceil32(uint255(stor22.length) * 0.5) + 192 len ceil32(uint255(stor22.length) * 0.5)] = mem[128 len ceil32(uint255(stor22.length) * 0.5)]
        if ceil32(uint255(stor22.length) * 0.5) > uint255(stor22.length) * 0.5:
            mem[ceil32(uint255(stor22.length) * 0.5) + (uint255(stor22.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)], mem[(2 * ceil32(uint255(stor22.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor22.length) * 0.5)]), 
    if bool(stor22.length) == stor22.length.field_1 < 32:
        revert with 0, 34
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22.length):
            if 31 < uint255(stor22.length) * 0.5:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while (uint255(stor22.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
    if ceil32(stor22.length.field_1) > stor22.length.field_1:
        mem[ceil32(stor22.length.field_1) + stor22.length.field_1 + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function symbol() {
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor23.length):
            if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor23.length):
                if 31 < uint255(stor23.length) * 0.5:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor23.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)])
                mem[128] = 256 * stor23.length.field_8
        else:
            if bool(stor23.length) == stor23.length.field_1 < 32:
                revert with 0, 34
            if stor23.length.field_1:
                if 31 < stor23.length.field_1:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while stor23.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor23[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)])
                mem[128] = 256 * stor23.length.field_8
        mem[ceil32(uint255(stor23.length) * 0.5) + 192 len ceil32(uint255(stor23.length) * 0.5)] = mem[128 len ceil32(uint255(stor23.length) * 0.5)]
        if ceil32(uint255(stor23.length) * 0.5) > uint255(stor23.length) * 0.5:
            mem[ceil32(uint255(stor23.length) * 0.5) + (uint255(stor23.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor23.length), data=mem[128 len ceil32(uint255(stor23.length) * 0.5)], mem[(2 * ceil32(uint255(stor23.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor23.length) * 0.5)]), 
    if bool(stor23.length) == stor23.length.field_1 < 32:
        revert with 0, 34
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor23.length):
            if 31 < uint255(stor23.length) * 0.5:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while (uint255(stor23.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 0, 34
        if stor23.length.field_1:
            if 31 < stor23.length.field_1:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while stor23.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor23[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)])
            mem[128] = 256 * stor23.length.field_8
    mem[ceil32(stor23.length.field_1) + 192 len ceil32(stor23.length.field_1)] = mem[128 len ceil32(stor23.length.field_1)]
    if ceil32(stor23.length.field_1) > stor23.length.field_1:
        mem[ceil32(stor23.length.field_1) + stor23.length.field_1 + 192] = 0
    return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1)], mem[(2 * ceil32(stor23.length.field_1)) + 192 len 2 * ceil32(stor23.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor20
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 3
        if stor3[stor11[idx]] > t:
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
            if stor20 / totalSupply:
                return (arg1 / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > s:
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
            if stor20 / totalSupply:
                return (arg1 / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 3
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor11[idx]] > t:
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
        if t < stor3[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] <= s:
            if s < stor4[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor11[idx]]
            t = t - stor3[stor11[idx]]
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
    if t >= stor20 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor20 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor20 / totalSupply)
}

function currentLottoPool() payable {
    mem[64] = 96
    require not msg.value
    if stor7[stor13]:
        return stor4[stor13]
    mem[0] = stor13
    mem[32] = 3
    if stor3[stor13] > stor20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor20
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 3
        if stor3[stor11[idx]] > t:
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
            if stor20 / totalSupply:
                return (stor3[stor13] / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > s:
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
            if stor20 / totalSupply:
                return (stor3[stor13] / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor11[idx]] > t:
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
        if t < stor3[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] <= s:
            if s < stor4[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor11[idx]]
            t = t - stor3[stor11[idx]]
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
    if t >= stor20 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[stor13] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor20 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[stor13] / stor20 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor20
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 3
        if stor3[stor11[idx]] > t:
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
            if stor20 / totalSupply:
                return (stor3[address(arg1)] / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > s:
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
            if stor20 / totalSupply:
                return (stor3[address(arg1)] / stor20 / totalSupply)
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
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor11[idx]] > t:
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
        if t < stor3[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] <= s:
            if s < stor4[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor11[idx]]
            t = t - stor3[stor11[idx]]
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
    if t >= stor20 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor20 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[address(arg1)] / stor20 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)]:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor20
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 3
            if stor3[stor11[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _104 + 68] = mem[idx + _100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_104 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _104 + -mem[64] + 100
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor20 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor20 / totalSupply
                    stor7[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _134 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor20 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor20 / totalSupply
                    stor7[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 3
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor11[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _105 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 98] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if t < stor3[stor11[idx]]:
                revert with 0, 17
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 4
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] <= s:
                if s < stor4[stor11[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor11[idx]]
                t = t - stor3[stor11[idx]]
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _140 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_140 + 98] = 0
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor20 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor20 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / stor20 / totalSupply
    stor7[address(arg1)] = 1
    stor11.length++
    stor175B[stor11.length] = arg1
}



}
