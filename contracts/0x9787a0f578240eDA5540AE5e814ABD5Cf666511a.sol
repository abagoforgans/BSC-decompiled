contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of address stor7;
address marketingWalletAddress;
address sub_ef69ea2bAddress;
uint256 totalSupply;
uint256 stor11;
uint256 totalFees;
array of struct stor13;
array of struct stor14;
uint8 decimals;
uint256 _taxFee;
uint256 stor17;
uint256 _liquidityFee;
uint256 stor19;
uint256 sub_02a30d00;
uint256 stor21;
uint256 _MarketingFee;
uint256 stor23;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor25; offset 168
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 sub_c6961ca2;
uint8 tradingOpen;

function sub_02a30d00(?) {
    return sub_02a30d00
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function MarketingWallet() {
    return marketingWalletAddress
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function _MarketingFee() {
    return _MarketingFee
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function owner() {
    return owner
}

function sub_b92ea807(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function sub_c6961ca2(?) {
    return sub_c6961ca2
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ef69ea2b(?) {
    return sub_ef69ea2bAddress
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    stor4[address(arg1)] = 0
}

function setTradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    tradingOpen = uint8(arg1)
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_4c5da2b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    sub_02a30d00 = arg1
    stor21 = sub_02a30d00
}

function setTaxFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    _taxFee = arg1
    stor17 = _taxFee
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    _MarketingFee = arg1
    stor23 = _MarketingFee
}

function setLiquidityFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    _liquidityFee = arg1
    stor19 = _liquidityFee
}

function sub_35aad1a9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    stor25 = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function sub_6c261975(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    marketingWalletAddress = address(arg1)
    sub_ef69ea2bAddress = address(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor7.length < 1:
            revert with 'NH{q', 17
        if stor7.length - 1 >= stor7.length:
            revert with 'NH{q', 50
        if idx >= stor7.length:
            revert with 'NH{q', 50
        stor7[idx] = stor7[stor7.length]
        stor2[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor7.length:
            revert with 'NH{q', 49
        stor7[stor7.length] = 0
        stor7.length--
}

function sub_b43d59a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set transaction amount as zero'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        sub_c6961ca2 = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 'NH{q', 17
            sub_c6961ca2 = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            sub_c6961ca2 = arg1 * t * s
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set transaction amount as zero'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        _maxTxAmount = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 'NH{q', 17
            _maxTxAmount = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            _maxTxAmount = arg1 * t * s
}

function name() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function symbol() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 1
        if stor1[stor7[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_96 + idx + 68] = mem[_92 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply > 0:
                if not stor11 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor11 / totalSupply)
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_119 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 94] = 0
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 2
        if stor2[stor7[idx]] > s:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_99 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 94] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply > 0:
                if not stor11 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor11 / totalSupply)
            _123 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_123 + idx + 68] = mem[_120 + idx + 32]
                idx = idx + 32
                continue 
            mem[_123 + 94] = 0
            revert with memory
              from mem[64]
               len _123 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 1
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor7[idx]] > t:
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_98 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_98 + 98] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
        if t < stor1[stor7[idx]]:
            revert with 'NH{q', 17
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 2
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor7[idx]] <= s:
            if s < stor2[stor7[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor7[idx]]
            t = t - stor1[stor7[idx]]
            continue 
        _121 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_121 + idx + 68] = mem[_116 + idx + 32]
            idx = idx + 32
            continue 
        mem[_121 + 98] = 0
        revert with memory
          from mem[64]
           len _121 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor11 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (arg1 / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor11 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor11 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor7.length:
        mem[0] = stor7[idx]
        mem[32] = 1
        if stor1[stor7[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_101 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply > 0:
                if not stor11 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor11 / totalSupply)
            _124 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_124 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_124 + 94] = 0
            revert with memory
              from mem[64]
               len _124 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 2
        if stor2[stor7[idx]] > s:
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 26
            mem[_102 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_104 + idx + 68] = mem[_102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_125] = 26
            mem[_125 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply > 0:
                if not stor11 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor11 / totalSupply)
            _128 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_128 + idx + 68] = mem[_125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_128 + 94] = 0
            revert with memory
              from mem[64]
               len _128 + -mem[64] + 100
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 1
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor7[idx]] > t:
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_103 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_103 + 98] = 0
            revert with memory
              from mem[64]
               len _103 + -mem[64] + 100
        if t < stor1[stor7[idx]]:
            revert with 'NH{q', 17
        if idx >= stor7.length:
            revert with 'NH{q', 50
        mem[0] = stor7[idx]
        mem[32] = 2
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor7[idx]] <= s:
            if s < stor2[stor7[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor7[idx]]
            t = t - stor1[stor7[idx]]
            continue 
        _126 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_126 + idx + 68] = mem[_121 + idx + 32]
            idx = idx + 32
            continue 
        mem[_126 + 98] = 0
        revert with memory
          from mem[64]
           len _126 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor11 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor1[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor11 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor11 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MetaRocket: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 1
            if stor1[stor7[idx]] > t:
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_109 + idx + 68] = mem[_105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_109 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _109 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply > 0:
                    if not stor11 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor6[address(arg1)] = 1
                    stor7.length++
                    stor7[stor7.length] = arg1
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_132 + idx + 68] = mem[_125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 94] = 0
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 2
            if stor2[stor7[idx]] > s:
                _110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_110] = 26
                mem[_110 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_112 + idx + 68] = mem[_110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply > 0:
                    if not stor11 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor6[address(arg1)] = 1
                    stor7.length++
                    stor7[stor7.length] = arg1
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_136 + idx + 68] = mem[_133 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 94] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 1
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor7[idx]] > t:
                _111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_111 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_111 + 98] = 0
                revert with memory
                  from mem[64]
                   len _111 + -mem[64] + 100
            if t < stor1[stor7[idx]]:
                revert with 'NH{q', 17
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 2
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor7[idx]] <= s:
                if s < stor2[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor7[idx]]
                t = t - stor1[stor7[idx]]
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_134 + idx + 68] = mem[_129 + idx + 32]
                idx = idx + 32
                continue 
            mem[_134 + 98] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor11 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor11 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor11 / totalSupply:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
    stor6[address(arg1)] = 1
    stor7.length++
    stor7[stor7.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > totalSupply:
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
                    revert with 'NH{q', 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                idx = 0
                s = totalSupply
                t = stor11
                while idx < stor7.length:
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    if stor1[stor7[idx]] > t:
                        _2042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2042] = 26
                        mem[_2042 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2101 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2101 + idx + 68] = mem[_2042 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2101 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2101 + -mem[64] + 100
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if not arg1:
                            return 0
                        if arg1 and stor11 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2526] = 30
                        mem[_2526 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2551 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2551 + idx + 68] = mem[_2526 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2551 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2551 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2748] = 30
                        mem[_2748 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2809 + idx + 68] = mem[_2748 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2809 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2809 + -mem[64] + 100
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    if stor2[stor7[idx]] <= s:
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = stor7[idx]
                        mem[32] = 1
                        _2080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2080] = 30
                        mem[_2080 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor7[idx]] > t:
                            _2114 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2114 + idx + 68] = mem[_2080 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2114 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2114 + -mem[64] + 100
                        if t < stor1[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor7.length:
                            revert with 'NH{q', 50
                        mem[0] = stor7[idx]
                        mem[32] = 2
                        _2250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2250] = 30
                        mem[_2250 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor7[idx]] <= s:
                            if s < stor2[stor7[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor2[stor7[idx]]
                            t = t - stor1[stor7[idx]]
                            continue 
                        _2274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2274 + idx + 68] = mem[_2250 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2274 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2274 + -mem[64] + 100
                    _2102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2102] = 26
                    mem[_2102 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2122 + idx + 68] = mem[_2102 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2122 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2122 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2552 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2552] = 30
                    mem[_2552 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2584 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2584 + idx + 68] = mem[_2552 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2584 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2584 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2810] = 30
                    mem[_2810 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2886 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2886 + idx + 68] = mem[_2810 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2886 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2886 + -mem[64] + 100
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if t >= stor11 / totalSupply:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor11 / totalSupply)
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2036] = 26
                    mem[_2036 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2099 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2099 + idx + 68] = mem[_2036 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2099 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2099 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2525] = 30
                        mem[_2525 + 32] = 'SafeMath: subtraction overflow'
                        _2744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2744] = 30
                        mem[_2744 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
                        _2804 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2804 + idx + 68] = mem[_2744 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2804 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2804 + -mem[64] + 100
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2524] = 30
                        mem[_2524 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2548 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2548 + idx + 68] = mem[_2524 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2548 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2548 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2743] = 30
                        mem[_2743 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2803 + idx + 68] = mem[_2743 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2803 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2803 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2853] = 30
                    mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2914 + idx + 68] = mem[_2853 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2914 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3297] = 30
                    mem[_3297 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                    _3426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3426 + idx + 68] = mem[_3297 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3426 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3426 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2077] = 30
                    mem[_2077 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2113 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2113 + idx + 68] = mem[_2077 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2113 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2113 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2249] = 30
                    mem[_2249 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2273 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2273 + idx + 68] = mem[_2249 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2273 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2273 + -mem[64] + 100
                _2100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2100] = 26
                mem[_2100 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2121 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2121 + idx + 68] = mem[_2100 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2121 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2121 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2550] = 30
                    mem[_2550 + 32] = 'SafeMath: subtraction overflow'
                    _2807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2807] = 30
                    mem[_2807 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
                    _2885 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2885 + idx + 68] = mem[_2807 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2885 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2885 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2549] = 30
                    mem[_2549 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2583 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2583 + idx + 68] = mem[_2549 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2583 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2583 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2806] = 30
                    mem[_2806 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2884 + idx + 68] = mem[_2806 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2884 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2884 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2918 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2918] = 30
                mem[_2918 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    _2990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2990 + idx + 68] = mem[_2918 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2990 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3429 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3429] = 30
                mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                    if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                _3520 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3520 + idx + 68] = mem[_3429 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3520 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3520 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor11 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2030 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2030] = 26
                    mem[_2030 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2097 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2097 + idx + 68] = mem[_2030 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2097 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2097 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2523] = 30
                        mem[_2523 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            _2545 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2545 + idx + 68] = mem[_2523 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2545 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2545 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _2738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2738] = 30
                        mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
                        _2799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2799 + idx + 68] = mem[_2738 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2799 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2799 + -mem[64] + 100
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2522 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2522] = 30
                        mem[_2522 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2544 + idx + 68] = mem[_2522 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2544 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2544 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2737 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2737] = 30
                        mem[_2737 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2798 + idx + 68] = mem[_2737 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2798 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2798 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2848] = 30
                    mem[_2848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        _2908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2908 + idx + 68] = mem[_2848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2908 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3286 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3286] = 30
                    mem[_3286 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
                    _3420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3420 + idx + 68] = mem[_3286 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3420 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3420 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2074] = 30
                    mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2112 + idx + 68] = mem[_2074 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2112 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2112 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2248] = 30
                    mem[_2248 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2272 + idx + 68] = mem[_2248 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2272 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2272 + -mem[64] + 100
                _2098 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2098] = 26
                mem[_2098 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2120 + idx + 68] = mem[_2098 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2120 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2120 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2547] = 30
                    mem[_2547 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        _2582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2582 + idx + 68] = mem[_2547 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2582 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _2801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2801] = 30
                    mem[_2801 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
                    _2883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2883 + idx + 68] = mem[_2801 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2883 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2883 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2546] = 30
                    mem[_2546 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2581 + idx + 68] = mem[_2546 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2581 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2581 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2800] = 30
                    mem[_2800 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2882 + idx + 68] = mem[_2800 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2882 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2882 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2913 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2913] = 30
                mem[_2913 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    _2985 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2985 + idx + 68] = mem[_2913 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2985 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2985 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _3423 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3423] = 30
                mem[_3423 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
                _3517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3517 + idx + 68] = mem[_3423 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3517 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3517 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor11 / totalSupply)
            if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
        if arg1 and _liquidityFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _taxFee / 100:
            revert with 'NH{q', 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = 1
            if stor1[stor7[idx]] > t:
                _2024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2024] = 26
                mem[_2024 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2095 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2095 + idx + 68] = mem[_2024 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2095 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2095 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2521] = 30
                        mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                        _2731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2731] = 30
                        mem[_2731 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
                        _2791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2791 + idx + 68] = mem[_2731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2791 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2791 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2520 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2520] = 30
                        mem[_2520 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            _2540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2540 + idx + 68] = mem[_2520 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2540 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2540 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _2730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2730] = 30
                        mem[_2730 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
                        _2790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2790 + idx + 68] = mem[_2730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2790 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2790 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2843] = 30
                    mem[_2843 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        _2901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2901 + idx + 68] = mem[_2843 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2901 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2901 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3273 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3273] = 30
                    mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                    _3410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3410 + idx + 68] = mem[_3273 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3410 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3410 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2519] = 30
                        mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2539 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2539 + idx + 68] = mem[_2519 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2539 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2539 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2728] = 30
                        mem[_2728 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2789 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2789 + idx + 68] = mem[_2728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2789 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2789 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2842] = 30
                    mem[_2842 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2898 + idx + 68] = mem[_2842 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2898 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2898 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3271] = 30
                    mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                    _3408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3408 + idx + 68] = mem[_3271 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3408 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3408 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2841] = 30
                    mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        _2897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2897 + idx + 68] = mem[_2841 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2897 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3270] = 30
                    mem[_3270 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
                    _3407 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3407 + idx + 68] = mem[_3270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3407 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3407 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3471 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3471] = 30
                mem[_3471 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    _3537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3537 + idx + 68] = mem[_3471 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3537 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3537 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _3891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3891] = 30
                mem[_3891 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                _3987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3987 + idx + 68] = mem[_3891 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3987 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3987 + -mem[64] + 100
            if idx >= stor7.length:
                revert with 'NH{q', 50
            mem[0] = stor7[idx]
            mem[32] = 2
            if stor2[stor7[idx]] <= s:
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 1
                _2071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2071] = 30
                mem[_2071 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor7[idx]] > t:
                    _2111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2111 + idx + 68] = mem[_2071 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2111 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2111 + -mem[64] + 100
                if t < stor1[stor7[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                _2247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2247] = 30
                mem[_2247 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor7[idx]] <= s:
                    if s < stor2[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor7[idx]]
                    t = t - stor1[stor7[idx]]
                    continue 
                _2271 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2271 + idx + 68] = mem[_2247 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2271 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2271 + -mem[64] + 100
            _2096 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2096] = 26
            mem[_2096 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2119 + idx + 68] = mem[_2096 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2119 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2119 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2543] = 30
                    mem[_2543 + 32] = 'SafeMath: subtraction overflow'
                    _2796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2796] = 30
                    mem[_2796 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
                    _2880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2880 + idx + 68] = mem[_2796 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2880 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2880 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2542] = 30
                    mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        _2580 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2580 + idx + 68] = mem[_2542 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2580 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2580 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _2795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2795] = 30
                    mem[_2795 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
                    _2879 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2879 + idx + 68] = mem[_2795 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2879 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2879 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2907 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2907] = 30
                mem[_2907 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                    _2981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2981 + idx + 68] = mem[_2907 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2981 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _3417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3417] = 30
                mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                _3514 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3514 + idx + 68] = mem[_3417 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3514 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3514 + -mem[64] + 100
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _2541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2541] = 30
                    mem[_2541 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2579 + idx + 68] = mem[_2541 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2579 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2793] = 30
                    mem[_2793 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2878 + idx + 68] = mem[_2793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2878 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2878 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2906 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2906] = 30
                mem[_2906 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    _2978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2978 + idx + 68] = mem[_2906 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2978 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3415] = 30
                mem[_3415 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                    if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
                _3512 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3512 + idx + 68] = mem[_3415 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3512 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3512 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                _2905 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2905] = 30
                mem[_2905 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    _2977 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2977 + idx + 68] = mem[_2905 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2977 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2977 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _3414 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3414] = 30
                mem[_3414 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
                _3511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3511 + idx + 68] = mem[_3414 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3511 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3511 + -mem[64] + 100
            if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3544] = 30
            mem[_3544 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                _3635 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3635 + idx + 68] = mem[_3544 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3635 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3635 + -mem[64] + 100
            if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            _3991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3991] = 30
            mem[_3991 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
            _4029 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4029 + idx + 68] = mem[_3991 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4029 + 98] = 0
            revert with memory
              from mem[64]
               len _4029 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor11 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 'NH{q', 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                revert with 'NH{q', 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _liquidityFee / 100 * stor11 / totalSupply)
            if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 100 * stor11 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            return ((-1 * arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
        if arg1 and stor11 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor11 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
        if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 'NH{q', 17
        if not arg1 * _taxFee / 100:
            revert with 'NH{q', 18
        if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply))
        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
            revert with 'NH{q', 17
        if not arg1 * _liquidityFee / 100:
            revert with 'NH{q', 18
        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
            revert with 'NH{q', 17
        if arg1 * _liquidityFee / 100 * stor11 / totalSupply > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) - (arg1 * _liquidityFee / 100 * stor11 / totalSupply))
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
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2066] = 26
                    mem[_2066 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2109 + idx + 68] = mem[_2066 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2109 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2109 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2534 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2534] = 30
                    mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2565 + idx + 68] = mem[_2534 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2565 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2565 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2775] = 30
                    mem[_2775 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2832 + idx + 68] = mem[_2775 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2832 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2832 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2092 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2092] = 30
                    mem[_2092 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2118 + idx + 68] = mem[_2092 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2118 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2118 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2254] = 30
                    mem[_2254 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2278 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2278 + idx + 68] = mem[_2254 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2278 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2278 + -mem[64] + 100
                _2110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2110] = 26
                mem[_2110 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2126 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2126 + idx + 68] = mem[_2110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2126 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2126 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2566 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2566] = 30
                mem[_2566 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    _2590 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2590 + idx + 68] = mem[_2566 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2590 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2590 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2833] = 30
                mem[_2833 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor11 / totalSupply:
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor11 / totalSupply)
                _2896 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2896 + idx + 68] = mem[_2833 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2896 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2896 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                return 0
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < 0:
                revert with 'NH{q', 17
            if 0 > arg1 * stor11 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor11 / totalSupply < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2060] = 26
                    mem[_2060 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2107 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2107 + idx + 68] = mem[_2060 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2107 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2107 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2533 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2533] = 30
                        mem[_2533 + 32] = 'SafeMath: subtraction overflow'
                        _2771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2771] = 30
                        mem[_2771 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2827 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2827 + idx + 68] = mem[_2771 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2827 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2827 + -mem[64] + 100
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2532] = 30
                        mem[_2532 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2562 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2562 + idx + 68] = mem[_2532 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2562 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2562 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2770 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2770] = 30
                        mem[_2770 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2826 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2826 + idx + 68] = mem[_2770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2826 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2826 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2874] = 30
                    mem[_2874 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2938 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2938 + idx + 68] = mem[_2874 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2938 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2938 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3349 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3349] = 30
                    mem[_3349 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _3453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3453 + idx + 68] = mem[_3349 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3453 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3453 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2089] = 30
                    mem[_2089 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2117 + idx + 68] = mem[_2089 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2117 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2117 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2253] = 30
                    mem[_2253 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2277 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2277 + idx + 68] = mem[_2253 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2277 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2277 + -mem[64] + 100
                _2108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2108] = 26
                mem[_2108 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2125 + idx + 68] = mem[_2108 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2125 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2125 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2564] = 30
                    mem[_2564 + 32] = 'SafeMath: subtraction overflow'
                    _2830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2830] = 30
                    mem[_2830 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2895 + idx + 68] = mem[_2830 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2895 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2895 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2563] = 30
                    mem[_2563 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2589 + idx + 68] = mem[_2563 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2589 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2589 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2829] = 30
                    mem[_2829 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2894 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2894 + idx + 68] = mem[_2829 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2894 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2894 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2942 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2942] = 30
                mem[_2942 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    _3009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3009 + idx + 68] = mem[_2942 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3009 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3009 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3456 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3456] = 30
                mem[_3456 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                    if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor11 / totalSupply)
                _3533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3533 + idx + 68] = mem[_3456 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3533 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3533 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2054 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2054] = 26
                    mem[_2054 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2105 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2105 + idx + 68] = mem[_2054 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2105 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2105 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2531] = 30
                        mem[_2531 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            _2559 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2559 + idx + 68] = mem[_2531 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2559 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2559 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _2765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2765] = 30
                        mem[_2765 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2822 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2822 + idx + 68] = mem[_2765 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2822 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2822 + -mem[64] + 100
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2530] = 30
                        mem[_2530 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2558 + idx + 68] = mem[_2530 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2558 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2558 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2764] = 30
                        mem[_2764 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2821 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2821 + idx + 68] = mem[_2764 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2821 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2821 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2869] = 30
                    mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        _2932 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2932 + idx + 68] = mem[_2869 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2932 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2932 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3338] = 30
                    mem[_3338 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _3447 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3447 + idx + 68] = mem[_3338 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3447 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3447 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2086 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2086] = 30
                    mem[_2086 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2116 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2116 + idx + 68] = mem[_2086 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2116 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2116 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2252] = 30
                    mem[_2252 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2276 + idx + 68] = mem[_2252 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2276 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2276 + -mem[64] + 100
                _2106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2106] = 26
                mem[_2106 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2124 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2124 + idx + 68] = mem[_2106 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2124 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2124 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2561] = 30
                    mem[_2561 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        _2588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2588 + idx + 68] = mem[_2561 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2588 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2588 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _2824 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2824] = 30
                    mem[_2824 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2893 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2893 + idx + 68] = mem[_2824 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2893 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2893 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2560] = 30
                    mem[_2560 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2587 + idx + 68] = mem[_2560 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2587 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2823] = 30
                    mem[_2823 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _2892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2892 + idx + 68] = mem[_2823 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2892 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2892 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2937] = 30
                mem[_2937 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    _3004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3004 + idx + 68] = mem[_2937 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3004 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3004 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _3450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3450] = 30
                mem[_3450 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor11 / totalSupply)
                _3530 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3530 + idx + 68] = mem[_3450 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3530 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3530 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                    revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor11
            while idx < stor7.length:
                mem[0] = stor7[idx]
                mem[32] = 1
                if stor1[stor7[idx]] > t:
                    _2048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2048] = 26
                    mem[_2048 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2103 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2103 + idx + 68] = mem[_2048 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2103 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2103 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2529] = 30
                            mem[_2529 + 32] = 'SafeMath: subtraction overflow'
                            _2758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2758] = 30
                            mem[_2758 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2814 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2814 + idx + 68] = mem[_2758 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2814 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2814 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2528 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2528] = 30
                            mem[_2528 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                                _2554 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2554 + idx + 68] = mem[_2528 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2554 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2554 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            _2757 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2757] = 30
                            mem[_2757 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2813 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2813 + idx + 68] = mem[_2757 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2813 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2813 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2864] = 30
                        mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            _2925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2925 + idx + 68] = mem[_2864 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2925 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _3325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3325] = 30
                        mem[_3325 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3437 + idx + 68] = mem[_3325 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3437 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3437 + -mem[64] + 100
                    if arg1 and stor11 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2527 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2527] = 30
                            mem[_2527 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor11 / totalSupply:
                                _2553 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2553 + idx + 68] = mem[_2527 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2553 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2553 + -mem[64] + 100
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2755 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2755] = 30
                            mem[_2755 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor11 / totalSupply:
                                if arg1 * stor11 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor11 / totalSupply)
                            _2812 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2812 + idx + 68] = mem[_2755 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2812 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2812 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2863 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2863] = 30
                        mem[_2863 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2922 + idx + 68] = mem[_2863 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2922 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3323] = 30
                        mem[_3323 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _3435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3435 + idx + 68] = mem[_3323 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3435 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3435 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2862] = 30
                        mem[_2862 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                            _2921 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2921 + idx + 68] = mem[_2862 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2921 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2921 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _3322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3322] = 30
                        mem[_3322 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                            if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _3434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3434 + idx + 68] = mem[_3322 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3434 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3434 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = 30
                    mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        _3557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3557 + idx + 68] = mem[_3496 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3557 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3557 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3919] = 30
                    mem[_3919 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _3999 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3999 + idx + 68] = mem[_3919 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3999 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3999 + -mem[64] + 100
                if idx >= stor7.length:
                    revert with 'NH{q', 50
                mem[0] = stor7[idx]
                mem[32] = 2
                if stor2[stor7[idx]] <= s:
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 1
                    _2083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2083] = 30
                    mem[_2083 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor7[idx]] > t:
                        _2115 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2115 + idx + 68] = mem[_2083 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2115 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2115 + -mem[64] + 100
                    if t < stor1[stor7[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor7.length:
                        revert with 'NH{q', 50
                    mem[0] = stor7[idx]
                    mem[32] = 2
                    _2251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2251] = 30
                    mem[_2251 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor7[idx]] <= s:
                        if s < stor2[stor7[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor7[idx]]
                        t = t - stor1[stor7[idx]]
                        continue 
                    _2275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2275 + idx + 68] = mem[_2251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2275 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2275 + -mem[64] + 100
                _2104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2104] = 26
                mem[_2104 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2123 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2123 + idx + 68] = mem[_2104 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2123 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2123 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2557] = 30
                        mem[_2557 + 32] = 'SafeMath: subtraction overflow'
                        _2819 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2819] = 30
                        mem[_2819 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2890 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2890 + idx + 68] = mem[_2819 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2890 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2890 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2556] = 30
                        mem[_2556 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            _2586 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2586 + idx + 68] = mem[_2556 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2586 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2586 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        _2818 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2818] = 30
                        mem[_2818 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2889 + idx + 68] = mem[_2818 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2889 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2889 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2931] = 30
                    mem[_2931 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                        _3000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3000 + idx + 68] = mem[_2931 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3000 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3000 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3444] = 30
                    mem[_3444 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3527 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3527 + idx + 68] = mem[_3444 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3527 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3527 + -mem[64] + 100
                if arg1 and stor11 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2555] = 30
                        mem[_2555 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor11 / totalSupply:
                            _2585 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2585 + idx + 68] = mem[_2555 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2585 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2585 + -mem[64] + 100
                        if arg1 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2816 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2816] = 30
                        mem[_2816 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor11 / totalSupply:
                            if arg1 * stor11 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor11 / totalSupply)
                        _2888 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2888 + idx + 68] = mem[_2816 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2888 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2888 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2930] = 30
                    mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        _2997 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2997 + idx + 68] = mem[_2930 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2997 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2997 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3442] = 30
                    mem[_3442 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= arg1 * stor11 / totalSupply:
                        if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _3525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3525 + idx + 68] = mem[_3442 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3525 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3525 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2929] = 30
                    mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        _2996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2996 + idx + 68] = mem[_2929 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2996 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2996 + -mem[64] + 100
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    _3441 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3441] = 30
                    mem[_3441 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor11 / totalSupply)
                    _3524 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3524 + idx + 68] = mem[_3441 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3524 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3524 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3564 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3564] = 30
                mem[_3564 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                    _3646 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3646 + idx + 68] = mem[_3564 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3646 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3646 + -mem[64] + 100
                if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                    revert with 'NH{q', 17
                _4003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4003] = 30
                mem[_4003 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor11 / totalSupply <= (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor11 / totalSupply)
                _4035 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4035 + idx + 68] = mem[_4003 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4035 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4035 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor11 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor11 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * stor11 / totalSupply > -1 * arg1 * _taxFee / 100 * stor11 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor11 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor11 / totalSupply / arg1 != stor11 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor11 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor11 / totalSupply / arg1 * _taxFee / 100 != stor11 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor11 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply / arg1 * _liquidityFee / 100 != stor11 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor11 / totalSupply > arg1 * stor11 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor11 / totalSupply < arg1 * _taxFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor11 / totalSupply > (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor11 / totalSupply) - (arg1 * _taxFee / 100 * stor11 / totalSupply) < arg1 * _liquidityFee / 100 * stor11 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor11 / totalSupply)
}



}
