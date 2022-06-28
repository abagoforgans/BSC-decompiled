contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
array of address stor9;
address _devWalletAddress;
uint256 totalSupply;
uint256 stor12;
uint256 totalFees;
array of struct stor14;
array of struct stor15;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 sub_d6b0e3b4;
uint256 _maxTxAmount;
uint8 _swapAndLiquifyEnabled;
address _uniswapV2RouterAddress; offset 16
address _uniswapV2PairAddress;

function _devWallet() {
    return _devWalletAddress
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _uniswapV2Router() {
    return _uniswapV2RouterAddress
}

function getUnlockTime() {
    return unlockTime
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

function _uniswapV2Pair() {
    return _uniswapV2PairAddress
}

function _isExcludedFromAutoLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _swapAndLiquifyEnabled() {
    return bool(_swapAndLiquifyEnabled)
}

function sub_d6b0e3b4(?) {
    return sub_d6b0e3b4
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setPercentageOfLiquidityForDev(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6b0e3b4 = arg1
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devWalletAddress = arg1
}

function setUniswapPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _uniswapV2PairAddress = arg1
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _uniswapV2RouterAddress = arg1
}

function setExcludedFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function setExcludedFromAutoLiquidity(address arg1, bool arg2) {
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
    _swapAndLiquifyEnabled = uint8(arg1)
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
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is still locked'
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
    if not stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 >= stor9.length:
            revert with 0, 50
        if idx >= stor9.length:
            revert with 0, 50
        stor9[idx] = stor9[stor9.length]
        stor4[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length] = 0
        stor9.length--
}

function name() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
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

function symbol() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
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
            if stor12 / totalSupply:
                return (arg1 / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
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
            if stor12 / totalSupply:
                return (arg1 / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 3
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
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
        if t < stor3[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            if s < stor4[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
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
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor12 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
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
            if stor12 / totalSupply:
                return (stor3[address(arg1)] / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
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
            if stor12 / totalSupply:
                return (stor3[address(arg1)] / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
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
        if t < stor3[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            if s < stor4[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
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
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[address(arg1)] / stor12 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)]:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 3
            if stor3[stor9[idx]] > t:
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
                if stor12 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > s:
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
                if stor12 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 3
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor9[idx]] > t:
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
            if t < stor3[stor9[idx]]:
                revert with 0, 17
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 4
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] <= s:
                if s < stor4[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor9[idx]]
                t = t - stor3[stor9[idx]]
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
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
    stor6[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
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
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2158] = 26
                    mem[_2158 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2180 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2180 + 68] = mem[idx + _2158 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2180 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2180 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        _2477 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2477] = 30
                        mem[_2477 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2529 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2529 + 68] = mem[idx + _2477 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2529 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2529 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2801] = 30
                        mem[_2801 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _2913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2913 + 68] = mem[idx + _2801 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2913 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2913 + -mem[64] + 100
                    _2478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2478] = 30
                    mem[_2478 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2531 + 68] = mem[idx + _2478 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2531 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2531 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2803] = 30
                    mem[_2803 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _2914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2914 + 68] = mem[idx + _2803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2914 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2914 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2181 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2181] = 30
                    mem[_2181 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2201 + 68] = mem[idx + _2181 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2201 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2201 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2290] = 30
                    mem[_2290 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2302 + 68] = mem[idx + _2290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2302 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2302 + -mem[64] + 100
                _2182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2182] = 26
                mem[_2182 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2202 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2202 + 68] = mem[idx + _2182 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2202 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2202 + -mem[64] + 100
                if not arg1:
                    return 0
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2:
                    _2533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2533] = 30
                    mem[_2533 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2581 + 68] = mem[idx + _2533 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2581 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2581 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2915 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2915] = 30
                    mem[_2915 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3039 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3039 + 68] = mem[idx + _2915 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3039 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3039 + -mem[64] + 100
                _2534 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2534] = 30
                mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2583 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2583 + 68] = mem[idx + _2534 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2583 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2583 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                _2917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2917] = 30
                mem[_2917 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / totalSupply:
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                _3040 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3040 + 68] = mem[idx + _2917 + 32]
                    idx = idx + 32
                    continue 
                mem[_3040 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3040 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
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
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
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
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2157] = 26
                    mem[_2157 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2177 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2177 + 68] = mem[idx + _2157 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2177 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2177 + -mem[64] + 100
                    if arg2:
                        if not arg1:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2468 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2468] = 30
                            mem[_2468 + 32] = 'SafeMath: subtraction overflow'
                            _2786 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2786] = 30
                            mem[_2786 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                            _2902 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2902 + 68] = mem[idx + _2786 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2902 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2902 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2467 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2467] = 30
                            mem[_2467 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2521 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2521 + 68] = mem[idx + _2467 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2521 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2521 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _2784 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2784] = 30
                            mem[_2784 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / totalSupply)
                            _2901 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2901 + 68] = mem[idx + _2784 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2901 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2901 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2671] = 30
                        mem[_2671 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2783 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2783 + 68] = mem[idx + _2671 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2783 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2783 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _3219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3219] = 30
                        mem[_3219 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3375 + 68] = mem[idx + _3219 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3375 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3375 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2470] = 30
                        mem[_2470 + 32] = 'SafeMath: subtraction overflow'
                        _2790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2790] = 30
                        mem[_2790 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _2904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2904 + 68] = mem[idx + _2790 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2904 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2904 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2469] = 30
                        mem[_2469 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2523 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2523 + 68] = mem[idx + _2469 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2523 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2523 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2788] = 30
                        mem[_2788 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _2903 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2903 + 68] = mem[idx + _2788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2903 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2903 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2672] = 30
                    mem[_2672 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2787 + 68] = mem[idx + _2672 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2787 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2787 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _3221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3221] = 30
                    mem[_3221 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3378 + 68] = mem[idx + _3221 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3378 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3378 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2178] = 30
                    mem[_2178 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2198 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2198 + 68] = mem[idx + _2178 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2198 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2198 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2287] = 30
                    mem[_2287 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2299 + 68] = mem[idx + _2287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2299 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2299 + -mem[64] + 100
                _2179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2179] = 26
                mem[_2179 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2199 + 68] = mem[idx + _2179 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2199 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2199 + -mem[64] + 100
                if arg2:
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2526] = 30
                        mem[_2526 + 32] = 'SafeMath: subtraction overflow'
                        _2908 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2908] = 30
                        mem[_2908 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3034 + 68] = mem[idx + _2908 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2525] = 30
                        mem[_2525 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2577 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2577 + 68] = mem[idx + _2525 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2577 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2577 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2906 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2906] = 30
                        mem[_2906 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _3033 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3033 + 68] = mem[idx + _2906 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3033 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3033 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2791 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2791] = 30
                    mem[_2791 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2905 + 68] = mem[idx + _2791 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2905 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2905 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _3381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3381] = 30
                    mem[_3381 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                    _3525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3525 + 68] = mem[idx + _3381 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3525 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3525 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2528] = 30
                    mem[_2528 + 32] = 'SafeMath: subtraction overflow'
                    _2912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2912] = 30
                    mem[_2912 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3036 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3036 + 68] = mem[idx + _2912 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3036 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3036 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2527] = 30
                    mem[_2527 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2579 + 68] = mem[idx + _2527 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2579 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2910] = 30
                    mem[_2910 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3035 + 68] = mem[idx + _2910 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3035 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3035 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2792] = 30
                mem[_2792 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2909 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2909 + 68] = mem[idx + _2792 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2909 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2909 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                _3383 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3383] = 30
                mem[_3383 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                _3528 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3528 + 68] = mem[idx + _3383 + 32]
                    idx = idx + 32
                    continue 
                mem[_3528 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3528 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if arg2:
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * t / s)
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
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
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if arg2:
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
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
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2156 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2156] = 26
                    mem[_2156 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2174 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2174 + 68] = mem[idx + _2156 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2174 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2174 + -mem[64] + 100
                    if arg2:
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2459 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2459] = 30
                            mem[_2459 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2510 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2510 + 68] = mem[idx + _2459 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2510 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2510 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _2766 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2766] = 30
                            mem[_2766 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                            _2884 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2884 + 68] = mem[idx + _2766 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2884 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2884 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _2458 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2458] = 30
                            mem[_2458 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2509 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2509 + 68] = mem[idx + _2458 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2509 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2509 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _2764 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2764] = 30
                            mem[_2764 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / totalSupply)
                            _2883 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2883 + 68] = mem[idx + _2764 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2883 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2883 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2661] = 30
                        mem[_2661 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2763 + 68] = mem[idx + _2661 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2763 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3197] = 30
                        mem[_3197 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                        _3357 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3357 + 68] = mem[idx + _3197 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3357 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3357 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2462 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2462] = 30
                        mem[_2462 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2513 + 68] = mem[idx + _2462 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2771] = 30
                        mem[_2771 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _2886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2886 + 68] = mem[idx + _2771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2886 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2886 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2461 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2461] = 30
                        mem[_2461 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2512 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2512 + 68] = mem[idx + _2461 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2512 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2512 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2769] = 30
                        mem[_2769 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _2885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2885 + 68] = mem[idx + _2769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2885 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2885 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2662] = 30
                    mem[_2662 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2768 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2768 + 68] = mem[idx + _2662 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2768 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2768 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3199] = 30
                    mem[_3199 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3360 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3360 + 68] = mem[idx + _3199 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3360 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3360 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2175] = 30
                    mem[_2175 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2195 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2195 + 68] = mem[idx + _2175 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2195 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2195 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2284] = 30
                    mem[_2284 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2296 + 68] = mem[idx + _2284 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2296 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2296 + -mem[64] + 100
                _2176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2176] = 26
                mem[_2176 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2196 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2196 + 68] = mem[idx + _2176 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2196 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2196 + -mem[64] + 100
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2517] = 30
                        mem[_2517 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2566 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2566 + 68] = mem[idx + _2517 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2566 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2566 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2890] = 30
                        mem[_2890 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                        _3024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3024 + 68] = mem[idx + _2890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3024 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3024 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2516 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2516] = 30
                        mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2565 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2565 + 68] = mem[idx + _2516 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2565 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2565 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2888 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2888] = 30
                        mem[_2888 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _3023 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3023 + 68] = mem[idx + _2888 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3023 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3023 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2773] = 30
                    mem[_2773 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2887 + 68] = mem[idx + _2773 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2887 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2887 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                    _3511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3511 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3511 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3511 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2520] = 30
                    mem[_2520 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2569 + 68] = mem[idx + _2520 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2569 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2569 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _2895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2895] = 30
                    mem[_2895 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3026 + 68] = mem[idx + _2895 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3026 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3026 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2519] = 30
                    mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2568 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2568 + 68] = mem[idx + _2519 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2568 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2568 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2893] = 30
                    mem[_2893 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3025 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3025 + 68] = mem[idx + _2893 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3025 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3025 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2774] = 30
                mem[_2774 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2892 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2892 + 68] = mem[idx + _2774 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2892 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2892 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                _3365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3365] = 30
                mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                _3514 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3514 + 68] = mem[idx + _3365 + 32]
                    idx = idx + 32
                    continue 
                mem[_3514 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3514 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if arg2:
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
            if arg2:
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
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
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2155] = 26
                    mem[_2155 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2171 + 68] = mem[idx + _2155 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2171 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2171 + -mem[64] + 100
                    if arg2:
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _liquidityFee / 100:
                                    return 0
                                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _2442 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2442] = 30
                                mem[_2442 + 32] = 'SafeMath: subtraction overflow'
                                _2736 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2736] = 30
                                mem[_2736 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                                _2862 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2862 + 68] = mem[idx + _2736 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2862 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2862 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _liquidityFee / 100:
                                _2441 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2441] = 30
                                mem[_2441 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                    _2496 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2496 + 68] = mem[idx + _2441 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2496 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2496 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                _2734 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2734] = 30
                                mem[_2734 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                                _2861 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2861 + 68] = mem[idx + _2734 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2861 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2861 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2641 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2641] = 30
                            mem[_2641 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2733 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2733 + 68] = mem[idx + _2641 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2733 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2733 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _3164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3164] = 30
                            mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                            _3326 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3326 + 68] = mem[idx + _3164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3326 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3326 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _2440 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2440] = 30
                                mem[_2440 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    _2495 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2495 + 68] = mem[idx + _2440 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2495 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2495 + -mem[64] + 100
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                _2731 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2731] = 30
                                mem[_2731 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor12 / totalSupply:
                                    if arg1 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor12 / totalSupply)
                                _2860 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2860 + 68] = mem[idx + _2731 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2860 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2860 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2640 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2640] = 30
                            mem[_2640 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2730 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2730 + 68] = mem[idx + _2640 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2730 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2730 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _3162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3162] = 30
                            mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                            _3324 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3324 + 68] = mem[idx + _3162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3324 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3324 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2639 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2639] = 30
                            mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                _2729 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2729 + 68] = mem[idx + _2639 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2729 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2729 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _3160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3160] = 30
                            mem[_3160 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                            _3323 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3323 + 68] = mem[idx + _3160 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3323 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3323 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3005] = 30
                        mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3159 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3159 + 68] = mem[idx + _3005 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3159 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3159 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3675] = 30
                        mem[_3675 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3809 + 68] = mem[idx + _3675 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3809 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3809 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2446 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2446] = 30
                            mem[_2446 + 32] = 'SafeMath: subtraction overflow'
                            _2744 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2744] = 30
                            mem[_2744 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _2866 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2866 + 68] = mem[idx + _2744 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2866 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2866 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2445 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2445] = 30
                            mem[_2445 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2499 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2499 + 68] = mem[idx + _2445 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2499 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2499 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _2742 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2742] = 30
                            mem[_2742 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _2865 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2865 + 68] = mem[idx + _2742 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2865 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2865 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2644] = 30
                        mem[_2644 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2741 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2741 + 68] = mem[idx + _2644 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2741 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2741 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3171] = 30
                        mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3332 + 68] = mem[idx + _3171 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3332 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3332 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2444] = 30
                            mem[_2444 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2498 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2498 + 68] = mem[idx + _2444 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2498 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2498 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _2739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2739] = 30
                            mem[_2739 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / totalSupply)
                            _2864 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2864 + 68] = mem[idx + _2739 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2864 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2864 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2643 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2643] = 30
                        mem[_2643 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2738 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2738 + 68] = mem[idx + _2643 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2738 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2738 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _3169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3169] = 30
                        mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _3330 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3330 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3330 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3330 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2642] = 30
                        mem[_2642 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2737 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2737 + 68] = mem[idx + _2642 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2737 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2737 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3167] = 30
                        mem[_3167 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _3329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3329 + 68] = mem[idx + _3167 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3329 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3329 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3007] = 30
                    mem[_3007 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3166 + 68] = mem[idx + _3007 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3166 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3166 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3677] = 30
                    mem[_3677 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3813 + 68] = mem[idx + _3677 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3813 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3813 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2172] = 30
                    mem[_2172 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2192 + 68] = mem[idx + _2172 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2192 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2192 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2281] = 30
                    mem[_2281 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2293 + 68] = mem[idx + _2281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2293 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2293 + -mem[64] + 100
                _2173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2173] = 26
                mem[_2173 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2193 + 68] = mem[idx + _2173 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2193 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2193 + -mem[64] + 100
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2504] = 30
                            mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                            _2874 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2874] = 30
                            mem[_2874 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                            _3012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3012 + 68] = mem[idx + _2874 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3012 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3012 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2503] = 30
                            mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2560 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2560 + 68] = mem[idx + _2503 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2560 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2560 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _2872 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2872] = 30
                            mem[_2872 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                            _3011 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3011 + 68] = mem[idx + _2872 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3011 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3011 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2747 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2747] = 30
                        mem[_2747 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2871 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2871 + 68] = mem[idx + _2747 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2871 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2871 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3340] = 30
                        mem[_3340 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3494 + 68] = mem[idx + _3340 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3494 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3494 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2502] = 30
                            mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2559 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2559 + 68] = mem[idx + _2502 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2559 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2559 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _2869 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2869] = 30
                            mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / totalSupply)
                            _3010 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3010 + 68] = mem[idx + _2869 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3010 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3010 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2746] = 30
                        mem[_2746 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2868 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2868 + 68] = mem[idx + _2746 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2868 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2868 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _3338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3338] = 30
                        mem[_3338 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3492 + 68] = mem[idx + _3338 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3492 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3492 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2745 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2745] = 30
                        mem[_2745 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2867 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2867 + 68] = mem[idx + _2745 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2867 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2867 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _3336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3336] = 30
                        mem[_3336 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                        _3491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3491 + 68] = mem[idx + _3336 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3491 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3491 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3173] = 30
                    mem[_3173 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3335 + 68] = mem[idx + _3173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3335 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3335 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3817] = 30
                    mem[_3817 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                    _3907 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3907 + 68] = mem[idx + _3817 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3907 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3907 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2508] = 30
                        mem[_2508 + 32] = 'SafeMath: subtraction overflow'
                        _2882 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2882] = 30
                        mem[_2882 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3016 + 68] = mem[idx + _2882 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3016 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2507] = 30
                        mem[_2507 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2563 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2563 + 68] = mem[idx + _2507 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2563 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2563 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2880 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2880] = 30
                        mem[_2880 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3015 + 68] = mem[idx + _2880 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3015 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3015 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2750 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2750] = 30
                    mem[_2750 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2879 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2879 + 68] = mem[idx + _2750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2879 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2879 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3347] = 30
                    mem[_3347 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3500 + 68] = mem[idx + _3347 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3500 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3500 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2506] = 30
                        mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2562 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2562 + 68] = mem[idx + _2506 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2562 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2562 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2877 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2877] = 30
                        mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / totalSupply)
                        _3014 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3014 + 68] = mem[idx + _2877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3014 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3014 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2749 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2749] = 30
                    mem[_2749 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2876 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2876 + 68] = mem[idx + _2749 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2876 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2876 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3498 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3498 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3498 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2748] = 30
                    mem[_2748 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2875 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2875 + 68] = mem[idx + _2748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2875 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2875 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3343] = 30
                    mem[_3343 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    _3497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3497 + 68] = mem[idx + _3343 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3497 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3497 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3175] = 30
                mem[_3175 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3342 + 68] = mem[idx + _3175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3342 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3342 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                _3819 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3819] = 30
                mem[_3819 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                _3911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3911 + 68] = mem[idx + _3819 + 32]
                    idx = idx + 32
                    continue 
                mem[_3911 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3911 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * t / s)
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * t / s)
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            return (arg1 * t / s)
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if arg2:
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor12 / totalSupply)
}



}
