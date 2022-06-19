contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#
const getETHBalance = eth.balance(this.address)


address owner;
uint8 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address stor9;
uint256 stor10;
uint256 totalSupply;
uint256 stor11;
uint256 taxFees;
uint256 xFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _taxFee;
uint256 stor18;
uint256 _liquidityFee;
uint256 stor20;
address _extrafeewalletAddress;
uint256 _extraFeePercent;
uint256 _previousExtraFeePercent;
address uniswapV2RouterAddress;
uint8 stor25; offset 168
uint128 stor25; offset 168
address uniswapV2PairAddress;
uint256 stor25;
uint256 _maxTxAmount;
uint256 stor27;
uint8 stor28;
uint256 sub_1bce88c8;

function name() {
    return name[0 len name.length]
}

function taxFees() {
    return taxFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return uint256(totalSupply)
}

function sub_1bce88c8(?) {
    return sub_1bce88c8
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
    return bool(uint8(stor25.field_168))
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function owner() {
    return owner
}

function _extraFeePercent() {
    return _extraFeePercent
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _extrafeewallet() {
    return _extrafeewalletAddress
}

function _previousExtraFeePercent() {
    return _previousExtraFeePercent
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function xFees() {
    return xFees
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _taxFee = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor7[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor7[address(arg1)] = 1
}

function setExtraFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _extraFeePercent = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _liquidityFee = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor25.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function withdrawOverFlowETH() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not uint256(totalSupply):
        _maxTxAmount = 0
    else:
        if arg1 * uint256(totalSupply) / uint256(totalSupply) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = arg1 * uint256(totalSupply) / 100
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor8[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            idx = idx + 1
            continue 
        require stor9.length - 1 < stor9.length
        require idx < stor9.length
        stor9[idx] = stor9[stor9.length]
        stor5[address(arg1)] = 0
        stor8[address(arg1)] = 0
        require stor9.length
        stor9[stor9.length] = 0
        stor9.length--
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function init(string arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9, uint256 arg10, address arg11) {
    require calldata.size - 4 >= 352
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor28:
        revert with 0, 
                    32,
                    46,
                    0x6f436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
    if arg9 == arg11:
        revert with 0, 
                    32,
                    48,
                    0x644578747261204665652077616c6c6574206d757374206e6f7420626520796f75722077616c6c657420616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 276 len 16]
    stor28 = 1
    if stor3:
        revert with 0, 
                    32,
                    76,
                    0x73436f6e7472616374206f776e65722068617320616c7265616479206265656e207472616e7366657265642066726f6d20696e697469616c697a656420746f20746865206e6577204f776e65,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 304 len 20]
    stor3 = 1
    if not arg11:
        revert with 0, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 266 len 26]
    emit OwnershipTransferred(owner, arg11);
    owner = arg11
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg4
    uint256(totalSupply) = arg3 * 10^arg4
    require arg3 * 10^arg4
    stor11 = !(-1 % arg3 * 10^arg4)
    _maxTxAmount = 10^arg4 * arg5
    stor27 = arg8 * 10^arg4
    _taxFee = arg6
    stor18 = arg6
    _liquidityFee = arg7
    stor20 = arg7
    stor4[address(arg11)] = !(-1 % arg3 * 10^arg4)
    _extrafeewalletAddress = arg9
    _extraFeePercent = arg10
    _previousExtraFeePercent = arg10
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor25.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor25.field_0))
    uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    stor7[stor0] = 1
    stor7[this.address] = 1
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, stor10),
                  0,
                  arg11,
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = uint256(totalSupply)
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not uint256(totalSupply):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor11 / uint256(totalSupply):
                    return (arg1 / stor11 / uint256(totalSupply))
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 5
        if stor5[stor9[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not uint256(totalSupply):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor11 / uint256(totalSupply):
                    return (arg1 / stor11 / uint256(totalSupply))
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 5
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor9[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor9[idx]]
            t = t - stor4[stor9[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    if t >= stor11 / uint256(totalSupply):
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    if not stor11 / uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor11 / uint256(totalSupply))
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor8[address(arg1)]:
        return stor5[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = uint256(totalSupply)
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not uint256(totalSupply):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor11 / uint256(totalSupply):
                    return (stor4[address(arg1)] / stor11 / uint256(totalSupply))
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 5
        if stor5[stor9[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not uint256(totalSupply):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor11 / uint256(totalSupply):
                    return (stor4[address(arg1)] / stor11 / uint256(totalSupply))
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 5
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor9[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor9[idx]]
            t = t - stor4[stor9[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    if t >= stor11 / uint256(totalSupply):
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor4[address(arg1)] / t / s)
    if not uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    if not stor11 / uint256(totalSupply):
        revert with 0, 'SafeMath: division by zero'
    return (stor4[address(arg1)] / stor11 / uint256(totalSupply))
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = uint256(totalSupply)
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > t:
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if not uint256(totalSupply):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if stor11 / uint256(totalSupply):
                        stor5[address(arg1)] = stor4[address(arg1)] / stor11 / uint256(totalSupply)
                        stor8[address(arg1)] = 1
                        stor9.length++
                        stor9[stor9.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 5
            if stor5[stor9[idx]] > s:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if not uint256(totalSupply):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                    if stor11 / uint256(totalSupply):
                        stor5[address(arg1)] = stor4[address(arg1)] / stor11 / uint256(totalSupply)
                        stor8[address(arg1)] = 1
                        stor9.length++
                        stor9[stor9.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 4
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 30
            mem[_171 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] > t:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _178 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 5
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor9[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor9[idx]]
                t = t - stor4[stor9[idx]]
                continue 
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _227 + 68] = mem[idx + _210 + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not uint256(totalSupply):
            revert with 0, 'SafeMath: division by zero'
        if t >= stor11 / uint256(totalSupply):
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor5[address(arg1)] = stor4[address(arg1)] / t / s
        else:
            if not uint256(totalSupply):
                revert with 0, 'SafeMath: division by zero'
            if not stor11 / uint256(totalSupply):
                revert with 0, 'SafeMath: division by zero'
            stor5[address(arg1)] = stor4[address(arg1)] / stor11 / uint256(totalSupply)
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}



}
