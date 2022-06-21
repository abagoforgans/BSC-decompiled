contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address stor8;
uint256 totalSupply;
uint256 stor10;
uint256 totalFees;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor15;
address marketingWalletAddress;
array of struct stor17;
array of struct stor18;
uint8 decimals;
uint256 stor20;
uint256 stor22;
uint256 sub_16bbb4a2;
uint256 sub_7d087485;
uint256 sub_d0b4e12b;
uint256 _sellTaxFee;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor33; offset 168
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 sub_c6961ca2;
uint256 sub_36539606;

function sub_1235e345(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[address(arg1)])
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_16bbb4a2(?) {
    return sub_16bbb4a2
}

function totalSupply() {
    return totalSupply
}

function _sellTaxFee() {
    return _sellTaxFee
}

function decimals() {
    return decimals
}

function sub_36539606(?) {
    return sub_36539606
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

function sub_6319866c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[address(arg1)])
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_7d087485(?) {
    return sub_7d087485
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function sub_c6961ca2(?) {
    return sub_c6961ca2
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function sub_d0b4e12b(?) {
    return sub_d0b4e12b
}

function sub_dbe39c1c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[address(arg1)])
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function sub_4392e1bb(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_16bbb4a2 = arg1
    sub_7d087485 = arg2
    sub_d0b4e12b = arg3
}

function sub_744c0f1d(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _sellTaxFee = arg1
    _sellLiquidityFee = arg2
    _sellMarketingFee = arg3
}

function sub_2b4b0422(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(bool(arg2))
}

function sub_4f1ab8a5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(bool(arg2))
}

function setBlackListAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor33 = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
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
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if idx >= stor8.length:
            revert with 0, 50
        stor8[idx] = stor8[stor8.length]
        stor4[address(arg1)] = 0
        stor7[address(arg1)] = 0
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length] = 0
        stor8.length--
}

function sub_b43d59a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set transaction amount as zero'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        sub_c6961ca2 = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            sub_c6961ca2 = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            sub_c6961ca2 = arg1 * s * t
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set transaction amount as zero'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        _maxTxAmount = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            _maxTxAmount = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            _maxTxAmount = arg1 * s * t
}

