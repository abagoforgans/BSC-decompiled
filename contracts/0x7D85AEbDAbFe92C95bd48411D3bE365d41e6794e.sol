contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address stor8;
uint256 totalSupply;
uint256 stor10;
uint256 totalFees;
array of struct stor12;
array of struct stor13;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _burnFee;
address deadAddress;
uint256 _marketingFee;
address marketingWalletAddress;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor26; offset 168
address uniswapV2PairAddress;
uint256 numTokensSellToAddToLiquidity;
uint256 _maxTxAmount;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _marketingFee() {
    return _marketingFee
}

function deadAddress() {
    return deadAddress
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

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function marketingWallet() {
    return marketingWalletAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function _burnFee() {
    return _burnFee
}

function numTokensSellToAddToLiquidity() {
    return numTokensSellToAddToLiquidity
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _burnFee = arg1
}

function setMarketingFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
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

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = Mask(88, 0, arg1)
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
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        numTokensSellToAddToLiquidity = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 0, 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            numTokensSellToAddToLiquidity = arg1 * 10^decimals
        else:
            if var23005 > 1:
                s = var23001
                t = var23002
                u = var23005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * t > -1 / arg1:
                            revert with 0, 17
                        numTokensSellToAddToLiquidity = arg1 * s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * s * t > -1 / arg1:
                            revert with 0, 17
                        numTokensSellToAddToLiquidity = arg1 * s * s * s * t
                revert with 0, 17
            if var23002 > -1 / var23001:
                revert with 0, 17
            if arg1 and var23001 * var23002 > -1 / arg1:
                revert with 0, 17
            numTokensSellToAddToLiquidity = arg1 * var23001 * var23002
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
            if 10^decimals > -1:
                revert with 0, 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            _maxTxAmount = arg1 * 10^decimals
        else:
            if var24005 > 1:
                s = var24001
                t = var24002
                u = var24005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * t > -1 / arg1:
                            revert with 0, 17
                        _maxTxAmount = arg1 * s * s * t
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if arg1 and s * s * s * t > -1 / arg1:
                            revert with 0, 17
                        _maxTxAmount = arg1 * s * s * s * t
                revert with 0, 17
            if var24002 > -1 / var24001:
                revert with 0, 17
            if arg1 and var24001 * var24002 > -1 / arg1:
                revert with 0, 17
            _maxTxAmount = arg1 * var24001 * var24002
}

function name() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function symbol() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
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
                revert with 0, 34
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
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 26
            mem[_93 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _98 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _98 + 68] = mem[idx + _93 + 32]
                    idx = idx + 32
                    continue 
                mem[_98 + 94] = 0
                revert with memory
                  from mem[64]
                   len _98 + -mem[64] + 100
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = 26
            mem[_118 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply:
                return (arg1 / stor10 / totalSupply)
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _127 + 68] = mem[idx + _118 + 32]
                idx = idx + 32
                continue 
            mem[_127 + 94] = 0
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 26
            mem[_99 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _104 + 68] = mem[idx + _99 + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply:
                return (arg1 / stor10 / totalSupply)
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _134 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_134 + 94] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 3
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 30
        mem[_96 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _96 + 32]
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
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 30
        mem[_123 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            if s < stor4[stor8[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
            continue 
        _130 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _130 + 68] = mem[idx + _123 + 32]
            idx = idx + 32
            continue 
        mem[_130 + 98] = 0
        revert with memory
          from mem[64]
           len _130 + -mem[64] + 100
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
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply:
                return (stor3[address(arg1)] / stor10 / totalSupply)
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _132 + 68] = mem[idx + _123 + 32]
                idx = idx + 32
                continue 
            mem[_132 + 94] = 0
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 26
            mem[_104 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _109 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _109 + 68] = mem[idx + _104 + 32]
                    idx = idx + 32
                    continue 
                mem[_109 + 94] = 0
                revert with memory
                  from mem[64]
                   len _109 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply:
                return (stor3[address(arg1)] / stor10 / totalSupply)
            _139 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _139 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_139 + 94] = 0
            revert with memory
              from mem[64]
               len _139 + -mem[64] + 100
        if idx >= stor8.length:
            revert with 0, 50
        mem[0] = stor8[idx]
        mem[32] = 3
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _101 + 32]
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
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 30
        mem[_128 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            if s < stor4[stor8[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
            continue 
        _135 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _135 + 68] = mem[idx + _128 + 32]
            idx = idx + 32
            continue 
        mem[_135 + 98] = 0
        revert with memory
          from mem[64]
           len _135 + -mem[64] + 100
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
                _101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_101] = 26
                mem[_101 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _106 + 68] = mem[idx + _101 + 32]
                        idx = idx + 32
                        continue 
                    mem[_106 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _106 + -mem[64] + 100
                _126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_126] = 26
                mem[_126 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _135 + 68] = mem[idx + _126 + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 94] = 0
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] > s:
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = 26
                mem[_107 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _112 + 68] = mem[idx + _107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 3
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 30
            mem[_104 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor8[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _104 + 32]
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
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor8[idx]] <= s:
                if s < stor4[stor8[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor8[idx]]
                t = t - stor3[stor8[idx]]
                continue 
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _138 + 68] = mem[idx + _131 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 98] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
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

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
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
                        _2480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2480] = 26
                        mem[_2480 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _2517 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2517 + 68] = mem[idx + _2480 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2517 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2517 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor10 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2936] = 30
                        mem[_2936 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2988 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2988 + 68] = mem[idx + _2936 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2988 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2988 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3236] = 30
                        mem[_3236 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3236 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] <= s:
                        if idx >= stor8.length:
                            revert with 0, 50
                        mem[0] = stor8[idx]
                        mem[32] = 3
                        _2502 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2502] = 30
                        mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor8[idx]] > t:
                            _2542 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2542 + 68] = mem[idx + _2502 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2542 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2542 + -mem[64] + 100
                        if t < stor3[stor8[idx]]:
                            revert with 0, 17
                        if idx >= stor8.length:
                            revert with 0, 50
                        mem[0] = stor8[idx]
                        mem[32] = 4
                        _2713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2713] = 30
                        mem[_2713 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor8[idx]] <= s:
                            if s < stor4[stor8[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor8[idx]]
                            t = t - stor3[stor8[idx]]
                            continue 
                        _2742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2742 + 68] = mem[idx + _2713 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2742 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2742 + -mem[64] + 100
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 26
                    mem[_2518 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2562 + 68] = mem[idx + _2518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2562 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2562 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 30
                    mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3489 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3489 + 68] = mem[idx + _3367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3489 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3489 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor10 / totalSupply:
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
                return (arg1 * stor10 / totalSupply)
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2476] = 26
                    mem[_2476 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2514 + 68] = mem[idx + _2476 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2514 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2514 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2931] = 30
                        mem[_2931 + 32] = 'SafeMath: subtraction overflow'
                        _3229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3229] = 30
                        mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3361 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3361 + 68] = mem[idx + _3229 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3361 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3361 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2983 + 68] = mem[idx + _2930 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2983 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2983 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3227] = 30
                        mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3360 + 68] = mem[idx + _3227 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3360 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3123 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3123] = 30
                    mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3226 + 68] = mem[idx + _3123 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3226 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3226 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3646] = 30
                    mem[_3646 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
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
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2501] = 30
                    mem[_2501 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2539 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2539 + 68] = mem[idx + _2501 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2539 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2539 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2711] = 30
                    mem[_2711 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2741 + 68] = mem[idx + _2711 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2741 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2741 + -mem[64] + 100
                _2515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2515] = 26
                mem[_2515 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2560 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2560 + 68] = mem[idx + _2515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2560 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2560 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2986] = 30
                    mem[_2986 + 32] = 'SafeMath: subtraction overflow'
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _3488 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3488 + 68] = mem[idx + _3365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3488 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3488 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3046 + 68] = mem[idx + _2985 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3046 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3046 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3487 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3487 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3487 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3230] = 30
                mem[_3230 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3362 + 68] = mem[idx + _3230 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3362 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3362 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _3820 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3820] = 30
                mem[_3820 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _3970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3970 + 68] = mem[idx + _3820 + 32]
                    idx = idx + 32
                    continue 
                mem[_3970 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3970 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
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
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor10 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < 0:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2472] = 26
                    mem[_2472 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2511 + 68] = mem[idx + _2472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2511 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2511 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2927 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2927] = 30
                        mem[_2927 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _2978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2978 + 68] = mem[idx + _2927 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2978 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2978 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3219] = 30
                        mem[_3219 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3352 + 68] = mem[idx + _3219 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3352 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3352 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2926 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2926] = 30
                        mem[_2926 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2977 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2977 + 68] = mem[idx + _2926 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2977 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2977 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3217] = 30
                        mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3351 + 68] = mem[idx + _3217 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3351 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 30
                    mem[_3116 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3216 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3216 + 68] = mem[idx + _3116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3216 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3216 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3636] = 30
                    mem[_3636 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _3808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3808 + 68] = mem[idx + _3636 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3808 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3808 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2500] = 30
                    mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2536 + 68] = mem[idx + _2500 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2536 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2536 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2709] = 30
                    mem[_2709 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2740 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2740 + 68] = mem[idx + _2709 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2740 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2740 + -mem[64] + 100
                _2512 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2512] = 26
                mem[_2512 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2558 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2558 + 68] = mem[idx + _2512 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2558 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2558 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2982 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2982] = 30
                    mem[_2982 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3041 + 68] = mem[idx + _2982 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3041 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3041 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _3482 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3482 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3482 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3482 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2981] = 30
                    mem[_2981 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3040 + 68] = mem[idx + _2981 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3040 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3481 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3481 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3481 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3221] = 30
                mem[_3221 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3353 + 68] = mem[idx + _3221 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3353 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _3811 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3811] = 30
                mem[_3811 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _3967 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3967 + 68] = mem[idx + _3811 + 32]
                    idx = idx + 32
                    continue 
                mem[_3967 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3967 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
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
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor10 / totalSupply)
            if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
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
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
                _2468 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2468] = 26
                mem[_2468 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2508 + 68] = mem[idx + _2468 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2508 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2508 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2918] = 30
                        mem[_2918 + 32] = 'SafeMath: subtraction overflow'
                        _3202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3202] = 30
                        mem[_3202 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3342 + 68] = mem[idx + _3202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3342 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2917] = 30
                        mem[_2917 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _2967 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2967 + 68] = mem[idx + _2917 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2967 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2967 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3200] = 30
                        mem[_3200 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3341 + 68] = mem[idx + _3200 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3341 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3341 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3106] = 30
                    mem[_3106 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3199 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3199 + 68] = mem[idx + _3106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3199 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3199 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3622] = 30
                    mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _3794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3794 + 68] = mem[idx + _3622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3794 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3794 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2916 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2916] = 30
                        mem[_2916 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _2966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2966 + 68] = mem[idx + _2916 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2966 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2966 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3197] = 30
                        mem[_3197 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3340 + 68] = mem[idx + _3197 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3340 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3340 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3104] = 30
                    mem[_3104 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3196 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3196 + 68] = mem[idx + _3104 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3196 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3196 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 30
                    mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3792 + 68] = mem[idx + _3620 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3103 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3103] = 30
                    mem[_3103 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3195 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3195 + 68] = mem[idx + _3103 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3195 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3195 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3618] = 30
                    mem[_3618 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _3791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3791 + 68] = mem[idx + _3618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3791 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3791 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3473] = 30
                mem[_3473 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3617 + 68] = mem[idx + _3473 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3617 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3617 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _4113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4113] = 30
                mem[_4113 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4265 + 68] = mem[idx + _4113 + 32]
                    idx = idx + 32
                    continue 
                mem[_4265 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4265 + -mem[64] + 100
            if idx >= stor8.length:
                revert with 0, 50
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] <= s:
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 3
                _2499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2499] = 30
                mem[_2499 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2533 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2533 + 68] = mem[idx + _2499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2533 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2533 + -mem[64] + 100
                if t < stor3[stor8[idx]]:
                    revert with 0, 17
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                _2707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2707] = 30
                mem[_2707 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    if s < stor4[stor8[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _2739 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2739 + 68] = mem[idx + _2707 + 32]
                    idx = idx + 32
                    continue 
                mem[_2739 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2739 + -mem[64] + 100
            _2509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2509] = 26
            mem[_2509 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _2556 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2556 + 68] = mem[idx + _2509 + 32]
                    idx = idx + 32
                    continue 
                mem[_2556 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2556 + -mem[64] + 100
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2972 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2972] = 30
                    mem[_2972 + 32] = 'SafeMath: subtraction overflow'
                    _3350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3350] = 30
                    mem[_3350 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _3478 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3478 + 68] = mem[idx + _3350 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3478 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3478 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2971] = 30
                    mem[_2971 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3037 + 68] = mem[idx + _2971 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3037 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3348] = 30
                    mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _3477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3477 + 68] = mem[idx + _3348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3477 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3477 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3206] = 30
                mem[_3206 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    _3347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3347 + 68] = mem[idx + _3206 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3347 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _3802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3802] = 30
                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _3964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3964 + 68] = mem[idx + _3802 + 32]
                    idx = idx + 32
                    continue 
                mem[_3964 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3964 + -mem[64] + 100
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _2970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2970] = 30
                    mem[_2970 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3036 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3036 + 68] = mem[idx + _2970 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3036 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3036 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3476 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3476 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3476 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3476 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3204 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3204] = 30
                mem[_3204 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3344 + 68] = mem[idx + _3204 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3344 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3344 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _3800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3800] = 30
                mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _3962 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3962 + 68] = mem[idx + _3800 + 32]
                    idx = idx + 32
                    continue 
                mem[_3962 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3962 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                _3203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3203] = 30
                mem[_3203 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3343 + 68] = mem[idx + _3203 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3343 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3343 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _3798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3798] = 30
                mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _3961 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3961 + 68] = mem[idx + _3798 + 32]
                    idx = idx + 32
                    continue 
                mem[_3961 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3961 + -mem[64] + 100
            if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3624 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3624] = 30
            mem[_3624 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                _3797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3797 + 68] = mem[idx + _3624 + 32]
                    idx = idx + 32
                    continue 
                mem[_3797 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3797 + -mem[64] + 100
            if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            _4269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4269] = 30
            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
            _4373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4373 + 68] = mem[idx + _4269 + 32]
                idx = idx + 32
                continue 
            mem[_4373 + 98] = 0
            revert with memory
              from mem[64]
               len _4373 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor10 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
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
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        if arg1 and stor10 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor10 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < 0:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
            revert with 0, 17
        if not arg1 * _liquidityFee / 100:
            revert with 0, 18
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
            revert with 0, 17
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
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
                    _2496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2496] = 26
                    mem[_2496 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2529 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2529 + 68] = mem[idx + _2496 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2529 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2529 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2962] = 30
                    mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3016 + 68] = mem[idx + _2962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3016 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3287] = 30
                    mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3400 + 68] = mem[idx + _3287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3400 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3400 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = 30
                    mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2554 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2554 + 68] = mem[idx + _2506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2554 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2554 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2721] = 30
                    mem[_2721 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2746 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2746 + 68] = mem[idx + _2721 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2746 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2746 + -mem[64] + 100
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
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3018] = 30
                mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
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
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _3401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3401] = 30
                mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor10 / totalSupply:
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor10 / totalSupply)
                _3516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3516 + 68] = mem[idx + _3401 + 32]
                    idx = idx + 32
                    continue 
                mem[_3516 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3516 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2492] = 26
                    mem[_2492 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2526 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2526 + 68] = mem[idx + _2492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2526 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2526 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2957] = 30
                        mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                        _3280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3280] = 30
                        mem[_3280 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3395 + 68] = mem[idx + _3280 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3395 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3395 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2956] = 30
                        mem[_2956 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3011 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3011 + 68] = mem[idx + _2956 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3011 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3011 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3278] = 30
                        mem[_3278 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3394 + 68] = mem[idx + _3278 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3394 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3158] = 30
                    mem[_3158 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3277 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3277 + 68] = mem[idx + _3158 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3277 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3277 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3697] = 30
                    mem[_3697 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3859 + 68] = mem[idx + _3697 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3859 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3859 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2505] = 30
                    mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2551 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2551 + 68] = mem[idx + _2505 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2551 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2551 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2719] = 30
                    mem[_2719 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2745 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2745 + 68] = mem[idx + _2719 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2745 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2745 + -mem[64] + 100
                _2527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2527] = 26
                mem[_2527 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2568 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2568 + 68] = mem[idx + _2527 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2568 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2568 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3014] = 30
                    mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                    _3399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3399] = 30
                    mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3515 + 68] = mem[idx + _3399 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3515 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3515 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3013] = 30
                    mem[_3013 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3065 + 68] = mem[idx + _3013 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3065 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3065 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3397] = 30
                    mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3514 + 68] = mem[idx + _3397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3514 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3514 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3281 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3281] = 30
                mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3396 + 68] = mem[idx + _3281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3396 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3396 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                _3862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3862] = 30
                mem[_3862 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor10 / totalSupply)
                _3987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3987 + 68] = mem[idx + _3862 + 32]
                    idx = idx + 32
                    continue 
                mem[_3987 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3987 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
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
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2488] = 26
                    mem[_2488 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2523 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2523 + 68] = mem[idx + _2488 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2523 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2523 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = 30
                        mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3006 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3006 + 68] = mem[idx + _2953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3006 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3006 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3270] = 30
                        mem[_3270 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3386 + 68] = mem[idx + _3270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2952] = 30
                        mem[_2952 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3005 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3005 + 68] = mem[idx + _2952 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3005 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3005 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3268] = 30
                        mem[_3268 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3385 + 68] = mem[idx + _3268 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3385 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3151] = 30
                    mem[_3151 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3267 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3267 + 68] = mem[idx + _3151 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3267 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3267 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3687] = 30
                    mem[_3687 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3850 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3850 + 68] = mem[idx + _3687 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3850 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3850 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2504] = 30
                    mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2548 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2548 + 68] = mem[idx + _2504 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2548 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2548 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2717] = 30
                    mem[_2717 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2744 + 68] = mem[idx + _2717 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2744 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2744 + -mem[64] + 100
                _2524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2524] = 26
                mem[_2524 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2566 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2566 + 68] = mem[idx + _2524 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2566 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2566 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 30
                    mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3060 + 68] = mem[idx + _3010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3060 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3390] = 30
                    mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3509 + 68] = mem[idx + _3390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3509 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3509 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _3009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3009] = 30
                    mem[_3009 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3059 + 68] = mem[idx + _3009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3059 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3388] = 30
                    mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3508 + 68] = mem[idx + _3388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3508 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3508 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3272] = 30
                mem[_3272 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3387 + 68] = mem[idx + _3272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3387 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3387 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _3853 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3853] = 30
                mem[_3853 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                    return (arg1 * stor10 / totalSupply)
                _3984 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3984 + 68] = mem[idx + _3853 + 32]
                    idx = idx + 32
                    continue 
                mem[_3984 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3984 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
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
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
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
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2484] = 26
                    mem[_2484 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2520 + 68] = mem[idx + _2484 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2520 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2520 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2944] = 30
                            mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                            _3253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3253] = 30
                            mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3376 + 68] = mem[idx + _3253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3376 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3376 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2943] = 30
                            mem[_2943 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                _2995 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2995 + 68] = mem[idx + _2943 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2995 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2995 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            _3251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3251] = 30
                            mem[_3251 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3375 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3375 + 68] = mem[idx + _3251 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3375 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3375 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3141] = 30
                        mem[_3141 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3250 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3250 + 68] = mem[idx + _3141 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3250 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3250 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3673] = 30
                        mem[_3673 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3836 + 68] = mem[idx + _3673 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3836 + -mem[64] + 100
                    if arg1 and stor10 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2942 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2942] = 30
                            mem[_2942 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                _2994 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2994 + 68] = mem[idx + _2942 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2994 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2994 + -mem[64] + 100
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            _3248 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3248] = 30
                            mem[_3248 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor10 / totalSupply:
                                if arg1 * stor10 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor10 / totalSupply)
                            _3374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3374 + 68] = mem[idx + _3248 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3374 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3139] = 30
                        mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3247 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3247 + 68] = mem[idx + _3139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3247 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3247 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3671] = 30
                        mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3834 + 68] = mem[idx + _3671 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3834 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3834 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _3138 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3138] = 30
                        mem[_3138 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3246 + 68] = mem[idx + _3138 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3246 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3669] = 30
                        mem[_3669 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3833 + 68] = mem[idx + _3669 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3833 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3833 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3500] = 30
                    mem[_3500 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3668 + 68] = mem[idx + _3500 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3668 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3668 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _4137 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4137] = 30
                    mem[_4137 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _4299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4299 + 68] = mem[idx + _4137 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4299 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4299 + -mem[64] + 100
                if idx >= stor8.length:
                    revert with 0, 50
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2503] = 30
                    mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2545 + 68] = mem[idx + _2503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2545 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2545 + -mem[64] + 100
                    if t < stor3[stor8[idx]]:
                        revert with 0, 17
                    if idx >= stor8.length:
                        revert with 0, 50
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2715] = 30
                    mem[_2715 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        if s < stor4[stor8[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2743 + 68] = mem[idx + _2715 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2743 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2743 + -mem[64] + 100
                _2521 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2521] = 26
                mem[_2521 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2564 + 68] = mem[idx + _2521 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2564 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2564 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3000] = 30
                        mem[_3000 + 32] = 'SafeMath: subtraction overflow'
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3505 + 68] = mem[idx + _3384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3505 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3505 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2999] = 30
                        mem[_2999 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3056 + 68] = mem[idx + _2999 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3056 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3382] = 30
                        mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3504 + 68] = mem[idx + _3382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3504 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3504 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3257] = 30
                    mem[_3257 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3381 + 68] = mem[idx + _3257 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3381 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3381 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3981 + 68] = mem[idx + _3844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3981 + -mem[64] + 100
                if arg1 and stor10 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2998 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2998] = 30
                        mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3055 + 68] = mem[idx + _2998 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3055 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3055 + -mem[64] + 100
                        if arg1 * stor10 / totalSupply < 0:
                            revert with 0, 17
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            if arg1 * stor10 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor10 / totalSupply)
                        _3503 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3503 + 68] = mem[idx + _3379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3503 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3503 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3255] = 30
                    mem[_3255 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3378 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3378 + 68] = mem[idx + _3255 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3378 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3378 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    _3842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3842] = 30
                    mem[_3842 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3979 + 68] = mem[idx + _3842 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3979 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3979 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3254] = 30
                    mem[_3254 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3377 + 68] = mem[idx + _3254 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    _3840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3840] = 30
                    mem[_3840 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor10 / totalSupply)
                    _3978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3978 + 68] = mem[idx + _3840 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3978 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3675 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3675] = 30
                mem[_3675 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3839 + 68] = mem[idx + _3675 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3839 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3839 + -mem[64] + 100
                if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 17
                _4303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4303] = 30
                mem[_4303 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor10 / totalSupply)
                _4379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4379 + 68] = mem[idx + _4303 + 32]
                    idx = idx + 32
                    continue 
                mem[_4379 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4379 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor10 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
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
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor10 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor10 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor10 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor10 / totalSupply < arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) < arg1 * _liquidityFee / 100 * stor10 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor10 / totalSupply)
}



}
