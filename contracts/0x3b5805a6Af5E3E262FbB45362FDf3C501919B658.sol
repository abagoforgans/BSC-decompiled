contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
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
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor20; offset 168
address uniswapV2PairAddress;
uint256 stor20;
uint256 _maxTxAmount;

function name() {
    return name[0 len name.length]
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
    return bool(stor6[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function geUnlockTime() {
    return geUnlockTime
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor20.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        require totalSupply
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = totalSupply * arg1 / 100
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != arg1:
            idx = idx + 1
            continue 
        require stor8.length - 1 < stor8.length
        require idx < stor8.length
        stor8[idx] = stor8[stor8.length]
        stor4[address(arg1)] = 0
        stor7[address(arg1)] = 0
        require stor8.length
        stor8[stor8.length] = 0
        stor8.length--
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
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function updateDex(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
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
    uint256(stor20.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor20.field_0))
    uniswapV2RouterAddress = arg1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = 26
            mem[_118 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_123 + idx + 68] = mem[_118 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_123 + 68] = mem[_123 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _123 + -mem[64] + 100
            require totalSupply
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (arg1 / stor10 / totalSupply)
            _163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_163 + idx + 68] = mem[_151 + idx + 32]
                idx = idx + 32
                continue 
            mem[_163 + 68] = mem[_163 + 74 len 26]
            revert with memory
              from mem[64]
               len _163 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 26
            mem[_126 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_133 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            require totalSupply
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (arg1 / stor10 / totalSupply)
            _176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_176 + idx + 68] = mem[_169 + idx + 32]
                idx = idx + 32
                continue 
            mem[_176 + 68] = mem[_176 + 74 len 26]
            revert with memory
              from mem[64]
               len _176 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 3
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_127 + idx + 68] = mem[_122 + idx + 32]
                idx = idx + 32
                continue 
            mem[_127 + 68] = mem[_127 + 70 len 30]
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
            continue 
        _166 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_166 + idx + 68] = mem[_152 + idx + 32]
            idx = idx + 32
            continue 
        mem[_166 + 68] = mem[_166 + 70 len 30]
        revert with memory
          from mem[64]
           len _166 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor10 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (arg1 / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor10 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    return (arg1 / stor10 / totalSupply)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor7[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_128 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_128 + 68] = mem[_128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _128 + -mem[64] + 100
            require totalSupply
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (stor3[address(arg1)] / stor10 / totalSupply)
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_168 + idx + 68] = mem[_156 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 74 len 26]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require totalSupply
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (stor3[address(arg1)] / stor10 / totalSupply)
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_181 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 3
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_132 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_132 + 68] = mem[_132 + 70 len 30]
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
            continue 
        _171 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_171 + idx + 68] = mem[_157 + idx + 32]
            idx = idx + 32
            continue 
        mem[_171 + 68] = mem[_171 + 70 len 30]
        revert with memory
          from mem[64]
           len _171 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor10 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor3[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor10 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    return (stor3[address(arg1)] / stor10 / totalSupply)
    revert
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_136 + idx + 68] = mem[_131 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_136 + 68] = mem[_136 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _136 + -mem[64] + 100
                require totalSupply
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_176 + idx + 68] = mem[_164 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] > s:
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = 26
                mem[_139 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_146 + idx + 68] = mem[_139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_146 + 68] = mem[_146 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _146 + -mem[64] + 100
                require totalSupply
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _189 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_189 + idx + 68] = mem[_182 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_189 + 68] = mem[_189 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _189 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 3
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor8[idx]] > t:
                _140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_140 + idx + 68] = mem[_135 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_140 + 68] = mem[_140 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _140 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 30
            mem[_165 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor8[idx]] <= s:
                idx = idx + 1
                s = s - stor4[stor8[idx]]
                t = t - stor3[stor8[idx]]
                continue 
            _179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_179 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_179 + 68] = mem[_179 + 70 len 30]
            revert with memory
              from mem[64]
               len _179 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor10 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor10 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor10 / totalSupply
            stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
    stor7[address(arg1)] = 1
    stor8.length++
    stor8[stor8.length] = arg1
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2722] = 26
                    mem[_2722 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2745 + idx + 68] = mem[_2722 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2745 + 68] = mem[_2745 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2745 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        _2988 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2988] = 30
                        mem[_2988 + 32] = 'SafeMath: subtraction overflow'
                        _3091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3091] = 30
                        mem[_3091 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3521] = 30
                        mem[_3521 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3673 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3673 + idx + 68] = mem[_3521 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3673 + 68] = mem[_3673 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3673 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3917] = 30
                        mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4121 + idx + 68] = mem[_3917 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4121 + 68] = mem[_4121 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4121 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3017] = 30
                    mem[_3017 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3070 + idx + 68] = mem[_3017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3070 + 68] = mem[_3070 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3070 + -mem[64] + 100
                    _3177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3177] = 30
                    mem[_3177 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3672] = 30
                    mem[_3672 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3846 + idx + 68] = mem[_3672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3846 + 68] = mem[_3846 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3846 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4118] = 30
                    mem[_4118 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4359 + idx + 68] = mem[_4118 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4359 + 68] = mem[_4359 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4359 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2758 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2758 + idx + 68] = mem[_2732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2758 + 68] = mem[_2758 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2758 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2857] = 30
                    mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2898 + idx + 68] = mem[_2857 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2898 + 68] = mem[_2898 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2898 + -mem[64] + 100
                _2748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2748] = 26
                mem[_2748 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2782 + idx + 68] = mem[_2748 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2782 + 68] = mem[_2782 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2782 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _3018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3018] = 30
                    mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                    _3180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3180] = 30
                    mem[_3180 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3676] = 30
                    mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3852 + idx + 68] = mem[_3676 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 68] = mem[_3852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4124 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4124] = 30
                    mem[_4124 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4366 + idx + 68] = mem[_4124 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4366 + 68] = mem[_4366 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4366 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3073] = 30
                mem[_3073 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3150 + idx + 68] = mem[_3073 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3150 + 68] = mem[_3150 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3150 + -mem[64] + 100
                _3315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3315] = 30
                mem[_3315 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 3
                _3851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3851] = 30
                mem[_3851 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4050 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4050 + idx + 68] = mem[_3851 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4050 + 68] = mem[_4050 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4050 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4363] = 30
                mem[_4363 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4626 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4626 + idx + 68] = mem[_4363 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4626 + 68] = mem[_4626 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4626 + -mem[64] + 100
            _2669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2669] = 26
            mem[_2669 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2779] = 26
                mem[_2779 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2780] = 26
                mem[_2780 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2717] = 26
                    mem[_2717 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2741 + idx + 68] = mem[_2717 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2741 + 68] = mem[_2741 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2741 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            _2987 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2987] = 30
                            mem[_2987 + 32] = 'SafeMath: subtraction overflow'
                            _3090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3090] = 30
                            mem[_3090 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3517] = 30
                            mem[_3517 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3666 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3666 + idx + 68] = mem[_3517 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3666 + 68] = mem[_3666 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3666 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3910] = 30
                            mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4112 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4112 + idx + 68] = mem[_3910 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4112 + 68] = mem[_4112 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4112 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3015 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3015] = 30
                        mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                        _3175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3175] = 30
                        mem[_3175 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            _3306 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3306 + idx + 68] = mem[_3175 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3306 + 68] = mem[_3306 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3306 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3665 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3665] = 30
                        mem[_3665 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3832 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3832 + idx + 68] = mem[_3665 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3832 + 68] = mem[_3832 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3832 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4109 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4109] = 30
                        mem[_4109 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4340 + idx + 68] = mem[_4109 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4340 + 68] = mem[_4340 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4340 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3014] = 30
                        mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3063 + idx + 68] = mem[_3014 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3063 + 68] = mem[_3063 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3063 + -mem[64] + 100
                        _3172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3172] = 30
                        mem[_3172 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3664] = 30
                        mem[_3664 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3829 + idx + 68] = mem[_3664 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3829 + 68] = mem[_3829 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3829 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4106] = 30
                        mem[_4106 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4337 + idx + 68] = mem[_4106 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4337 + 68] = mem[_4337 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4337 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3062] = 30
                    mem[_3062 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3139 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3139 + idx + 68] = mem[_3062 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3139 + 68] = mem[_3139 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3139 + -mem[64] + 100
                    _3303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3303] = 30
                    mem[_3303 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3457 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3457 + idx + 68] = mem[_3303 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3457 + 68] = mem[_3457 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3457 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3828] = 30
                    mem[_3828 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4022 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4022 + idx + 68] = mem[_3828 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4022 + 68] = mem[_4022 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4022 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4334] = 30
                    mem[_4334 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4592 + idx + 68] = mem[_4334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4592 + 68] = mem[_4592 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4592 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2730] = 30
                    mem[_2730 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2755 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2755 + idx + 68] = mem[_2730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2755 + 68] = mem[_2755 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2755 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2853] = 30
                    mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2891 + idx + 68] = mem[_2853 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2891 + 68] = mem[_2891 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2891 + -mem[64] + 100
                _2744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2744] = 26
                mem[_2744 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2776 + idx + 68] = mem[_2744 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 68] = mem[_2776 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        _3016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3016] = 30
                        mem[_3016 + 32] = 'SafeMath: subtraction overflow'
                        _3176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3176] = 30
                        mem[_3176 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3671] = 30
                        mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3841 + idx + 68] = mem[_3671 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3841 + 68] = mem[_3841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3841 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4115 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4115] = 30
                        mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4350 + idx + 68] = mem[_4115 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4350 + 68] = mem[_4350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4350 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3067 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3067] = 30
                    mem[_3067 + 32] = 'SafeMath: subtraction overflow'
                    _3312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3312] = 30
                    mem[_3312 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                        _3465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3465 + idx + 68] = mem[_3312 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3465 + 68] = mem[_3465 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3465 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3840] = 30
                    mem[_3840 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4034 + idx + 68] = mem[_3840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4034 + 68] = mem[_4034 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4034 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4347] = 30
                    mem[_4347 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4606 + idx + 68] = mem[_4347 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4606 + 68] = mem[_4606 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4606 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3066] = 30
                    mem[_3066 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3144 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3144 + idx + 68] = mem[_3066 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3144 + 68] = mem[_3144 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3144 + -mem[64] + 100
                    _3309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3309] = 30
                    mem[_3309 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3839 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3839] = 30
                    mem[_3839 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4031 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4031 + idx + 68] = mem[_3839 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4031 + 68] = mem[_4031 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4031 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4344] = 30
                    mem[_4344 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4603 + idx + 68] = mem[_4344 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4603 + 68] = mem[_4603 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4603 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3143] = 30
                mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3251 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3251 + idx + 68] = mem[_3143 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3251 + 68] = mem[_3251 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3251 + -mem[64] + 100
                _3462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3462] = 30
                mem[_3462 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3615 + idx + 68] = mem[_3462 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3615 + 68] = mem[_3615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3615 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _4030 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4030] = 30
                mem[_4030 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4240 + idx + 68] = mem[_4030 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4240 + 68] = mem[_4240 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4240 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4600] = 30
                mem[_4600 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4837 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4837 + idx + 68] = mem[_4600 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4837 + 68] = mem[_4837 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4837 + -mem[64] + 100
            _2662 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2662] = 26
            mem[_2662 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2773] = 26
                mem[_2773 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2774] = 26
                mem[_2774 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2712] = 26
                    mem[_2712 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2737 + idx + 68] = mem[_2712 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2737 + 68] = mem[_2737 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2737 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _2986 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2986] = 30
                            mem[_2986 + 32] = 'SafeMath: subtraction overflow'
                            _3085 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3085] = 30
                            mem[_3085 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3509] = 30
                            mem[_3509 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3654 + idx + 68] = mem[_3509 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3654 + 68] = mem[_3654 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3654 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3897] = 30
                            mem[_3897 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4096 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4096 + idx + 68] = mem[_3897 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4096 + 68] = mem[_4096 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4096 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3012] = 30
                        mem[_3012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3055 + idx + 68] = mem[_3012 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3055 + 68] = mem[_3055 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3055 + -mem[64] + 100
                        _3168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3168] = 30
                        mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3292 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3292 + idx + 68] = mem[_3168 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3292 + 68] = mem[_3292 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3292 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3653 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3653] = 30
                        mem[_3653 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3810 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3810 + idx + 68] = mem[_3653 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3810 + 68] = mem[_3810 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3810 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4093 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4093] = 30
                        mem[_4093 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4315 + idx + 68] = mem[_4093 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4315 + 68] = mem[_4315 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4315 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3011] = 30
                        mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3052 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3052 + idx + 68] = mem[_3011 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3052 + 68] = mem[_3052 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3052 + -mem[64] + 100
                        _3165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3165] = 30
                        mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3652] = 30
                        mem[_3652 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3807 + idx + 68] = mem[_3652 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3807 + 68] = mem[_3807 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3807 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4090] = 30
                        mem[_4090 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4312 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4312 + idx + 68] = mem[_4090 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4312 + 68] = mem[_4312 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4312 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3051 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3051] = 30
                    mem[_3051 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3123 + idx + 68] = mem[_3051 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3123 + 68] = mem[_3123 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3123 + -mem[64] + 100
                    _3289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3289] = 30
                    mem[_3289 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3438 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3438 + idx + 68] = mem[_3289 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3438 + 68] = mem[_3438 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3438 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3806] = 30
                    mem[_3806 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3991 + idx + 68] = mem[_3806 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3991 + 68] = mem[_3991 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3991 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4309] = 30
                    mem[_4309 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4556 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4556 + idx + 68] = mem[_4309 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4556 + 68] = mem[_4556 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4556 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2728] = 30
                    mem[_2728 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2752 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2752 + idx + 68] = mem[_2728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2752 + 68] = mem[_2752 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2752 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2849] = 30
                    mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2884 + idx + 68] = mem[_2849 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2884 + 68] = mem[_2884 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2884 + -mem[64] + 100
                _2740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2740] = 26
                mem[_2740 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2770 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2770 + idx + 68] = mem[_2740 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2770 + 68] = mem[_2770 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2770 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _3013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3013] = 30
                        mem[_3013 + 32] = 'SafeMath: subtraction overflow'
                        _3171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3171] = 30
                        mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3659] = 30
                        mem[_3659 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3819 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3819 + idx + 68] = mem[_3659 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3819 + 68] = mem[_3819 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3819 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4099] = 30
                        mem[_4099 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4325 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4325 + idx + 68] = mem[_4099 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4325 + 68] = mem[_4325 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4325 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3059] = 30
                    mem[_3059 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3132 + idx + 68] = mem[_3059 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3132 + 68] = mem[_3132 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3132 + -mem[64] + 100
                    _3298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3298] = 30
                    mem[_3298 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        _3446 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3446 + idx + 68] = mem[_3298 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3446 + 68] = mem[_3446 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3446 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3818] = 30
                    mem[_3818 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4003 + idx + 68] = mem[_3818 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4003 + 68] = mem[_4003 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4003 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4322] = 30
                    mem[_4322 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4570 + idx + 68] = mem[_4322 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4570 + 68] = mem[_4570 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4570 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3058] = 30
                    mem[_3058 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3129 + idx + 68] = mem[_3058 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3129 + 68] = mem[_3129 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3129 + -mem[64] + 100
                    _3295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3295] = 30
                    mem[_3295 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3817] = 30
                    mem[_3817 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4000 + idx + 68] = mem[_3817 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4000 + 68] = mem[_4000 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4000 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4319] = 30
                    mem[_4319 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4567 + idx + 68] = mem[_4319 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4567 + 68] = mem[_4567 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4567 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3128] = 30
                mem[_3128 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3236 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3236 + idx + 68] = mem[_3128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3236 + 68] = mem[_3236 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3236 + -mem[64] + 100
                _3443 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3443] = 30
                mem[_3443 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    _3594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3594 + idx + 68] = mem[_3443 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3594 + 68] = mem[_3594 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3594 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _3999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3999] = 30
                mem[_3999 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4210 + idx + 68] = mem[_3999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4210 + 68] = mem[_4210 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4210 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4564 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4564] = 30
                mem[_4564 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4802 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4802 + idx + 68] = mem[_4564 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4802 + 68] = mem[_4802 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4802 + -mem[64] + 100
            _2655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2655] = 26
            mem[_2655 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2767] = 26
                mem[_2767 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2768] = 26
                mem[_2768 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2707] = 26
                    mem[_2707 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2733 + idx + 68] = mem[_2707 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2733 + 68] = mem[_2733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2733 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _2985 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2985] = 30
                                mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                                _3082 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3082] = 30
                                mem[_3082 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3496 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3496] = 30
                                mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor3[address(msg.sender)]:
                                    _3639 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3639 + idx + 68] = mem[_3496 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3639 + 68] = mem[_3639 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3639 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3879 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3879] = 30
                                mem[_3879 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor10:
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _4078 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4078 + idx + 68] = mem[_3879 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4078 + 68] = mem[_4078 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4078 + -mem[64] + 100
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3009 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3009] = 30
                            mem[_3009 + 32] = 'SafeMath: subtraction overflow'
                            _3163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3163] = 30
                            mem[_3163 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                                _3277 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3277 + idx + 68] = mem[_3163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3277 + 68] = mem[_3277 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3277 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3638] = 30
                            mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3783 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3783 + idx + 68] = mem[_3638 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3783 + 68] = mem[_3783 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3783 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4075] = 30
                            mem[_4075 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4287 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4287 + idx + 68] = mem[_4075 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4287 + 68] = mem[_4287 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4287 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            _3008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3008] = 30
                            mem[_3008 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                _3043 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3043 + idx + 68] = mem[_3008 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3043 + 68] = mem[_3043 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3043 + -mem[64] + 100
                            _3160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3160] = 30
                            mem[_3160 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                _3274 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3274 + idx + 68] = mem[_3160 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3274 + 68] = mem[_3274 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3274 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3637 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3637] = 30
                            mem[_3637 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3780 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3780 + idx + 68] = mem[_3637 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3780 + 68] = mem[_3780 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3780 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4072] = 30
                            mem[_4072 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4284 + idx + 68] = mem[_4072 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4284 + 68] = mem[_4284 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4284 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = 30
                        mem[_3042 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3106 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3106 + idx + 68] = mem[_3042 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3106 + 68] = mem[_3106 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3106 + -mem[64] + 100
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3405 + idx + 68] = mem[_3271 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3405 + 68] = mem[_3405 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3405 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3779] = 30
                        mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3953 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3953 + idx + 68] = mem[_3779 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3953 + 68] = mem[_3953 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3953 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4281] = 30
                        mem[_4281 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4511 + idx + 68] = mem[_4281 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4511 + 68] = mem[_4511 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4511 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3007 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3007] = 30
                            mem[_3007 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                _3039 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3039 + idx + 68] = mem[_3007 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3039 + 68] = mem[_3039 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3039 + -mem[64] + 100
                            _3157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3157] = 30
                            mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3634] = 30
                            mem[_3634 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                                _3776 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3776 + idx + 68] = mem[_3634 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3776 + 68] = mem[_3776 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3776 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                            _4069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4069] = 30
                            mem[_4069 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply <= stor10:
                                stor10 += -1 * arg1 * stor10 / totalSupply
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4278 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4278 + idx + 68] = mem[_4069 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4278 + 68] = mem[_4278 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4278 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3038 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3038] = 30
                        mem[_3038 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3102 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3102 + idx + 68] = mem[_3038 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3102 + 68] = mem[_3102 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3102 + -mem[64] + 100
                        _3268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3268] = 30
                        mem[_3268 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3402 + idx + 68] = mem[_3268 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3402 + 68] = mem[_3402 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3402 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3775] = 30
                        mem[_3775 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3948 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3948 + idx + 68] = mem[_3775 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3948 + 68] = mem[_3948 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3948 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4275] = 30
                        mem[_4275 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4507 + idx + 68] = mem[_4275 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4507 + 68] = mem[_4507 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4507 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3037] = 30
                        mem[_3037 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3099 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3099 + idx + 68] = mem[_3037 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3099 + 68] = mem[_3099 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3099 + -mem[64] + 100
                        _3265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3265] = 30
                        mem[_3265 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            _3399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3399 + idx + 68] = mem[_3265 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3399 + 68] = mem[_3399 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3399 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3774] = 30
                        mem[_3774 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3945 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3945 + idx + 68] = mem[_3774 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3945 + 68] = mem[_3945 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3945 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4272] = 30
                        mem[_4272 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4504 + idx + 68] = mem[_4272 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4504 + 68] = mem[_4504 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4504 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3098] = 30
                    mem[_3098 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3199 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3199 + idx + 68] = mem[_3098 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3199 + 68] = mem[_3199 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3199 + -mem[64] + 100
                    _3396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3396] = 30
                    mem[_3396 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3552 + idx + 68] = mem[_3396 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3552 + 68] = mem[_3552 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3552 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3944] = 30
                    mem[_3944 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4159 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4159 + idx + 68] = mem[_3944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4159 + 68] = mem[_4159 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4159 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4501] = 30
                    mem[_4501 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4742 + idx + 68] = mem[_4501 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4742 + 68] = mem[_4742 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4742 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2726 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2726] = 30
                    mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2749 + idx + 68] = mem[_2726 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2749 + 68] = mem[_2749 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2749 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 30
                    mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2877 + idx + 68] = mem[_2845 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2877 + 68] = mem[_2877 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2877 + -mem[64] + 100
                _2736 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2736] = 26
                mem[_2736 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2764 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2764 + idx + 68] = mem[_2736 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2764 + 68] = mem[_2764 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2764 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3010] = 30
                            mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                            _3164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3164] = 30
                            mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3647] = 30
                            mem[_3647 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3797 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3797 + idx + 68] = mem[_3647 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3797 + 68] = mem[_3797 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3797 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4083 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4083] = 30
                            mem[_4083 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4300 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4300 + idx + 68] = mem[_4083 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4300 + 68] = mem[_4300 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4300 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3048 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3048] = 30
                        mem[_3048 + 32] = 'SafeMath: subtraction overflow'
                        _3286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3286] = 30
                        mem[_3286 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            _3423 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3423 + idx + 68] = mem[_3286 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3423 + 68] = mem[_3423 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3423 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3972 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3972 + idx + 68] = mem[_3796 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3972 + 68] = mem[_3972 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3972 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4297] = 30
                        mem[_4297 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4534 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4534 + idx + 68] = mem[_4297 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4534 + 68] = mem[_4534 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4534 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3047] = 30
                        mem[_3047 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3116 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3116 + idx + 68] = mem[_3047 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3116 + 68] = mem[_3116 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3116 + -mem[64] + 100
                        _3283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3283] = 30
                        mem[_3283 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3420 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3420 + idx + 68] = mem[_3283 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3420 + 68] = mem[_3420 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3420 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3795] = 30
                        mem[_3795 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3969 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3969 + idx + 68] = mem[_3795 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3969 + 68] = mem[_3969 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3969 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4294] = 30
                        mem[_4294 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4531 + idx + 68] = mem[_4294 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4531 + 68] = mem[_4531 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4531 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3215 + idx + 68] = mem[_3115 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3215 + 68] = mem[_3215 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3215 + -mem[64] + 100
                    _3417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3417] = 30
                    mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        _3572 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3572 + idx + 68] = mem[_3417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3572 + 68] = mem[_3572 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3572 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3968] = 30
                    mem[_3968 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4180 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4180 + idx + 68] = mem[_3968 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4180 + 68] = mem[_4180 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4180 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4528] = 30
                    mem[_4528 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4767 + idx + 68] = mem[_4528 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4767 + 68] = mem[_4767 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4767 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = 30
                        mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3112 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3112 + idx + 68] = mem[_3046 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3112 + 68] = mem[_3112 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3112 + -mem[64] + 100
                        _3280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3280] = 30
                        mem[_3280 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3792 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3792] = 30
                        mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3965 + idx + 68] = mem[_3792 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3965 + 68] = mem[_3965 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3965 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4291] = 30
                        mem[_4291 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4525 + idx + 68] = mem[_4291 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4525 + 68] = mem[_4525 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4525 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3111] = 30
                    mem[_3111 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3211 + idx + 68] = mem[_3111 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 68] = mem[_3211 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    _3414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3414] = 30
                    mem[_3414 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3569 + idx + 68] = mem[_3414 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3569 + 68] = mem[_3569 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3569 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3964] = 30
                    mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4175 + idx + 68] = mem[_3964 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4175 + 68] = mem[_4175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4175 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4522] = 30
                    mem[_4522 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4763 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4763 + idx + 68] = mem[_4522 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4763 + 68] = mem[_4763 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4763 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3110 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3110] = 30
                    mem[_3110 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3208 + idx + 68] = mem[_3110 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3208 + 68] = mem[_3208 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3208 + -mem[64] + 100
                    _3411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3411] = 30
                    mem[_3411 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3566 + idx + 68] = mem[_3411 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3566 + 68] = mem[_3566 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3566 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3963] = 30
                    mem[_3963 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4172 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4172 + idx + 68] = mem[_3963 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4172 + 68] = mem[_4172 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4172 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4519] = 30
                    mem[_4519 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4760 + idx + 68] = mem[_4519 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4760 + 68] = mem[_4760 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4760 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3207] = 30
                mem[_3207 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3346 + idx + 68] = mem[_3207 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3346 + 68] = mem[_3346 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3346 + -mem[64] + 100
                _3563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3563] = 30
                mem[_3563 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    _3714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3714 + idx + 68] = mem[_3563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3714 + 68] = mem[_3714 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3714 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _4171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4171] = 30
                mem[_4171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4410 + idx + 68] = mem[_4171 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4410 + 68] = mem[_4410 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4410 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4757] = 30
                mem[_4757 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4963 + idx + 68] = mem[_4757 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4963 + 68] = mem[_4963 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4963 + -mem[64] + 100
            _2648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2648] = 26
            mem[_2648 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2761 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2761] = 26
                mem[_2761 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2762] = 26
                mem[_2762 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