function name() {
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

function symbol() {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
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
            if stor10 / totalSupply:
                return (arg1 / stor10 / totalSupply)
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
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
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
            if stor10 / totalSupply:
                return (arg1 / stor10 / totalSupply)
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
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 3
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
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
        if t < stor3[stor8[idx]]:
            revert with 0, 17
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            if s < stor4[stor8[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
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
    if t >= stor10 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor10 / totalSupply)
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
    if stor3[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
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
            if stor10 / totalSupply:
                return (stor3[address(arg1)] / stor10 / totalSupply)
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
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
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
            if stor10 / totalSupply:
                return (stor3[address(arg1)] / stor10 / totalSupply)
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
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
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
        if t < stor3[stor8[idx]]:
            revert with 0, 17
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            if s < stor4[stor8[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
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
    if t >= stor10 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor10 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[address(arg1)] / stor10 / totalSupply)
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
        if stor3[address(arg1)] > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
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
                if stor10 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
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
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] > s:
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
                if stor10 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
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
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 3
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor8[idx]] > t:
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
            if t < stor3[stor8[idx]]:
                revert with 0, 17
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 4
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor8[idx]] <= s:
                if s < stor4[stor8[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor8[idx]]
                t = t - stor3[stor8[idx]]
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
        if t >= stor10 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor10 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
    stor7[address(arg1)] = 1
    stor8.length++
    stor8[stor8.length] = arg1
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 26
                    mem[_2247 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2269 + 68] = mem[idx + _2247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2269 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2269 + -mem[64] + 100
                    if not arg1:
                        _2437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2437] = 30
                        mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                        _2518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2518] = 30
                        mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2775] = 30
                        mem[_2775 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2876 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2876 + 68] = mem[idx + _2775 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2876 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2876 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3169] = 30
                        mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3275 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3275 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3275 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2491] = 30
                    mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2517 + 68] = mem[idx + _2491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _2653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2653] = 30
                    mem[_2653 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2709 + 68] = mem[idx + _2653 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2709 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3056] = 30
                    mem[_3056 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3168 + 68] = mem[idx + _3056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3168 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3168 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3613 + 68] = mem[idx + _3504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3613 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3613 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 30
                    mem[_2270 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2290 + 68] = mem[idx + _2270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2290 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2379] = 30
                    mem[_2379 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2391 + 68] = mem[idx + _2379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2391 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2391 + -mem[64] + 100
                _2271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2271] = 26
                mem[_2271 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2291 + 68] = mem[idx + _2271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2291 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2291 + -mem[64] + 100
                if not arg1:
                    _2453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2453] = 30
                    mem[_2453 + 32] = 'SafeMath: subtraction overflow'
                    _2544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2544] = 30
                    mem[_2544 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2877] = 30
                    mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2959 + 68] = mem[idx + _2877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2959 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2959 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3277] = 30
                    mem[_3277 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if stor10 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3376 + 68] = mem[idx + _3277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3376 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3376 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 30
                mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _2543 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2543 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2543 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2543 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _2710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2710] = 30
                mem[_2710 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2776 + 68] = mem[idx + _2710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3171] = 30
                mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _3276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3276 + 68] = mem[idx + _3171 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3276 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3276 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _3615 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3615] = 30
                mem[_3615 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3699 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3699 + 68] = mem[idx + _3615 + 32]
                    idx = idx + 32
                    continue 
                mem[_3699 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3699 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
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
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * t / s:
                        revert with 0, 17
                    stor10 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            if arg1 and stor22 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor22 / arg1 != stor22:
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
            if arg1 * stor22 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor22 / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 26
                    mem[_2246 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2266 + 68] = mem[idx + _2246 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2266 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2266 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor22 / 100:
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2436] = 30
                            mem[_2436 + 32] = 'SafeMath: subtraction overflow'
                            _2514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2514] = 30
                            mem[_2514 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 30
                            mem[_2772 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2870 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2870 + 68] = mem[idx + _2772 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2870 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2870 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3162] = 30
                            mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if stor10 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3268 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3268 + 68] = mem[idx + _3162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3268 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3268 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2487] = 30
                        mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                        _2647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2647] = 30
                        mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                            _2704 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2704 + 68] = mem[idx + _2647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2704 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2704 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3050] = 30
                        mem[_3050 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3161 + 68] = mem[idx + _3050 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3161 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3495] = 30
                        mem[_3495 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3604 + 68] = mem[idx + _3495 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3604 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2513 + 68] = mem[idx + _2486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _2645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2645] = 30
                        mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2703 + 68] = mem[idx + _2645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2703 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2703 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3049] = 30
                        mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3160 + 68] = mem[idx + _3049 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3160 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _3493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3493] = 30
                        mem[_3493 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            if stor10 < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3603 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3603 + 68] = mem[idx + _3493 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3603 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3603 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2588] = 30
                    mem[_2588 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2644 + 68] = mem[idx + _2588 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2644 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2644 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _2868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2868] = 30
                    mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2950 + 68] = mem[idx + _2868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2950 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2950 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3371] = 30
                    mem[_3371 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3492 + 68] = mem[idx + _3371 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3492 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3492 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3825] = 30
                    mem[_3825 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3926 + 68] = mem[idx + _3825 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3926 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3926 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2267] = 30
                    mem[_2267 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2287 + 68] = mem[idx + _2267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2287 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2376] = 30
                    mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2388 + 68] = mem[idx + _2376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2388 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2388 + -mem[64] + 100
                _2268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2268] = 26
                mem[_2268 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2288 + 68] = mem[idx + _2268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2288 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor22 / 100:
                        _2450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2450] = 30
                        mem[_2450 + 32] = 'SafeMath: subtraction overflow'
                        _2542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2542] = 30
                        mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2871] = 30
                        mem[_2871 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2955 + 68] = mem[idx + _2871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2955 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2955 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3373 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3373 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3373 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3373 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2516] = 30
                    mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                    _2708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2708] = 30
                    mem[_2708 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                        _2774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2774 + 68] = mem[idx + _2708 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2774 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2774 + -mem[64] + 100
                    if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3165] = 30
                    mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3270 + 68] = mem[idx + _3165 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3270 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3270 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3609] = 30
                    mem[_3609 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if stor10 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3697 + 68] = mem[idx + _3609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3697 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor22 / 100:
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2541 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2541 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _2706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2706] = 30
                    mem[_2706 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2773 + 68] = mem[idx + _2706 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2773 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2773 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3164] = 30
                    mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3269 + 68] = mem[idx + _3164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3269 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3269 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3607] = 30
                    mem[_3607 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
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
                        mem[idx + _3696 + 68] = mem[idx + _3607 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3696 + -mem[64] + 100
                if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                    revert with 0, 17
                if not arg1 * stor22 / 100:
                    revert with 0, 18
                if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2648] = 30
                mem[_2648 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _2705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2705 + 68] = mem[idx + _2648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2705 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _2953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2953] = 30
                mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3051 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3051 + 68] = mem[idx + _2953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3051 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3051 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3497] = 30
                mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _3606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3606 + 68] = mem[idx + _3497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3606 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3606 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _3929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3929] = 30
                mem[_3929 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3996 + 68] = mem[idx + _3929 + 32]
                    idx = idx + 32
                    continue 
                mem[_3996 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3996 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor22 / 100:
                        if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor22 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor22 / 100 * t / s:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                            revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * t / s:
                        revert with 0, 17
                    stor10 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor22 / 100:
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
    else:
        if arg1 and stor20 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor20 / arg1 != stor20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor20 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor20 / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor20 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor20 / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2245] = 26
                    mem[_2245 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2263 + 68] = mem[idx + _2245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2263 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2263 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor20 / 100:
                            _2435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2435] = 30
                            mem[_2435 + 32] = 'SafeMath: subtraction overflow'
                            _2509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2509] = 30
                            mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2767 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2767] = 30
                            mem[_2767 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2858 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2858 + 68] = mem[idx + _2767 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2858 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2858 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3150 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3150] = 30
                            mem[_3150 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if stor10 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3256 + 68] = mem[idx + _3150 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3256 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3256 + -mem[64] + 100
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2483] = 30
                        mem[_2483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2508 + 68] = mem[idx + _2483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _2637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2637] = 30
                        mem[_2637 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                            _2695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2695 + 68] = mem[idx + _2637 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2695 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2695 + -mem[64] + 100
                        if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3043] = 30
                        mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3149 + 68] = mem[idx + _3043 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3149 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3149 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3481 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3481] = 30
                        mem[_3481 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3592 + 68] = mem[idx + _3481 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3592 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        _2482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2482] = 30
                        mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2507 + 68] = mem[idx + _2482 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2507 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _2635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2635] = 30
                        mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2694 + 68] = mem[idx + _2635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2694 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = 30
                        mem[_3042 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3148 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3148 + 68] = mem[idx + _3042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3148 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3148 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _3479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3479] = 30
                        mem[_3479 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            if stor10 < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3591 + 68] = mem[idx + _3479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3591 + -mem[64] + 100
                    if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                        revert with 0, 17
                    if not arg1 * stor20 / 100:
                        revert with 0, 18
                    if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 30
                    mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2634 + 68] = mem[idx + _2583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2634 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2634 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _2856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2856] = 30
                    mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                        _2940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2940 + 68] = mem[idx + _2856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2940 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2940 + -mem[64] + 100
                    if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3364] = 30
                    mem[_3364 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3478 + 68] = mem[idx + _3364 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3478 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3478 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3914 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3914 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3914 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 30
                    mem[_2264 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2284 + 68] = mem[idx + _2264 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2284 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2284 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 30
                    mem[_2373 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2385 + 68] = mem[idx + _2373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2385 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2385 + -mem[64] + 100
                _2265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2265] = 26
                mem[_2265 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2285 + 68] = mem[idx + _2265 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2285 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2285 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor20 / 100:
                        _2447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2447] = 30
                        mem[_2447 + 32] = 'SafeMath: subtraction overflow'
                        _2537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2537] = 30
                        mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2859] = 30
                        mem[_2859 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2945 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2945 + 68] = mem[idx + _2859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2945 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2945 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3259] = 30
                        mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                        revert with 0, 17
                    if not arg1 * stor20 / 100:
                        revert with 0, 18
                    if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                        _2536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2536 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2536 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2536 + -mem[64] + 100
                    if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _2699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2699] = 30
                    mem[_2699 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                        _2769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2769 + 68] = mem[idx + _2699 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2769 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2769 + -mem[64] + 100
                    if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3153] = 30
                    mem[_3153 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3258 + 68] = mem[idx + _3153 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3258 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3258 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3597] = 30
                    mem[_3597 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if stor10 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3692 + 68] = mem[idx + _3597 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3692 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3692 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor20 / 100:
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2535 + 68] = mem[idx + _2511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2535 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2535 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _2697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2697] = 30
                    mem[_2697 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
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
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3152] = 30
                    mem[_3152 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3257 + 68] = mem[idx + _3152 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3257 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3257 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3595] = 30
                    mem[_3595 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
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
                        mem[idx + _3691 + 68] = mem[idx + _3595 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3691 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3691 + -mem[64] + 100
                if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                    revert with 0, 17
                if not arg1 * stor20 / 100:
                    revert with 0, 18
                if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2639] = 30
                mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _2696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2696 + 68] = mem[idx + _2639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2696 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _2943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2943] = 30
                mem[_2943 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                    _3044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3044 + 68] = mem[idx + _2943 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3044 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3044 + -mem[64] + 100
                if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _3594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3594 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3594 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3594 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _3917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3917] = 30
                mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3993 + 68] = mem[idx + _3917 + 32]
                    idx = idx + 32
                    continue 
                mem[_3993 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3993 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor20 / 100:
                        if arg1 * stor20 / 100 and t / s > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * t / s / arg1 * stor20 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor20 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor20 / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor20 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor20 / 100 * t / s < 0:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and t / s > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * t / s / arg1 * stor20 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor20 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor20 / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * stor20 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * stor20 / 100 * t / s) < 0:
                            revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * t / s:
                        revert with 0, 17
                    stor10 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor20 / 100:
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            if arg1 and stor22 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor22 / arg1 != stor22:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor20 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor20 / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor22 / 100 > arg1 - (arg1 * stor20 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor20 / 100) < arg1 * stor22 / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2244] = 26
                    mem[_2244 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2260 + 68] = mem[idx + _2244 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2260 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2260 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor20 / 100:
                            if not arg1 * stor22 / 100:
                                _2433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2433] = 30
                                mem[_2433 + 32] = 'SafeMath: subtraction overflow'
                                _2502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2502] = 30
                                mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 3
                                _2760 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2760] = 30
                                mem[_2760 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor3[address(msg.sender)]:
                                    _2843 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2843 + 68] = mem[idx + _2760 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2843 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2843 + -mem[64] + 100
                                if stor3[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3137] = 30
                                mem[_3137 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor10:
                                    if stor10 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _3241 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3241 + 68] = mem[idx + _3137 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3241 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3241 + -mem[64] + 100
                            if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2475 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2475] = 30
                            mem[_2475 + 32] = 'SafeMath: subtraction overflow'
                            _2624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2624] = 30
                            mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                                _2685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2685 + 68] = mem[idx + _2624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2685 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2685 + -mem[64] + 100
                            if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3033] = 30
                            mem[_3033 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3136 + 68] = mem[idx + _3033 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3136 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3465 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3465] = 30
                            mem[_3465 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if stor10 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3576 + 68] = mem[idx + _3465 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3576 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3576 + -mem[64] + 100
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            _2474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2474] = 30
                            mem[_2474 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                                _2501 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2501 + 68] = mem[idx + _2474 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2501 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2501 + -mem[64] + 100
                            if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            _2622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2622] = 30
                            mem[_2622 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                                _2684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2684 + 68] = mem[idx + _2622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2684 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2684 + -mem[64] + 100
                            if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3032] = 30
                            mem[_3032 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3135 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3135 + 68] = mem[idx + _3032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3135 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3135 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3463 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3463] = 30
                            mem[_3463 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if stor10 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3575 + 68] = mem[idx + _3463 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3575 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3575 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 30
                        mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2621 + 68] = mem[idx + _2574 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _2841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2841] = 30
                        mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor10 / totalSupply > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                            _2925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2925 + 68] = mem[idx + _2841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2925 + -mem[64] + 100
                        if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3354] = 30
                        mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3462 + 68] = mem[idx + _3354 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3462 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3462 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3897 + 68] = mem[idx + _3798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        if not arg1 * stor22 / 100:
                            _2473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2473] = 30
                            mem[_2473 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                _2500 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2500 + 68] = mem[idx + _2473 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2500 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2500 + -mem[64] + 100
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            _2619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2619] = 30
                            mem[_2619 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                _2683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2683 + 68] = mem[idx + _2619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2683 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2683 + -mem[64] + 100
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3031] = 30
                            mem[_3031 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                                _3134 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3134 + 68] = mem[idx + _3031 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3134 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3134 + -mem[64] + 100
                            if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                            _3460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3460] = 30
                            mem[_3460 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply <= stor10:
                                if stor10 < arg1 * stor10 / totalSupply:
                                    revert with 0, 17
                                stor10 += -1 * arg1 * stor10 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3574 + 68] = mem[idx + _3460 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3574 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3574 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2573] = 30
                        mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2618 + 68] = mem[idx + _2573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2618 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2618 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _2839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2839] = 30
                        mem[_2839 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _2923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2923 + 68] = mem[idx + _2839 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2923 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2923 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3353] = 30
                        mem[_3353 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3459 + 68] = mem[idx + _3353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3459 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3459 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            if stor10 < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3895 + 68] = mem[idx + _3796 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                        revert with 0, 17
                    if not arg1 * stor20 / 100:
                        revert with 0, 18
                    if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        _2572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2572] = 30
                        mem[_2572 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _2617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2617 + 68] = mem[idx + _2572 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2617 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _2837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2837] = 30
                        mem[_2837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                            _2922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2922 + 68] = mem[idx + _2837 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2922 + -mem[64] + 100
                        if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3352] = 30
                        mem[_3352 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3458 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3458 + 68] = mem[idx + _3352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3458 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3458 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _3794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3794] = 30
                        mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            if stor10 < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3894 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3894 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3894 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2759] = 30
                    mem[_2759 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2836 + 68] = mem[idx + _2759 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2836 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3132] = 30
                    mem[_3132 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                        _3237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3237 + 68] = mem[idx + _3132 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3237 + -mem[64] + 100
                    if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < arg1 * stor22 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3683] = 30
                    mem[_3683 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3793 + 68] = mem[idx + _3683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3793 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3793 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 30
                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4147 + 68] = mem[idx + _4065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2261] = 30
                    mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2281 + 68] = mem[idx + _2261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2281 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2370] = 30
                    mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2382 + 68] = mem[idx + _2370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2382 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2382 + -mem[64] + 100
                _2262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2262] = 26
                mem[_2262 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2282 + 68] = mem[idx + _2262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2282 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor20 / 100:
                        if not arg1 * stor22 / 100:
                            _2443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2443] = 30
                            mem[_2443 + 32] = 'SafeMath: subtraction overflow'
                            _2534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2534] = 30
                            mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2845] = 30
                            mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2935 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2935 + 68] = mem[idx + _2845 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2935 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2935 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3247 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3247] = 30
                            mem[_3247 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if stor10 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3359 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3359 + 68] = mem[idx + _3247 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3359 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3359 + -mem[64] + 100
                        if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                            revert with 0, 17
                        if not arg1 * stor22 / 100:
                            revert with 0, 18
                        if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2506] = 30
                        mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                        _2693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2693] = 30
                        mem[_2693 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                            _2764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2764 + 68] = mem[idx + _2693 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2764 + -mem[64] + 100
                        if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3141] = 30
                        mem[_3141 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3246 + 68] = mem[idx + _3141 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3246 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3585] = 30
                        mem[_3585 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3687 + 68] = mem[idx + _3585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3687 + -mem[64] + 100
                    if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                        revert with 0, 17
                    if not arg1 * stor20 / 100:
                        revert with 0, 18
                    if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor22 / 100:
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 30
                        mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                            _2533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2533 + 68] = mem[idx + _2505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2533 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2533 + -mem[64] + 100
                        if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _2691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2691] = 30
                        mem[_2691 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                            _2763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2763 + 68] = mem[idx + _2691 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2763 + -mem[64] + 100
                        if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3140] = 30
                        mem[_3140 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3245 + 68] = mem[idx + _3140 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3245 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3583] = 30
                        mem[_3583 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if stor10 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3686 + 68] = mem[idx + _3583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3686 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2627] = 30
                    mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2690 + 68] = mem[idx + _2627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _2933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2933] = 30
                    mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor10 / totalSupply > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                        _3037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3037 + 68] = mem[idx + _2933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3037 + -mem[64] + 100
                    if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3469] = 30
                    mem[_3469 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3582 + 68] = mem[idx + _3469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3582 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3905] = 30
                    mem[_3905 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if stor10 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3990 + 68] = mem[idx + _3905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3990 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor20 / 100:
                    if not arg1 * stor22 / 100:
                        _2504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2504] = 30
                        mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2532 + 68] = mem[idx + _2504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2532 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2532 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _2688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2688] = 30
                        mem[_2688 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2762 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2762 + 68] = mem[idx + _2688 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2762 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2762 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3139] = 30
                        mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3244 + 68] = mem[idx + _3139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3244 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _3580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3580] = 30
                        mem[_3580 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            if stor10 < arg1 * stor10 / totalSupply:
                                revert with 0, 17
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3685 + 68] = mem[idx + _3580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3685 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3685 + -mem[64] + 100
                    if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                        revert with 0, 17
                    if not arg1 * stor22 / 100:
                        revert with 0, 18
                    if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2626] = 30
                    mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2687 + 68] = mem[idx + _2626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2687 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _2931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2931] = 30
                    mem[_2931 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3035 + 68] = mem[idx + _2931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3035 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3035 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3468] = 30
                    mem[_3468 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3579 + 68] = mem[idx + _3468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3579 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3903] = 30
                    mem[_3903 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3988 + 68] = mem[idx + _3903 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3988 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3988 + -mem[64] + 100
                if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                    revert with 0, 17
                if not arg1 * stor20 / 100:
                    revert with 0, 18
                if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor22 / 100:
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2686 + 68] = mem[idx + _2625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2686 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _2929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2929] = 30
                    mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3034 + 68] = mem[idx + _2929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                    if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3467] = 30
                    mem[_3467 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3578 + 68] = mem[idx + _3467 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3578 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3578 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _3901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3901] = 30
                    mem[_3901 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        if stor10 < arg1 * stor10 / totalSupply:
                            revert with 0, 17
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3987 + 68] = mem[idx + _3901 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                    revert with 0, 17
                if not arg1 * stor22 / 100:
                    revert with 0, 18
                if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2844 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2844] = 30
                mem[_2844 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _2928 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2928 + 68] = mem[idx + _2844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2928 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2928 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _3242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3242] = 30
                mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor22 / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                    _3355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3355 + 68] = mem[idx + _3242 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3355 + -mem[64] + 100
                if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < arg1 * stor22 / 100 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3801] = 30
                mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _3900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3900 + 68] = mem[idx + _3801 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3900 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3900 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4151] = 30
                mem[_4151 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4203 + 68] = mem[idx + _4151 + 32]
                    idx = idx + 32
                    continue 
                mem[_4203 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4203 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor20 / 100:
                        if arg1 * stor22 / 100:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and t / s > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * t / s / arg1 * stor20 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if arg1 * stor20 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor20 / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor20 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor20 / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor20 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor20 / 100 * t / s:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * t / s > -1 * arg1 * stor20 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor20 / 100 * t / s < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        if not arg1 * stor22 / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and t / s > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * t / s / arg1 * stor20 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if arg1 * stor20 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor20 / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * stor20 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor20 / 100 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and t / s > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * t / s / arg1 * stor22 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor20 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor20 / 100 * t / s:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * t / s > (arg1 * t / s) - (arg1 * stor20 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor20 / 100 * t / s) < arg1 * stor22 / 100 * t / s:
                                revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * t / s:
                        revert with 0, 17
                    stor10 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor20 / 100:
                        if arg1 * stor22 / 100:
                            if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor22 / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor22 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor20 / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * stor10 / totalSupply > -1 * arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor20 / 100 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor20 / 100:
                        if not arg1 * stor22 / 100:
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < arg1 * stor22 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * stor20 / 100 and stor10 / totalSupply > -1 / arg1 * stor20 / 100:
                            revert with 0, 17
                        if not arg1 * stor20 / 100:
                            revert with 0, 18
                        if arg1 * stor20 / 100 * stor10 / totalSupply / arg1 * stor20 / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor22 / 100:
                            if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor22 / 100 and stor10 / totalSupply > -1 / arg1 * stor22 / 100:
                                revert with 0, 17
                            if not arg1 * stor22 / 100:
                                revert with 0, 18
                            if arg1 * stor22 / 100 * stor10 / totalSupply / arg1 * stor22 / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor20 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor10 / totalSupply < arg1 * stor20 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            if arg1 * stor22 / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor10 / totalSupply) - (arg1 * stor20 / 100 * stor10 / totalSupply) < arg1 * stor22 / 100 * stor10 / totalSupply:
                                revert with 0, 17
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor10 < arg1 * stor10 / totalSupply:
                        revert with 0, 17
                    stor10 += -1 * arg1 * stor10 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
