contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
mapping of uint8 stor9;
array of address stor10;
mapping of uint8 stor11;
array of struct stor12;
array of struct stor13;
uint8 decimals;
uint256 totalSupply;
uint256 stor16;
uint256 totalFees;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _maxTxAmount;
uint256 minimumTokensBeforeSwapAmount;
address uniswapV2RouterAddress;
uint8 stor25; offset 160
uint8 swapAndLiquifyEnabled; offset 176
uint8 sub_eee1f356; offset 184
uint128 stor25; offset 184
uint128 stor25; offset 176
uint128 stor25; offset 160
address uniswapV2PairAddress;

function totalFees() {
    return totalFees
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

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isLocked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
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
    return bool(stor9[address(arg1)])
}

function owner() {
    return owner
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_eee1f356(?) {
    return bool(sub_eee1f356)
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

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function lockAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function unlockAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumTokensBeforeSwapAmount = arg1
}

function sub_877d484c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor25.field_184) = Mask(72, 0, bool(arg1))
    emit 0x2be3ca04: bool(arg1)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor25.field_176) = Mask(80, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    unlockTime = block.timestamp + arg1
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

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract is locked until a speccified time'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
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

function sub_fa9d38ef(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 4
    uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg2
}

function sub_5454a236(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 3
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor10.length < 1:
            revert with 'NH{q', 17
        if stor10.length - 1 >= stor10.length:
            revert with 'NH{q', 50
        if idx >= stor10.length:
            revert with 'NH{q', 50
        stor10[idx] = stor10[stor10.length]
        stor6[address(arg1)] = 0
        stor9[address(arg1)] = 0
        if not stor10.length:
            revert with 'NH{q', 49
        stor10[stor10.length] = 0
        stor10.length--
}

function name() {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor12.length.field_1):
                if 31 < uint255(stor12.length.field_1):
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor12.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        else:
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1 % 128:
                if 31 < stor12.length.field_1 % 128:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        mem[ceil32(uint255(stor12.length.field_1)) + 192 len ceil32(uint255(stor12.length.field_1))] = mem[128 len ceil32(uint255(stor12.length.field_1))]
        if ceil32(uint255(stor12.length.field_1)) > uint255(stor12.length.field_1):
            mem[ceil32(uint255(stor12.length.field_1)) + uint255(stor12.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor12.length.field_1)), data=mem[128 len ceil32(uint255(stor12.length.field_1))], mem[(2 * ceil32(uint255(stor12.length.field_1))) + 192 len 2 * ceil32(uint255(stor12.length.field_1))]), 
    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor12.length.field_1):
            if 31 < uint255(stor12.length.field_1):
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while uint255(stor12.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1 % 128:
            if 31 < stor12.length.field_1 % 128:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    mem[ceil32(stor12.length.field_1 % 128) + 192 len ceil32(stor12.length.field_1 % 128)] = mem[128 len ceil32(stor12.length.field_1 % 128)]
    if ceil32(stor12.length.field_1 % 128) > stor12.length.field_1 % 128:
        mem[ceil32(stor12.length.field_1 % 128) + stor12.length.field_1 % 128 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)], mem[(2 * ceil32(stor12.length.field_1 % 128)) + 192 len 2 * ceil32(stor12.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor13.length.field_1):
                if 31 < uint255(stor13.length.field_1):
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor13.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor13[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13.length.field_1)), data=mem[128 len ceil32(uint255(stor13.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor13.length.field_8)
        else:
            if bool(stor13.length) == stor13.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor13.length.field_1 % 128:
                if 31 < stor13.length.field_1 % 128:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor13[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13.length.field_1)), data=mem[128 len ceil32(uint255(stor13.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor13.length.field_8)
        mem[ceil32(uint255(stor13.length.field_1)) + 192 len ceil32(uint255(stor13.length.field_1))] = mem[128 len ceil32(uint255(stor13.length.field_1))]
        if ceil32(uint255(stor13.length.field_1)) > uint255(stor13.length.field_1):
            mem[ceil32(uint255(stor13.length.field_1)) + uint255(stor13.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor13.length.field_1)), data=mem[128 len ceil32(uint255(stor13.length.field_1))], mem[(2 * ceil32(uint255(stor13.length.field_1))) + 192 len 2 * ceil32(uint255(stor13.length.field_1))]), 
    if bool(stor13.length) == stor13.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor13.length.field_1):
            if 31 < uint255(stor13.length.field_1):
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while uint255(stor13.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor13[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13.length.field_8)
    else:
        if bool(stor13.length) == stor13.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor13.length.field_1 % 128:
            if 31 < stor13.length.field_1 % 128:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor13[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13.length.field_8)
    mem[ceil32(stor13.length.field_1 % 128) + 192 len ceil32(stor13.length.field_1 % 128)] = mem[128 len ceil32(stor13.length.field_1 % 128)]
    if ceil32(stor13.length.field_1 % 128) > stor13.length.field_1 % 128:
        mem[ceil32(stor13.length.field_1 % 128) + stor13.length.field_1 % 128 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1 % 128)], mem[(2 * ceil32(stor13.length.field_1 % 128)) + 192 len 2 * ceil32(stor13.length.field_1 % 128)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor16
    while idx < stor10.length:
        mem[0] = stor10[idx]
        mem[32] = 5
        if stor5[stor10[idx]] > t:
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
            if stor16 / totalSupply > 0:
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor16 / totalSupply)
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
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 6
        if stor6[stor10[idx]] > s:
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
            if stor16 / totalSupply > 0:
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor16 / totalSupply)
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
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 5
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor10[idx]] > t:
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
        if t < stor5[stor10[idx]]:
            revert with 'NH{q', 17
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 6
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor10[idx]] <= s:
            if s < stor6[stor10[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor6[stor10[idx]]
            t = t - stor5[stor10[idx]]
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
    if t >= stor16 / totalSupply:
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
    if stor16 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor16 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor16 / totalSupply)
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
    if stor5[address(arg1)] > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor16
    while idx < stor10.length:
        mem[0] = stor10[idx]
        mem[32] = 5
        if stor5[stor10[idx]] > t:
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
            if stor16 / totalSupply > 0:
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                return (stor5[address(arg1)] / stor16 / totalSupply)
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
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 6
        if stor6[stor10[idx]] > s:
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
            if stor16 / totalSupply > 0:
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                return (stor5[address(arg1)] / stor16 / totalSupply)
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
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 5
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor10[idx]] > t:
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
        if t < stor5[stor10[idx]]:
            revert with 'NH{q', 17
        if idx >= stor10.length:
            revert with 'NH{q', 50
        mem[0] = stor10[idx]
        mem[32] = 6
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor10[idx]] <= s:
            if s < stor6[stor10[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor6[stor10[idx]]
            t = t - stor5[stor10[idx]]
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
    if t >= stor16 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor5[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor16 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor16 / totalSupply:
        revert with 'NH{q', 18
    return (stor5[address(arg1)] / stor16 / totalSupply)
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
    if stor5[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 5
        if stor5[address(arg1)] > stor16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor16
        while idx < stor10.length:
            mem[0] = stor10[idx]
            mem[32] = 5
            if stor5[stor10[idx]] > t:
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
                if stor16 / totalSupply > 0:
                    if not stor16 / totalSupply:
                        revert with 'NH{q', 18
                    stor6[address(arg1)] = stor5[address(arg1)] / stor16 / totalSupply
                    stor9[address(arg1)] = 1
                    stor10.length++
                    stor10[stor10.length] = arg1
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
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = stor10[idx]
            mem[32] = 6
            if stor6[stor10[idx]] > s:
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
                if stor16 / totalSupply > 0:
                    if not stor16 / totalSupply:
                        revert with 'NH{q', 18
                    stor6[address(arg1)] = stor5[address(arg1)] / stor16 / totalSupply
                    stor9[address(arg1)] = 1
                    stor10.length++
                    stor10[stor10.length] = arg1
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
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = stor10[idx]
            mem[32] = 5
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor10[idx]] > t:
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
            if t < stor5[stor10[idx]]:
                revert with 'NH{q', 17
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = stor10[idx]
            mem[32] = 6
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor10[idx]] <= s:
                if s < stor6[stor10[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor6[stor10[idx]]
                t = t - stor5[stor10[idx]]
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
        if t >= stor16 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor6[address(arg1)] = stor5[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor16 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor16 / totalSupply:
                revert with 'NH{q', 18
            stor6[address(arg1)] = stor5[address(arg1)] / stor16 / totalSupply
    stor9[address(arg1)] = 1
    stor10.length++
    stor10[stor10.length] = arg1
}

function addLiquidity(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(this.address)]:
        if stor6[address(this.address)] < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Not enough tokens on contract to add desired liquidity'
        if eth.balance(this.address) < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Not enough ETH on contract to add desired liquidity'
        if uint8(stor25.field_160):
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor24] = arg1
            emit Approval(arg1, this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value arg2 wei
                 gas gas_remaining wei
                args 0, 0, arg1, 0, 0, owner, block.timestamp
        else:
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
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
            uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            Mask(96, 0, stor25.field_160) = 1
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor24] = arg1
            emit Approval(arg1, this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value arg2 wei
                 gas gas_remaining wei
                args address(this.address), arg1, 0, 0, owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
    else:
        mem[0] = this.address
        mem[32] = 5
        if stor5[address(this.address)] > stor16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor16
        while idx < stor10.length:
            mem[0] = stor10[idx]
            mem[32] = 5
            if stor5[stor10[idx]] > t:
                _309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_309] = 26
                mem[_309 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_313 + idx + 68] = mem[_309 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_313 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _313 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                if stor16 / totalSupply <= 0:
                    _336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_336 + idx + 68] = mem[_329 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_336 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _336 + -mem[64] + 100
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                if stor5[address(this.address)] / stor16 / totalSupply < arg1:
                    revert with 0, 'Not enough tokens on contract to add desired liquidity'
                if eth.balance(this.address) < arg2:
                    revert with 0, 'Not enough ETH on contract to add desired liquidity'
                if uint8(stor25.field_160):
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 7)
                    allowance[address(this.address)][stor24] = arg1
                    emit Approval(arg1, this.address, uniswapV2RouterAddress);
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = owner
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args address(this.address), arg1, 0, 0, owner, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_470] == mem[_470]
                    require mem[_470 + 32] == mem[_470 + 32]
                    require mem[_470 + 64] == mem[_470 + 64]
                else:
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _388 = mem[_374]
                    require mem[_374] == mem[_374 + 12 len 20]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _444 = mem[_436]
                    require mem[_436] == mem[_436 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_444)
                    require ext_code.size(address(_388))
                    call address(_388).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(_444)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_465] == mem[_465 + 12 len 20]
                    uniswapV2PairAddress = mem[_465 + 12 len 20]
                    uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    Mask(96, 0, stor25.field_160) = 1
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 7)
                    allowance[address(this.address)][stor24] = arg1
                    emit Approval(arg1, this.address, uniswapV2RouterAddress);
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = owner
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args address(this.address), arg1, 0, 0, owner, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_533] == mem[_533]
                    require mem[_533 + 32] == mem[_533 + 32]
                    require mem[_533 + 64] == mem[_533 + 64]
            else:
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_312] = 30
                    mem[_312 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_315 + idx + 68] = mem[_312 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_315 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _315 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_333] = 30
                    mem[_333 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_338 + idx + 68] = mem[_333 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_338 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _338 + -mem[64] + 100
                _314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_314] = 26
                mem[_314 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_316 + idx + 68] = mem[_314 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_316 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _316 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                if stor16 / totalSupply <= 0:
                    _340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_340 + idx + 68] = mem[_337 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_340 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _340 + -mem[64] + 100
                if not stor16 / totalSupply:
                    revert with 'NH{q', 18
                if stor5[address(this.address)] / stor16 / totalSupply < arg1:
                    revert with 0, 'Not enough tokens on contract to add desired liquidity'
                if eth.balance(this.address) < arg2:
                    revert with 0, 'Not enough ETH on contract to add desired liquidity'
                if uint8(stor25.field_160):
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 7)
                    allowance[address(this.address)][stor24] = arg1
                    emit Approval(arg1, this.address, uniswapV2RouterAddress);
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = owner
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args address(this.address), arg1, 0, 0, owner, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_473] == mem[_473]
                    require mem[_473 + 32] == mem[_473 + 32]
                    require mem[_473 + 64] == mem[_473 + 64]
                else:
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _395 = mem[_387]
                    require mem[_387] == mem[_387 + 12 len 20]
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _441 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _449 = mem[_441]
                    require mem[_441] == mem[_441 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(_449)
                    require ext_code.size(address(_395))
                    call address(_395).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(_449)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_468] == mem[_468 + 12 len 20]
                    uniswapV2PairAddress = mem[_468 + 12 len 20]
                    uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                    Mask(96, 0, stor25.field_160) = 1
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 7)
                    allowance[address(this.address)][stor24] = arg1
                    emit Approval(arg1, this.address, uniswapV2RouterAddress);
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = owner
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args address(this.address), arg1, 0, 0, owner, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_535] == mem[_535]
                    require mem[_535 + 32] == mem[_535 + 32]
                    require mem[_535 + 64] == mem[_535 + 64]
        _302 = mem[64]
        mem[64] = mem[64] + 64
        mem[_302] = 26
        mem[_302 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor16 / totalSupply:
            _321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_321] = 26
            mem[_321 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 26
            mem[_351 + 32] = 'SafeMath: division by zero'
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            if stor5[address(this.address)] / t / s < arg1:
                revert with 0, 'Not enough tokens on contract to add desired liquidity'
            if eth.balance(this.address) < arg2:
                revert with 0, 'Not enough ETH on contract to add desired liquidity'
            if uint8(stor25.field_160):
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 7)
                allowance[address(this.address)][stor24] = arg1
                emit Approval(arg1, this.address, uniswapV2RouterAddress);
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(this.address), arg1, 0, 0, owner, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_484] == mem[_484]
                require mem[_484 + 32] == mem[_484 + 32]
                require mem[_484 + 64] == mem[_484 + 64]
            else:
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _432 = mem[_415]
                require mem[_415] == mem[_415 + 12 len 20]
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _459 = mem[_456]
                require mem[_456] == mem[_456 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_459)
                require ext_code.size(address(_432))
                call address(_432).createPair(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(this.address), address(_459)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == mem[_478 + 12 len 20]
                uniswapV2PairAddress = mem[_478 + 12 len 20]
                uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                Mask(96, 0, stor25.field_160) = 1
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 7)
                allowance[address(this.address)][stor24] = arg1
                emit Approval(arg1, this.address, uniswapV2RouterAddress);
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(this.address), arg1, 0, 0, owner, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_540] == mem[_540]
                require mem[_540 + 32] == mem[_540 + 32]
                require mem[_540 + 64] == mem[_540 + 64]
        else:
            _322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_322] = 26
            mem[_322 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 26
            mem[_352 + 32] = 'SafeMath: division by zero'
            if stor16 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor16 / totalSupply:
                revert with 'NH{q', 18
            if stor5[address(this.address)] / stor16 / totalSupply < arg1:
                revert with 0, 'Not enough tokens on contract to add desired liquidity'
            if eth.balance(this.address) < arg2:
                revert with 0, 'Not enough ETH on contract to add desired liquidity'
            if uint8(stor25.field_160):
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 7)
                allowance[address(this.address)][stor24] = arg1
                emit Approval(arg1, this.address, uniswapV2RouterAddress);
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(this.address), arg1, 0, 0, owner, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_485] == mem[_485]
                require mem[_485 + 32] == mem[_485 + 32]
                require mem[_485 + 64] == mem[_485 + 64]
            else:
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _433 = mem[_417]
                require mem[_417] == mem[_417 + 12 len 20]
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _460 = mem[_457]
                require mem[_457] == mem[_457 + 12 len 20]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_460)
                require ext_code.size(address(_433))
                call address(_433).createPair(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args address(this.address), address(_460)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_479] == mem[_479 + 12 len 20]
                uniswapV2PairAddress = mem[_479 + 12 len 20]
                uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
                Mask(96, 0, stor25.field_160) = 1
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 7)
                allowance[address(this.address)][stor24] = arg1
                emit Approval(arg1, this.address, uniswapV2RouterAddress);
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args address(this.address), arg1, 0, 0, owner, block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_541] == mem[_541]
                require mem[_541 + 32] == mem[_541 + 32]
                require mem[_541 + 64] == mem[_541 + 64]
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
                t = stor16
                while idx < stor10.length:
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if stor5[stor10[idx]] > t:
                        _2190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2190] = 26
                        mem[_2190 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2249 + idx + 68] = mem[_2190 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2249 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2249 + -mem[64] + 100
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2674] = 30
                        mem[_2674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2699 + idx + 68] = mem[_2674 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2699 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2699 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2901] = 30
                        mem[_2901 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2962 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2962 + idx + 68] = mem[_2901 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2962 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2962 + -mem[64] + 100
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    if stor6[stor10[idx]] <= s:
                        if idx >= stor10.length:
                            revert with 'NH{q', 50
                        mem[0] = stor10[idx]
                        mem[32] = 5
                        _2228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2228] = 30
                        mem[_2228 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor10[idx]] > t:
                            _2262 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2262 + idx + 68] = mem[_2228 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2262 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2262 + -mem[64] + 100
                        if t < stor5[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor10.length:
                            revert with 'NH{q', 50
                        mem[0] = stor10[idx]
                        mem[32] = 6
                        _2398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2398] = 30
                        mem[_2398 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor10[idx]] <= s:
                            if s < stor6[stor10[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor6[stor10[idx]]
                            t = t - stor5[stor10[idx]]
                            continue 
                        _2422 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2422 + idx + 68] = mem[_2398 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2422 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2422 + -mem[64] + 100
                    _2250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2250] = 26
                    mem[_2250 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2270 + idx + 68] = mem[_2250 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2270 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2270 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2700 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2700] = 30
                    mem[_2700 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2732 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2732 + idx + 68] = mem[_2700 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2732 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2732 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2963] = 30
                    mem[_2963 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3034 + idx + 68] = mem[_2963 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3034 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3034 + -mem[64] + 100
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if t >= stor16 / totalSupply:
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
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor16 / totalSupply)
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2184 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2184] = 26
                    mem[_2184 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2247 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2247 + idx + 68] = mem[_2184 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2247 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2247 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2673] = 30
                        mem[_2673 + 32] = 'SafeMath: subtraction overflow'
                        _2898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2898] = 30
                        mem[_2898 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _2958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2958 + idx + 68] = mem[_2898 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2958 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2958 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2672 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2672] = 30
                        mem[_2672 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2696 + idx + 68] = mem[_2672 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2696 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2696 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2897] = 30
                        mem[_2897 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2957 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2957 + idx + 68] = mem[_2897 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2957 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2957 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3001 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3001] = 30
                    mem[_3001 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _3064 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3064 + idx + 68] = mem[_3001 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3064 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3064 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3462] = 30
                    mem[_3462 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _3585 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3585 + idx + 68] = mem[_3462 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3585 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3585 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2225] = 30
                    mem[_2225 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2261 + idx + 68] = mem[_2225 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2261 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2397] = 30
                    mem[_2397 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2421 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2421 + idx + 68] = mem[_2397 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2421 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2421 + -mem[64] + 100
                _2248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2248] = 26
                mem[_2248 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2269 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2269 + idx + 68] = mem[_2248 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2269 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2269 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2698] = 30
                    mem[_2698 + 32] = 'SafeMath: subtraction overflow'
                    _2961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2961] = 30
                    mem[_2961 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                    _3033 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3033 + idx + 68] = mem[_2961 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3033 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3033 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2697] = 30
                    mem[_2697 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2731 + idx + 68] = mem[_2697 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2731 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2731 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2960 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2960] = 30
                    mem[_2960 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3032 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3032 + idx + 68] = mem[_2960 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3032 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3032 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3069] = 30
                mem[_3069 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _3140 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3140 + idx + 68] = mem[_3069 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3140 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3140 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3588 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3588] = 30
                mem[_3588 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _3668 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3668 + idx + 68] = mem[_3588 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3668 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3668 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor16 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2178] = 26
                    mem[_2178 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2245 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2245 + idx + 68] = mem[_2178 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2245 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2245 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2671] = 30
                        mem[_2671 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _2693 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2693 + idx + 68] = mem[_2671 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2693 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2693 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _2893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2893] = 30
                        mem[_2893 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _2954 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2954 + idx + 68] = mem[_2893 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2954 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2954 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2670 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2670] = 30
                        mem[_2670 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2692 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2692 + idx + 68] = mem[_2670 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2692 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2692 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2892] = 30
                        mem[_2892 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2953 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2953 + idx + 68] = mem[_2892 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2953 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2953 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2996] = 30
                    mem[_2996 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _3057 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3057 + idx + 68] = mem[_2996 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3057 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3057 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3451] = 30
                    mem[_3451 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _3581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3581 + idx + 68] = mem[_3451 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3581 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3581 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2222 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2222] = 30
                    mem[_2222 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2260 + idx + 68] = mem[_2222 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2260 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2260 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2396] = 30
                    mem[_2396 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2420 + idx + 68] = mem[_2396 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2420 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2420 + -mem[64] + 100
                _2246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2246] = 26
                mem[_2246 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2268 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2268 + idx + 68] = mem[_2246 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2268 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2268 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2695] = 30
                    mem[_2695 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _2730 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2730 + idx + 68] = mem[_2695 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2730 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2730 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _2956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2956] = 30
                    mem[_2956 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                    _3031 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3031 + idx + 68] = mem[_2956 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3031 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3031 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2694] = 30
                    mem[_2694 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2729 + idx + 68] = mem[_2694 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2729 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2729 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2955] = 30
                    mem[_2955 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3030 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3030 + idx + 68] = mem[_2955 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3030 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3030 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3063 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3063] = 30
                mem[_3063 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _3134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3134 + idx + 68] = mem[_3063 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3134 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3134 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _3584 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3584] = 30
                mem[_3584 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                _3665 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3665 + idx + 68] = mem[_3584 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3665 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3665 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor16 / totalSupply)
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
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
        t = stor16
        while idx < stor10.length:
            mem[0] = stor10[idx]
            mem[32] = 5
            if stor5[stor10[idx]] > t:
                _2172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2172] = 26
                mem[_2172 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2243 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2243 + idx + 68] = mem[_2172 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2243 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2243 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2669] = 30
                        mem[_2669 + 32] = 'SafeMath: subtraction overflow'
                        _2887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2887] = 30
                        mem[_2887 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _2947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2947 + idx + 68] = mem[_2887 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2947 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2947 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2668] = 30
                        mem[_2668 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _2688 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2688 + idx + 68] = mem[_2668 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2688 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2688 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _2886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2886] = 30
                        mem[_2886 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _2946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2946 + idx + 68] = mem[_2886 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2946 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2946 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _3049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3049 + idx + 68] = mem[_2991 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3049 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3049 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3438 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3438] = 30
                    mem[_3438 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _3574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3574 + idx + 68] = mem[_3438 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3574 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3574 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2667] = 30
                        mem[_2667 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2687 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2687 + idx + 68] = mem[_2667 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2687 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2687 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2884] = 30
                        mem[_2884 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2945 + idx + 68] = mem[_2884 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2945 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2945 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _3046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3046 + idx + 68] = mem[_2990 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3046 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3046 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3437 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3437] = 30
                    mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _3572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3572 + idx + 68] = mem[_3437 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3572 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3572 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2989] = 30
                    mem[_2989 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _3045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3045 + idx + 68] = mem[_2989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3045 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3045 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3436] = 30
                    mem[_3436 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _3571 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3571 + idx + 68] = mem[_3436 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3571 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3571 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3619] = 30
                mem[_3619 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _3685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3685 + idx + 68] = mem[_3619 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3685 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3685 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _4055 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4055] = 30
                mem[_4055 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _4145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4145 + idx + 68] = mem[_4055 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4145 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4145 + -mem[64] + 100
            if idx >= stor10.length:
                revert with 'NH{q', 50
            mem[0] = stor10[idx]
            mem[32] = 6
            if stor6[stor10[idx]] <= s:
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 5
                _2219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2219] = 30
                mem[_2219 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor10[idx]] > t:
                    _2259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2259 + idx + 68] = mem[_2219 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2259 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2259 + -mem[64] + 100
                if t < stor5[stor10[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                _2395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2395] = 30
                mem[_2395 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor10[idx]] <= s:
                    if s < stor6[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor6[stor10[idx]]
                    t = t - stor5[stor10[idx]]
                    continue 
                _2419 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2419 + idx + 68] = mem[_2395 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2419 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2419 + -mem[64] + 100
            _2244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2244] = 26
            mem[_2244 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2267 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2267 + idx + 68] = mem[_2244 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2267 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2267 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2691] = 30
                    mem[_2691 + 32] = 'SafeMath: subtraction overflow'
                    _2952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2952] = 30
                    mem[_2952 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                    _3028 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3028 + idx + 68] = mem[_2952 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3028 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3028 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2690 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2690] = 30
                    mem[_2690 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _2728 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2728 + idx + 68] = mem[_2690 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2728 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2728 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _2951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2951] = 30
                    mem[_2951 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                    _3027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3027 + idx + 68] = mem[_2951 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3027 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3027 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3056 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3056] = 30
                mem[_3056 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    _3129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3129 + idx + 68] = mem[_3056 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3129 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3129 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _3580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3580] = 30
                mem[_3580 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _3662 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3662 + idx + 68] = mem[_3580 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3662 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3662 + -mem[64] + 100
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _2689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2689] = 30
                    mem[_2689 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2727 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2727 + idx + 68] = mem[_2689 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2727 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2727 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2949] = 30
                    mem[_2949 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3026 + idx + 68] = mem[_2949 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3026 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3026 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3055 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3055] = 30
                mem[_3055 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _3126 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3126 + idx + 68] = mem[_3055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3126 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3126 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3579] = 30
                mem[_3579 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _3660 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3660 + idx + 68] = mem[_3579 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3660 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3660 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                _3054 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3054] = 30
                mem[_3054 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _3125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3125 + idx + 68] = mem[_3054 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3125 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3125 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _3578 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3578] = 30
                mem[_3578 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                _3659 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3659 + idx + 68] = mem[_3578 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3659 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3659 + -mem[64] + 100
            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3695 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3695] = 30
            mem[_3695 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                _3783 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3783 + idx + 68] = mem[_3695 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3783 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3783 + -mem[64] + 100
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            _4149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4149] = 30
            mem[_4149 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
            _4177 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4177 + idx + 68] = mem[_4149 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4177 + 98] = 0
            revert with memory
              from mem[64]
               len _4177 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor16 / totalSupply:
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
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 100:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if arg1 and stor16 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor16 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            if not arg1 * _liquidityFee / 100:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 'NH{q', 17
        if not arg1 * _taxFee / 100:
            revert with 'NH{q', 18
        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
            revert with 'NH{q', 17
        if not arg1 * _liquidityFee / 100:
            revert with 'NH{q', 18
        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
            revert with 'NH{q', 17
        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2214] = 26
                    mem[_2214 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2257 + idx + 68] = mem[_2214 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2257 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2257 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2682] = 30
                    mem[_2682 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2713 + idx + 68] = mem[_2682 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2713 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2924] = 30
                    mem[_2924 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _2981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2981 + idx + 68] = mem[_2924 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2981 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2240] = 30
                    mem[_2240 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2266 + idx + 68] = mem[_2240 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2266 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2266 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2402] = 30
                    mem[_2402 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2426 + idx + 68] = mem[_2402 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2426 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2426 + -mem[64] + 100
                _2258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2258] = 26
                mem[_2258 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2274 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2274 + idx + 68] = mem[_2258 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2274 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2274 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2714] = 30
                mem[_2714 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _2738 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2738 + idx + 68] = mem[_2714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2738 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2738 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2982 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2982] = 30
                mem[_2982 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor16 / totalSupply)
                _3044 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3044 + idx + 68] = mem[_2982 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3044 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3044 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
                revert with 'NH{q', 17
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2208] = 26
                    mem[_2208 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2255 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2255 + idx + 68] = mem[_2208 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2255 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2255 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2681] = 30
                        mem[_2681 + 32] = 'SafeMath: subtraction overflow'
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2977 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2977 + idx + 68] = mem[_2921 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2977 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2977 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2680 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2680] = 30
                        mem[_2680 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2710 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2710 + idx + 68] = mem[_2680 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2710 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2710 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2920] = 30
                        mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2976 + idx + 68] = mem[_2920 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2976 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2976 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3022] = 30
                    mem[_3022 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _3092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3092 + idx + 68] = mem[_3022 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3092 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3092 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3514] = 30
                    mem[_3514 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3604 + idx + 68] = mem[_3514 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3604 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3604 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2237] = 30
                    mem[_2237 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2265 + idx + 68] = mem[_2237 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2265 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2265 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2401] = 30
                    mem[_2401 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2425 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2425 + idx + 68] = mem[_2401 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2425 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2425 + -mem[64] + 100
                _2256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2256] = 26
                mem[_2256 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2273 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2273 + idx + 68] = mem[_2256 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2273 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2273 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2712] = 30
                    mem[_2712 + 32] = 'SafeMath: subtraction overflow'
                    _2980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2980] = 30
                    mem[_2980 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3043 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3043 + idx + 68] = mem[_2980 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3043 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3043 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2711] = 30
                    mem[_2711 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2737 + idx + 68] = mem[_2711 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2737 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2737 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2979] = 30
                    mem[_2979 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3042 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3042 + idx + 68] = mem[_2979 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3042 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3042 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3097] = 30
                mem[_3097 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _3163 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3163 + idx + 68] = mem[_3097 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3163 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3163 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3607 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3607] = 30
                mem[_3607 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor16 / totalSupply)
                _3681 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3681 + idx + 68] = mem[_3607 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3681 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3681 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2202] = 26
                    mem[_2202 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2253 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2253 + idx + 68] = mem[_2202 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2253 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2253 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2679] = 30
                        mem[_2679 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _2707 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2707 + idx + 68] = mem[_2679 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2707 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2707 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _2916 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2916] = 30
                        mem[_2916 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2973 + idx + 68] = mem[_2916 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2973 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2973 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2678] = 30
                        mem[_2678 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2706 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2706 + idx + 68] = mem[_2678 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2706 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2706 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2915 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2915] = 30
                        mem[_2915 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _2972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2972 + idx + 68] = mem[_2915 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2972 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2972 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3017] = 30
                    mem[_3017 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _3085 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3085 + idx + 68] = mem[_3017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3085 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3085 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3503] = 30
                    mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3600 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3600 + idx + 68] = mem[_3503 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3600 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3600 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2234] = 30
                    mem[_2234 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2264 + idx + 68] = mem[_2234 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2264 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2264 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2400] = 30
                    mem[_2400 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2424 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2424 + idx + 68] = mem[_2400 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2424 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2424 + -mem[64] + 100
                _2254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2254] = 26
                mem[_2254 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2272 + idx + 68] = mem[_2254 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2272 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2272 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2709] = 30
                    mem[_2709 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _2736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2736 + idx + 68] = mem[_2709 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2736 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2736 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _2975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2975] = 30
                    mem[_2975 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3041 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3041 + idx + 68] = mem[_2975 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3041 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3041 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2708] = 30
                    mem[_2708 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _2735 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2735 + idx + 68] = mem[_2708 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2735 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2735 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2974] = 30
                    mem[_2974 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3040 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3040 + idx + 68] = mem[_2974 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3040 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3040 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3091 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3091] = 30
                mem[_3091 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _3157 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3157 + idx + 68] = mem[_3091 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3157 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3157 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _3603 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3603] = 30
                mem[_3603 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor16 / totalSupply)
                _3678 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3678 + idx + 68] = mem[_3603 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3678 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3678 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
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
            t = stor16
            while idx < stor10.length:
                mem[0] = stor10[idx]
                mem[32] = 5
                if stor5[stor10[idx]] > t:
                    _2196 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2196] = 26
                    mem[_2196 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2251 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2251 + idx + 68] = mem[_2196 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2251 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2251 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2677 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2677] = 30
                            mem[_2677 + 32] = 'SafeMath: subtraction overflow'
                            _2910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2910] = 30
                            mem[_2910 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2966 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2966 + idx + 68] = mem[_2910 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2966 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2966 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2676 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2676] = 30
                            mem[_2676 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _2702 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2702 + idx + 68] = mem[_2676 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2702 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2702 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            _2909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2909] = 30
                            mem[_2909 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2965 + idx + 68] = mem[_2909 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2965 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2965 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3012] = 30
                        mem[_3012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _3077 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3077 + idx + 68] = mem[_3012 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3077 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3077 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _3490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3490] = 30
                        mem[_3490 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3593 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3593 + idx + 68] = mem[_3490 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3593 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3593 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2675 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2675] = 30
                            mem[_2675 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _2701 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2701 + idx + 68] = mem[_2675 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2701 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2701 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2907] = 30
                            mem[_2907 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor16 / totalSupply)
                            _2964 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2964 + idx + 68] = mem[_2907 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2964 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2964 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3011] = 30
                        mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _3074 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3074 + idx + 68] = mem[_3011 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3074 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3074 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3489] = 30
                        mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _3591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3591 + idx + 68] = mem[_3489 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3591 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _3010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3010] = 30
                        mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _3073 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3073 + idx + 68] = mem[_3010 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3073 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3073 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _3488 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3488] = 30
                        mem[_3488 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _3590 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3590 + idx + 68] = mem[_3488 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3590 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3590 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3644] = 30
                    mem[_3644 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _3713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3713 + idx + 68] = mem[_3644 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3713 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3713 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _4094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4094] = 30
                    mem[_4094 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _4152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4152 + idx + 68] = mem[_4094 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4152 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4152 + -mem[64] + 100
                if idx >= stor10.length:
                    revert with 'NH{q', 50
                mem[0] = stor10[idx]
                mem[32] = 6
                if stor6[stor10[idx]] <= s:
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    _2231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2231] = 30
                    mem[_2231 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor10[idx]] > t:
                        _2263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2263 + idx + 68] = mem[_2231 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2263 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2263 + -mem[64] + 100
                    if t < stor5[stor10[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor10.length:
                        revert with 'NH{q', 50
                    mem[0] = stor10[idx]
                    mem[32] = 6
                    _2399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2399] = 30
                    mem[_2399 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor10[idx]] <= s:
                        if s < stor6[stor10[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor6[stor10[idx]]
                        t = t - stor5[stor10[idx]]
                        continue 
                    _2423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2423 + idx + 68] = mem[_2399 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2423 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2423 + -mem[64] + 100
                _2252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2252] = 26
                mem[_2252 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2271 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2271 + idx + 68] = mem[_2252 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2271 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2271 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2705 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2705] = 30
                        mem[_2705 + 32] = 'SafeMath: subtraction overflow'
                        _2971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2971] = 30
                        mem[_2971 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3038 + idx + 68] = mem[_2971 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3038 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3038 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2704] = 30
                        mem[_2704 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _2734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2734 + idx + 68] = mem[_2704 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2734 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        _2970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2970] = 30
                        mem[_2970 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3037 + idx + 68] = mem[_2970 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3037 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3084] = 30
                    mem[_3084 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _3152 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3152 + idx + 68] = mem[_3084 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3152 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3152 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3599] = 30
                    mem[_3599 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3675 + idx + 68] = mem[_3599 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3675 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3675 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2703 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2703] = 30
                        mem[_2703 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _2733 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2733 + idx + 68] = mem[_2703 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2733 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2733 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2968] = 30
                        mem[_2968 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor16 / totalSupply)
                        _3036 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3036 + idx + 68] = mem[_2968 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3036 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3036 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3083] = 30
                    mem[_3083 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _3149 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3149 + idx + 68] = mem[_3083 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3149 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3149 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3598] = 30
                    mem[_3598 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3673 + idx + 68] = mem[_3598 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3673 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3673 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3082] = 30
                    mem[_3082 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _3148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3148 + idx + 68] = mem[_3082 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3148 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3148 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    _3597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3597] = 30
                    mem[_3597 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor16 / totalSupply)
                    _3672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3672 + idx + 68] = mem[_3597 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3672 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3672 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3723 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3723] = 30
                mem[_3723 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _3802 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3802 + idx + 68] = mem[_3723 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3802 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3802 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 'NH{q', 17
                _4156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4156] = 30
                mem[_4156 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor16 / totalSupply)
                _4183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4183 + idx + 68] = mem[_4156 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4183 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4183 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor16 / totalSupply:
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
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor16 / totalSupply)
}



}
