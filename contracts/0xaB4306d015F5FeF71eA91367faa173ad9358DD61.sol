contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_622d86a2(?)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
array of struct stor8;
array of struct stor9;
uint8 decimals;
uint256 _marketFee;
uint256 stor12;
uint256 _liquidityFee;
uint256 stor14;
uint256 _burnFee;
uint256 stor16;
uint256 _startTimeForSwap;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor19; offset 168
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 sub_b59077d6;
uint256 stor22;
address _burnAddress;
address sub_988cf801Address;
address sub_e09b4d3aAddress;

function _burn() {
    return _burnAddress
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function _startTimeForSwap() {
    return _startTimeForSwap
}

function _liquidityFee() {
    return _liquidityFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _marketFee() {
    return _marketFee
}

function owner() {
    return owner
}

function sub_988cf801(?) {
    return sub_988cf801Address
}

function sub_b59077d6(?) {
    return sub_b59077d6
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function geUnlockTime() {
    return geUnlockTime
}

function _burnFee() {
    return _burnFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e09b4d3a(?) {
    return sub_e09b4d3aAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4f93dfb3(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not _startTimeForSwap:
        _startTimeForSwap = block.timestamp
}

function sub_06135657(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b59077d6 = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
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

function setMarketAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_988cf801Address = arg1
}

function sub_2a0608f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e09b4d3aAddress = address(arg1)
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _burnFee = arg1
    stor16 = _burnFee
}

function setMarketFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketFee = arg1
    stor12 = _marketFee
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
    stor14 = _liquidityFee
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
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
    require arg2 == arg2
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
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_06028848(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function _getValues(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if not arg1:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                return arg1, 0, 0, 0
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            return arg1 - (arg1 * _liquidityFee / 100), 0, 0, arg1 * _liquidityFee / 100
        if arg1 and _burnFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _burnFee / arg1 != _burnFee:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            if arg1 * _burnFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _burnFee / 100:
                revert with 'NH{q', 17
            if 0 > arg1 - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _burnFee / 100) < 0:
                revert with 'NH{q', 17
            return arg1 - (arg1 * _burnFee / 100), 0, arg1 * _burnFee / 100, 0
        if arg1 and _liquidityFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < 0:
            revert with 'NH{q', 17
        if arg1 * _burnFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _burnFee / 100:
            revert with 'NH{q', 17
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _burnFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _burnFee / 100) < arg1 * _liquidityFee / 100:
            revert with 'NH{q', 17
        return arg1 - (arg1 * _burnFee / 100) - (arg1 * _liquidityFee / 100), 0, arg1 * _burnFee / 100, arg1 * _liquidityFee / 100
    if arg1 and _marketFee > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * _marketFee / arg1 != _marketFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1:
        if not arg1:
            if arg1 * _marketFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _marketFee / 100:
                revert with 'NH{q', 17
            if 0 > arg1 - (arg1 * _marketFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _marketFee / 100) < 0:
                revert with 'NH{q', 17
            if 0 > arg1 - (arg1 * _marketFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _marketFee / 100) < 0:
                revert with 'NH{q', 17
            return arg1 - (arg1 * _marketFee / 100), arg1 * _marketFee / 100, 0, 0
        if arg1 and _liquidityFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _marketFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _marketFee / 100:
            revert with 'NH{q', 17
        if 0 > arg1 - (arg1 * _marketFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _marketFee / 100) < 0:
            revert with 'NH{q', 17
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _marketFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _marketFee / 100) < arg1 * _liquidityFee / 100:
            revert with 'NH{q', 17
        return arg1 - (arg1 * _marketFee / 100) - (arg1 * _liquidityFee / 100), arg1 * _marketFee / 100, 0, arg1 * _liquidityFee / 100
    if arg1 and _burnFee > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * _burnFee / arg1 != _burnFee:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if arg1 * _marketFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _marketFee / 100:
            revert with 'NH{q', 17
        if arg1 * _burnFee / 100 > arg1 - (arg1 * _marketFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _marketFee / 100) < arg1 * _burnFee / 100:
            revert with 'NH{q', 17
        if 0 > arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100) < 0:
            revert with 'NH{q', 17
        return arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100), arg1 * _marketFee / 100, arg1 * _burnFee / 100, 0
    if arg1 and _liquidityFee > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * _liquidityFee / arg1 != _liquidityFee:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 * _marketFee / 100 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 * _marketFee / 100:
        revert with 'NH{q', 17
    if arg1 * _burnFee / 100 > arg1 - (arg1 * _marketFee / 100):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - (arg1 * _marketFee / 100) < arg1 * _burnFee / 100:
        revert with 'NH{q', 17
    if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100) < arg1 * _liquidityFee / 100:
        revert with 'NH{q', 17
    return arg1 - (arg1 * _marketFee / 100) - (arg1 * _burnFee / 100) - (arg1 * _liquidityFee / 100), 
           arg1 * _marketFee / 100,
           arg1 * _burnFee / 100,
           arg1 * _liquidityFee / 100
}



}
