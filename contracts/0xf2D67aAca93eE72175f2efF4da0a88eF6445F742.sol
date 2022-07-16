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

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
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
                        _2830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2830] = 26
                        mem[_2830 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2881 + idx + 68] = mem[_2830 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2881 + 68] = mem[_2881 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2881 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3427] = 30
                        mem[_3427 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3508 + idx + 68] = mem[_3427 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3508 + 68] = mem[_3508 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3508 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] > s:
                        _2884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2884] = 26
                        mem[_2884 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2946 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2946 + idx + 68] = mem[_2884 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2946 + 68] = mem[_2946 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2946 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3511] = 30
                        mem[_3511 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3645 + idx + 68] = mem[_3511 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3645 + 68] = mem[_3645 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3645 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2860] = 30
                    mem[_2860 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2910 + idx + 68] = mem[_2860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2910 + 68] = mem[_2910 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2910 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3105] = 30
                    mem[_3105 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3174 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3174 + idx + 68] = mem[_3105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3174 + 68] = mem[_3174 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3174 + -mem[64] + 100
                _2720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2720] = 26
                mem[_2720 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor10 / totalSupply:
                    _2943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2943] = 26
                    mem[_2943 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _2944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2944] = 26
                mem[_2944 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
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
                    _2825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2825] = 26
                    mem[_2825 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2877 + idx + 68] = mem[_2825 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2877 + 68] = mem[_2877 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2877 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3425] = 30
                        mem[_3425 + 32] = 'SafeMath: subtraction overflow'
                        _3731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3731] = 30
                        mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3972 + idx + 68] = mem[_3731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3972 + 68] = mem[_3972 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3972 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3424] = 30
                        mem[_3424 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3501 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3501 + idx + 68] = mem[_3424 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3501 + 68] = mem[_3501 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3501 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3500] = 30
                    mem[_3500 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3634 + idx + 68] = mem[_3500 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3634 + 68] = mem[_3634 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3634 + -mem[64] + 100
                    _3969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3969] = 30
                    mem[_3969 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4240 + idx + 68] = mem[_3969 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4240 + 68] = mem[_4240 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4240 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2858] = 30
                    mem[_2858 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2907 + idx + 68] = mem[_2858 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2907 + 68] = mem[_2907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2907 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3101 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3101] = 30
                    mem[_3101 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3167 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3167 + idx + 68] = mem[_3101 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3167 + 68] = mem[_3167 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3167 + -mem[64] + 100
                _2880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2880] = 26
                mem[_2880 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2940 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2940 + idx + 68] = mem[_2880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2940 + 68] = mem[_2940 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2940 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3505] = 30
                    mem[_3505 + 32] = 'SafeMath: subtraction overflow'
                    _3978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3978] = 30
                    mem[_3978 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _4247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4247 + idx + 68] = mem[_3978 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4247 + 68] = mem[_4247 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4247 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3639 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3639 + idx + 68] = mem[_3504 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3639 + 68] = mem[_3639 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3639 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3638] = 30
                mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3835 + idx + 68] = mem[_3638 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3835 + 68] = mem[_3835 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3835 + -mem[64] + 100
                _4244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4244] = 30
                mem[_4244 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4521 + idx + 68] = mem[_4244 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4521 + 68] = mem[_4521 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4521 + -mem[64] + 100
            _2713 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2713] = 26
            mem[_2713 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2937] = 26
                mem[_2937 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            _2938 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2938] = 26
            mem[_2938 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    return 0
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
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
                    _2820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2820] = 26
                    mem[_2820 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2873 + idx + 68] = mem[_2820 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2873 + 68] = mem[_2873 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2873 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3422] = 30
                        mem[_3422 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3493 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3493 + idx + 68] = mem[_3422 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3493 + 68] = mem[_3493 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3493 + -mem[64] + 100
                        _3724 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3724] = 30
                        mem[_3724 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3958 + idx + 68] = mem[_3724 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3958 + 68] = mem[_3958 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3958 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3421 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3421] = 30
                        mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3490 + idx + 68] = mem[_3421 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3490 + 68] = mem[_3490 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3490 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3489] = 30
                    mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3618 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3618 + idx + 68] = mem[_3489 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3618 + 68] = mem[_3618 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3618 + -mem[64] + 100
                    _3955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3955] = 30
                    mem[_3955 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _4222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4222 + idx + 68] = mem[_3955 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4222 + 68] = mem[_4222 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4222 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2856] = 30
                    mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2904 + idx + 68] = mem[_2856 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2904 + 68] = mem[_2904 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2904 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3097] = 30
                    mem[_3097 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3160 + idx + 68] = mem[_3097 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3160 + 68] = mem[_3160 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3160 + -mem[64] + 100
                _2876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2876] = 26
                mem[_2876 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2934 + idx + 68] = mem[_2876 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2934 + 68] = mem[_2934 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2934 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3497] = 30
                    mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3627 + idx + 68] = mem[_3497 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3627 + 68] = mem[_3627 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3627 + -mem[64] + 100
                    _3964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3964] = 30
                    mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _4229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4229 + idx + 68] = mem[_3964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4229 + 68] = mem[_4229 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4229 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = 30
                    mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3624 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3624 + idx + 68] = mem[_3496 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3624 + 68] = mem[_3624 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3624 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3623] = 30
                mem[_3623 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3820 + idx + 68] = mem[_3623 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3820 + 68] = mem[_3820 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3820 + -mem[64] + 100
                _4226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4226] = 30
                mem[_4226 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _4501 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4501 + idx + 68] = mem[_4226 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4501 + 68] = mem[_4501 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4501 + -mem[64] + 100
            _2706 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2706] = 26
            mem[_2706 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2931 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2931] = 26
                mem[_2931 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            _2932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2932] = 26
            mem[_2932 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
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
                _2815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2815] = 26
                mem[_2815 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2869 + idx + 68] = mem[_2815 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2869 + 68] = mem[_2869 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2869 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3419] = 30
                        mem[_3419 + 32] = 'SafeMath: subtraction overflow'
                        _3719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3719] = 30
                        mem[_3719 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3943 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3943 + idx + 68] = mem[_3719 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3943 + 68] = mem[_3943 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3943 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3418 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3418] = 30
                        mem[_3418 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3481 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3481 + idx + 68] = mem[_3418 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3481 + 68] = mem[_3481 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3481 + -mem[64] + 100
                        _3716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3716] = 30
                        mem[_3716 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3940 + idx + 68] = mem[_3716 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3940 + 68] = mem[_3940 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3940 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3480] = 30
                    mem[_3480 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3601 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3601 + idx + 68] = mem[_3480 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3601 + 68] = mem[_3601 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3601 + -mem[64] + 100
                    _3937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3937] = 30
                    mem[_3937 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4190 + idx + 68] = mem[_3937 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4190 + 68] = mem[_4190 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4190 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3417] = 30
                        mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3477 + idx + 68] = mem[_3417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3477 + 68] = mem[_3477 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3477 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3476] = 30
                    mem[_3476 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3597 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3597 + idx + 68] = mem[_3476 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3597 + 68] = mem[_3597 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3597 + -mem[64] + 100
                    _3934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3934] = 30
                    mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4187 + idx + 68] = mem[_3934 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4187 + 68] = mem[_4187 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4187 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3475 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3475] = 30
                    mem[_3475 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3594 + idx + 68] = mem[_3475 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3594 + 68] = mem[_3594 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3594 + -mem[64] + 100
                    _3931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3931] = 30
                    mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _4184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4184 + idx + 68] = mem[_3931 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4184 + 68] = mem[_4184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4184 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3593] = 30
                mem[_3593 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3783 + idx + 68] = mem[_3593 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3783 + 68] = mem[_3783 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3783 + -mem[64] + 100
                _4181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4181] = 30
                mem[_4181 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4461 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4461 + idx + 68] = mem[_4181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4461 + 68] = mem[_4461 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4461 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] <= s:
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _2854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2854] = 30
                mem[_2854 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2901 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2901 + idx + 68] = mem[_2854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2901 + 68] = mem[_2901 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2901 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _3093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3093] = 30
                mem[_3093 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _3153 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3153 + idx + 68] = mem[_3093 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3153 + 68] = mem[_3153 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3153 + -mem[64] + 100
            _2872 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2872] = 26
            mem[_2872 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2928 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2928 + idx + 68] = mem[_2872 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2928 + 68] = mem[_2928 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2928 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3486] = 30
                    mem[_3486 + 32] = 'SafeMath: subtraction overflow'
                    _3952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3952] = 30
                    mem[_3952 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _4207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4207 + idx + 68] = mem[_3952 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4207 + 68] = mem[_4207 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4207 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3485] = 30
                    mem[_3485 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3611 + idx + 68] = mem[_3485 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3611 + 68] = mem[_3611 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3611 + -mem[64] + 100
                    _3949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3949] = 30
                    mem[_3949 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _4204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4204 + idx + 68] = mem[_3949 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4204 + 68] = mem[_4204 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4204 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3610] = 30
                mem[_3610 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    _3799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3799 + idx + 68] = mem[_3610 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3799 + 68] = mem[_3799 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3799 + -mem[64] + 100
                _4201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4201] = 30
                mem[_4201 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4480 + idx + 68] = mem[_4201 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4480 + 68] = mem[_4480 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4480 + -mem[64] + 100
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _3484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3484] = 30
                    mem[_3484 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3607 + idx + 68] = mem[_3484 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3607 + 68] = mem[_3607 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3607 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3606 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3606] = 30
                mem[_3606 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3795 + idx + 68] = mem[_3606 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3795 + 68] = mem[_3795 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3795 + -mem[64] + 100
                _4198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4198] = 30
                mem[_4198 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4477 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4477 + idx + 68] = mem[_4198 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4477 + 68] = mem[_4477 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4477 + -mem[64] + 100
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                _3605 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3605] = 30
                mem[_3605 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3792 + idx + 68] = mem[_3605 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 68] = mem[_3792 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                _4195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4195] = 30
                mem[_4195 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _4474 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4474 + idx + 68] = mem[_4195 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4474 + 68] = mem[_4474 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4474 + -mem[64] + 100
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3791 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3791] = 30
            mem[_3791 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                _4067 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4067 + idx + 68] = mem[_3791 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4067 + 68] = mem[_4067 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4067 + -mem[64] + 100
            _4471 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4471] = 30
            mem[_4471 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
            _4723 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4723 + idx + 68] = mem[_4471 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4723 + 68] = mem[_4723 + 70 len 30]
            revert with memory
              from mem[64]
               len _4723 + -mem[64] + 100
        _2699 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2699] = 26
        mem[_2699 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor10 / totalSupply:
            _2925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2925] = 26
            mem[_2925 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
        _2926 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2926] = 26
        mem[_2926 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    return 0
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        require arg1 * _taxFee / 100
        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
        require arg1 * _liquidityFee / 100
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
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
                    _2850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2850] = 26
                    mem[_2850 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2897 + idx + 68] = mem[_2850 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2897 + 68] = mem[_2897 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2897 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3439] = 30
                    mem[_3439 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3547 + idx + 68] = mem[_3439 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3547 + 68] = mem[_3547 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3547 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] > s:
                    _2900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2900] = 26
                    mem[_2900 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2970 + idx + 68] = mem[_2900 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2970 + 68] = mem[_2970 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2970 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3550] = 30
                    mem[_3550 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3706 + idx + 68] = mem[_3550 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3706 + 68] = mem[_3706 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3706 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _2868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2868] = 30
                mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2922 + idx + 68] = mem[_2868 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2922 + 68] = mem[_2922 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2922 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _3121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3121] = 30
                mem[_3121 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _3202 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3202 + idx + 68] = mem[_3121 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3202 + 68] = mem[_3202 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3202 + -mem[64] + 100
            _2746 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2746] = 26
            mem[_2746 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2967] = 26
                mem[_2967 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2968 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2968] = 26
            mem[_2968 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
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
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 26
                    mem[_2845 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2893 + idx + 68] = mem[_2845 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2893 + 68] = mem[_2893 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2893 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3437] = 30
                        mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                        _3759 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3759] = 30
                        mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _4027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4027 + idx + 68] = mem[_3759 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4027 + 68] = mem[_4027 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4027 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3436] = 30
                        mem[_3436 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3540 + idx + 68] = mem[_3436 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3540 + 68] = mem[_3540 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3540 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3539] = 30
                    mem[_3539 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3695 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3695 + idx + 68] = mem[_3539 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3695 + 68] = mem[_3695 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3695 + -mem[64] + 100
                    _4024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4024] = 30
                    mem[_4024 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _4329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4329 + idx + 68] = mem[_4024 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4329 + 68] = mem[_4329 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4329 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2866] = 30
                    mem[_2866 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2919 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2919 + idx + 68] = mem[_2866 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2919 + 68] = mem[_2919 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2919 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3195 + idx + 68] = mem[_3117 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3195 + 68] = mem[_3195 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3195 + -mem[64] + 100
                _2896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2896] = 26
                mem[_2896 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2964 + idx + 68] = mem[_2896 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2964 + 68] = mem[_2964 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2964 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3544] = 30
                    mem[_3544 + 32] = 'SafeMath: subtraction overflow'
                    _4033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4033] = 30
                    mem[_4033 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return 0
                    _4336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4336 + idx + 68] = mem[_4033 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4336 + 68] = mem[_4336 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4336 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3543] = 30
                    mem[_3543 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3700 + idx + 68] = mem[_3543 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3700 + 68] = mem[_3700 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3700 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3699 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3699] = 30
                mem[_3699 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3917 + idx + 68] = mem[_3699 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3917 + 68] = mem[_3917 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3917 + -mem[64] + 100
                _4333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4333] = 30
                mem[_4333 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return (arg1 * stor10 / totalSupply)
                _4617 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4617 + idx + 68] = mem[_4333 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4617 + 68] = mem[_4617 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4617 + -mem[64] + 100
            _2739 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2739] = 26
            mem[_2739 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2961] = 26
                mem[_2961 + 32] = 'SafeMath: division by zero'
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
                        else:
                            return 0
                    else:
                        return 0
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
                return (arg1 * t / s)
            _2962 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2962] = 26
            mem[_2962 + 32] = 'SafeMath: division by zero'
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
                    else:
                        return 0
                else:
                    return 0
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
                    _2840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2840] = 26
                    mem[_2840 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2889 + idx + 68] = mem[_2840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2889 + 68] = mem[_2889 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2889 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3434] = 30
                        mem[_3434 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3532 + idx + 68] = mem[_3434 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3532 + 68] = mem[_3532 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3532 + -mem[64] + 100
                        _3752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3752] = 30
                        mem[_3752 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4013 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4013 + idx + 68] = mem[_3752 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4013 + 68] = mem[_4013 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4013 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3433] = 30
                        mem[_3433 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3529 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3529 + idx + 68] = mem[_3433 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3529 + 68] = mem[_3529 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3529 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3528] = 30
                    mem[_3528 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3679 + idx + 68] = mem[_3528 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3679 + 68] = mem[_3679 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3679 + -mem[64] + 100
                    _4010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4010] = 30
                    mem[_4010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4311 + idx + 68] = mem[_4010 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4311 + 68] = mem[_4311 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4311 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2864] = 30
                    mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2916 + idx + 68] = mem[_2864 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2916 + 68] = mem[_2916 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2916 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3113] = 30
                    mem[_3113 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3188 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3188 + idx + 68] = mem[_3113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3188 + 68] = mem[_3188 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3188 + -mem[64] + 100
                _2892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2892] = 26
                mem[_2892 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2958 + idx + 68] = mem[_2892 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2958 + 68] = mem[_2958 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2958 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3536] = 30
                    mem[_3536 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3688 + idx + 68] = mem[_3536 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3688 + 68] = mem[_3688 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3688 + -mem[64] + 100
                    _4019 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4019] = 30
                    mem[_4019 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return 0
                    _4318 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4318 + idx + 68] = mem[_4019 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4318 + 68] = mem[_4318 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4318 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3535] = 30
                    mem[_3535 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3685 + idx + 68] = mem[_3535 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3685 + 68] = mem[_3685 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3685 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3684] = 30
                mem[_3684 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3902 + idx + 68] = mem[_3684 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3902 + 68] = mem[_3902 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3902 + -mem[64] + 100
                _4315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4315] = 30
                mem[_4315 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return (arg1 * stor10 / totalSupply)
                _4597 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4597 + idx + 68] = mem[_4315 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4597 + 68] = mem[_4597 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4597 + -mem[64] + 100
            _2732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2732] = 26
            mem[_2732 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2955] = 26
                mem[_2955 + 32] = 'SafeMath: division by zero'
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
                        else:
                            return 0
                    else:
                        return 0
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
                return (arg1 * t / s)
            _2956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2956] = 26
            mem[_2956 + 32] = 'SafeMath: division by zero'
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
                    else:
                        return 0
                else:
                    return 0
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
                    _2835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2835] = 26
                    mem[_2835 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2885 + idx + 68] = mem[_2835 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2885 + 68] = mem[_2885 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2885 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3431] = 30
                            mem[_3431 + 32] = 'SafeMath: subtraction overflow'
                            _3747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3747] = 30
                            mem[_3747 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                                return 0
                            _3998 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3998 + idx + 68] = mem[_3747 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3998 + 68] = mem[_3998 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3998 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            _3430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3430] = 30
                            mem[_3430 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                _3520 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3520 + idx + 68] = mem[_3430 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3520 + 68] = mem[_3520 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3520 + -mem[64] + 100
                            _3744 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3744] = 30
                            mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                return 0
                            _3995 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3995 + idx + 68] = mem[_3744 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3995 + 68] = mem[_3995 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3995 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3519] = 30
                        mem[_3519 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3662 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3662 + idx + 68] = mem[_3519 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3662 + 68] = mem[_3662 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3662 + -mem[64] + 100
                        _3992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3992] = 30
                        mem[_3992 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4279 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4279 + idx + 68] = mem[_3992 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4279 + 68] = mem[_4279 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4279 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3429 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3429] = 30
                            mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor10 / totalSupply:
                                return (arg1 * stor10 / totalSupply)
                            _3516 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3516 + idx + 68] = mem[_3429 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3516 + 68] = mem[_3516 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3516 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3515] = 30
                        mem[_3515 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3658 + idx + 68] = mem[_3515 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3658 + 68] = mem[_3658 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3658 + -mem[64] + 100
                        _3989 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3989] = 30
                        mem[_3989 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _4276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4276 + idx + 68] = mem[_3989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4276 + 68] = mem[_4276 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4276 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3514 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3514] = 30
                        mem[_3514 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3655 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3655 + idx + 68] = mem[_3514 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3655 + 68] = mem[_3655 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3655 + -mem[64] + 100
                        _3986 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3986] = 30
                        mem[_3986 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            return (arg1 * stor10 / totalSupply)
                        _4273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4273 + idx + 68] = mem[_3986 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4273 + 68] = mem[_4273 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4273 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3654] = 30
                    mem[_3654 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3865 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3865 + idx + 68] = mem[_3654 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3865 + 68] = mem[_3865 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3865 + -mem[64] + 100
                    _4270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4270] = 30
                    mem[_4270 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4557 + idx + 68] = mem[_4270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4557 + 68] = mem[_4557 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4557 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2862] = 30
                    mem[_2862 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2913 + idx + 68] = mem[_2862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2913 + 68] = mem[_2913 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2913 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3109] = 30
                    mem[_3109 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3181 + idx + 68] = mem[_3109 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3181 + 68] = mem[_3181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3181 + -mem[64] + 100
                _2888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2888] = 26
                mem[_2888 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2952 + idx + 68] = mem[_2888 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2952 + 68] = mem[_2952 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2952 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3525] = 30
                        mem[_3525 + 32] = 'SafeMath: subtraction overflow'
                        _4007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4007] = 30
                        mem[_4007 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _4296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4296 + idx + 68] = mem[_4007 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4296 + 68] = mem[_4296 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4296 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3524] = 30
                        mem[_3524 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3672 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3672 + idx + 68] = mem[_3524 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3672 + 68] = mem[_3672 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3672 + -mem[64] + 100
                        _4004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4004] = 30
                        mem[_4004 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4293 + idx + 68] = mem[_4004 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4293 + 68] = mem[_4293 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4293 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3671] = 30
                    mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3881 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3881 + idx + 68] = mem[_3671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3881 + 68] = mem[_3881 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3881 + -mem[64] + 100
                    _4290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4290] = 30
                    mem[_4290 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return 0
                    _4576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4576 + idx + 68] = mem[_4290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4576 + 68] = mem[_4576 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4576 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3523] = 30
                        mem[_3523 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3668 + idx + 68] = mem[_3523 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3668 + 68] = mem[_3668 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3668 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3667] = 30
                    mem[_3667 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3877 + idx + 68] = mem[_3667 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3877 + 68] = mem[_3877 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3877 + -mem[64] + 100
                    _4287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4287] = 30
                    mem[_4287 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _4573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4573 + idx + 68] = mem[_4287 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4573 + 68] = mem[_4573 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4573 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3666] = 30
                    mem[_3666 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3874 + idx + 68] = mem[_3666 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3874 + 68] = mem[_3874 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3874 + -mem[64] + 100
                    _4284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4284] = 30
                    mem[_4284 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4570 + idx + 68] = mem[_4284 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4570 + 68] = mem[_4570 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4570 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3873] = 30
                mem[_3873 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _4131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4131 + idx + 68] = mem[_3873 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4131 + 68] = mem[_4131 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4131 + -mem[64] + 100
                _4567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4567] = 30
                mem[_4567 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return (arg1 * stor10 / totalSupply)
                _4809 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4809 + idx + 68] = mem[_4567 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4809 + 68] = mem[_4809 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4809 + -mem[64] + 100
            _2725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2725] = 26
            mem[_2725 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2949] = 26
                mem[_2949 + 32] = 'SafeMath: division by zero'
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
                    return 0
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
                return (arg1 * t / s)
            _2950 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2950] = 26
            mem[_2950 + 32] = 'SafeMath: division by zero'
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
                return 0
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
    return (arg1 * stor10 / totalSupply)
}



}
