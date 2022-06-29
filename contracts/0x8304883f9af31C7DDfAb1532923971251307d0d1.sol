contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#
const _getETHBalance = eth.balance(this.address)


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
uint256 stor15;
uint256 stor16;
address stor19;
address stor20;
address uniswapV2RouterAddress;
uint8 swapEnabled; offset 168
uint128 stor22; offset 168
uint128 stor22; offset 160
address uniswapV2PairAddress;
uint256 sub_206c9d97;

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

function sub_206c9d97(?) {
    return sub_206c9d97
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function swapEnabled() {
    return bool(swapEnabled)
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

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
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

function _setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function sub_68c96eb1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
}

function setCurrentLiqPair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor22.field_168) = Mask(88, 0, arg1)
}

function setExcludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
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

function _setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 'taxFee should be in 1 - 25'
    if arg1 > 25:
        revert with 0, 'taxFee should be in 1 - 25'
    stor15 = arg1
}

function _setTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 'teamFee should be in 1 - 25'
    if arg1 > 25:
        revert with 0, 'teamFee should be in 1 - 25'
    stor16 = arg1
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

function _setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736d61785478416d6f756e742073686f756c64206265206c6f776572207468616e20546f74616c20537570706c,
                    mem[209 len 19]
    sub_206c9d97 = 10^9 * arg1
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor19 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor20 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function includeAccount(address arg1) {
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

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7957652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[198 len 30]
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
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _138 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_138 + idx + 68] = mem[_133 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_138 + 68] = mem[_138 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _138 + -mem[64] + 100
                require totalSupply
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_178 + idx + 68] = mem[_166 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] > s:
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = 26
                mem[_141 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _148 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_148 + idx + 68] = mem[_141 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_148 + 68] = mem[_148 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _148 + -mem[64] + 100
                require totalSupply
                _184 = mem[64]
                mem[64] = mem[64] + 64
                mem[_184] = 26
                mem[_184 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_191 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 68] = mem[_191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 3
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 30
            mem[_137 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor8[idx]] > t:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_142 + idx + 68] = mem[_137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 68] = mem[_142 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 30
            mem[_167 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor8[idx]] <= s:
                idx = idx + 1
                s = s - stor4[stor8[idx]]
                t = t - stor3[stor8[idx]]
                continue 
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_181 + idx + 68] = mem[_167 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 70 len 30]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
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

function manualSwap() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(this.address)]:
        Mask(96, 0, stor22.field_160) = 1
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not this.address:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not uniswapV2RouterAddress:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(this.address)][stor21] = stor4[address(this.address)]
        emit Approval(stor4[address(this.address)], this.address, uniswapV2RouterAddress);
        mem[388 len 0] = None
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor4[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    else:
        mem[0] = this.address
        mem[32] = 3
        if stor3[address(this.address)] > stor10:
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
                _217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_217] = 26
                mem[_217 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_222 + idx + 68] = mem[_217 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_222 + 68] = mem[_222 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _222 + -mem[64] + 100
                require totalSupply
                _250 = mem[64]
                mem[64] = mem[64] + 64
                mem[_250] = 26
                mem[_250 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _262 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_262 + idx + 68] = mem[_250 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_262 + 68] = mem[_262 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _262 + -mem[64] + 100
                require stor10 / totalSupply
                Mask(96, 0, stor22.field_160) = 1
                _302 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_302]
                mem[_302 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_302]
                mem[_302 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[_302 + 200 len 28]
                if not uniswapV2RouterAddress:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[_302 + 198 len 30]
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 5)
                allowance[address(this.address)][stor21] = stor3[address(this.address)] / stor10 / totalSupply
                emit Approval((stor3[address(this.address)] / stor10 / totalSupply), this.address, uniswapV2RouterAddress);
                mem[_302 + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_302 + 100] = stor3[address(this.address)] / stor10 / totalSupply
                mem[_302 + 132] = 0
                mem[_302 + 196] = this.address
                mem[_302 + 228] = block.timestamp
                mem[_302 + 164] = 160
                mem[_302 + 260] = mem[_302]
                idx = 0
                while idx < 32 * mem[_302]:
                    mem[_302 + idx + 292] = mem[_302 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor3[address(this.address)] / stor10 / totalSupply, 0, 160, address(this.address), block.timestamp, mem[_302 + 260 len (32 * mem[_302]) + 32]
            else:
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_221] = 30
                    mem[_221 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_226 + idx + 68] = mem[_221 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_226 + 68] = mem[_226 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _226 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_251] = 30
                    mem[_251 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _265 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_265 + idx + 68] = mem[_251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_265 + 68] = mem[_265 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _265 + -mem[64] + 100
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_232 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 68] = mem[_232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                require totalSupply
                _268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_268] = 26
                mem[_268 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_275 + idx + 68] = mem[_268 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_275 + 68] = mem[_275 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _275 + -mem[64] + 100
                require stor10 / totalSupply
                Mask(96, 0, stor22.field_160) = 1
                _304 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_304]
                mem[_304 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 < mem[_304]
                mem[_304 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[_304 + 200 len 28]
                if not uniswapV2RouterAddress:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[_304 + 198 len 30]
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 5)
                allowance[address(this.address)][stor21] = stor3[address(this.address)] / stor10 / totalSupply
                emit Approval((stor3[address(this.address)] / stor10 / totalSupply), this.address, uniswapV2RouterAddress);
                mem[_304 + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_304 + 100] = stor3[address(this.address)] / stor10 / totalSupply
                mem[_304 + 132] = 0
                mem[_304 + 196] = this.address
                mem[_304 + 228] = block.timestamp
                mem[_304 + 164] = 160
                mem[_304 + 260] = mem[_304]
                idx = 0
                while idx < 32 * mem[_304]:
                    mem[_304 + idx + 292] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor3[address(this.address)] / stor10 / totalSupply, 0, 160, address(this.address), block.timestamp, mem[_304 + 260 len (32 * mem[_304]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor22.field_160) = 0
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 26
        mem[_206 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor10 / totalSupply:
            _229 = mem[64]
            mem[64] = mem[64] + 64
            mem[_229] = 26
            mem[_229 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            Mask(96, 0, stor22.field_160) = 1
            _307 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_307]
            mem[_307 + 32] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[_307]
            mem[_307 + 64] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[_307 + 200 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[_307 + 198 len 30]
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 5)
            allowance[address(this.address)][stor21] = stor3[address(this.address)] / t / s
            emit Approval((stor3[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
            mem[_307 + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[_307 + 100] = stor3[address(this.address)] / t / s
            mem[_307 + 132] = 0
            mem[_307 + 196] = this.address
            mem[_307 + 228] = block.timestamp
            mem[_307 + 164] = 160
            mem[_307 + 260] = mem[_307]
            mem[_307 + 292 len floor32(mem[_307])] = mem[_307 + 32 len floor32(mem[_307])]
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor3[address(this.address)] / t / s, 0, 160, address(this.address), block.timestamp, mem[_307 + 260 len (32 * mem[_307]) + 32]
        else:
            _230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_230] = 26
            mem[_230 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            _272 = mem[64]
            mem[64] = mem[64] + 64
            mem[_272] = 26
            mem[_272 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor10 / totalSupply
            Mask(96, 0, stor22.field_160) = 1
            _308 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_308]
            mem[_308 + 32] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[_308]
            mem[_308 + 64] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[_308 + 200 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[_308 + 198 len 30]
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 5)
            allowance[address(this.address)][stor21] = stor3[address(this.address)] / stor10 / totalSupply
            emit Approval((stor3[address(this.address)] / stor10 / totalSupply), this.address, uniswapV2RouterAddress);
            mem[_308 + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[_308 + 100] = stor3[address(this.address)] / stor10 / totalSupply
            mem[_308 + 132] = 0
            mem[_308 + 196] = this.address
            mem[_308 + 228] = block.timestamp
            mem[_308 + 164] = 160
            mem[_308 + 260] = mem[_308]
            mem[_308 + 292 len floor32(mem[_308])] = mem[_308 + 32 len floor32(mem[_308])]
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor3[address(this.address)] / stor10 / totalSupply, 0, 160, address(this.address), block.timestamp, mem[_308 + 260 len (32 * mem[_308]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor22.field_160) = 0
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
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
                    _1706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1706] = 26
                    mem[_1706 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1729 + idx + 68] = mem[_1706 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1729 + 68] = mem[_1729 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1729 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        _1948 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1948] = 30
                        mem[_1948 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2084] = 30
                        mem[_2084 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2187 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2187 + idx + 68] = mem[_2084 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2187 + 68] = mem[_2187 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2187 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2366] = 30
                        mem[_2366 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2507 + idx + 68] = mem[_2366 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2507 + 68] = mem[_2507 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2507 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1965] = 30
                    mem[_1965 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2009 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2009 + idx + 68] = mem[_1965 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2009 + 68] = mem[_2009 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2009 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2186 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2186] = 30
                    mem[_2186 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2316 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2316 + idx + 68] = mem[_2186 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2316 + 68] = mem[_2316 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2316 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2504] = 30
                    mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2673 + idx + 68] = mem[_2504 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2673 + 68] = mem[_2673 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2673 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1716] = 30
                    mem[_1716 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1742 + idx + 68] = mem[_1716 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1742 + 68] = mem[_1742 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1742 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1841] = 30
                    mem[_1841 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1882 + idx + 68] = mem[_1841 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1882 + 68] = mem[_1882 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1882 + -mem[64] + 100
                _1732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1732] = 26
                mem[_1732 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1766 + idx + 68] = mem[_1732 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1766 + 68] = mem[_1766 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1766 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _1966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1966] = 30
                    mem[_1966 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2192 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2192] = 30
                    mem[_2192 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2322 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2322 + idx + 68] = mem[_2192 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2322 + 68] = mem[_2322 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2322 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2510] = 30
                    mem[_2510 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2680 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2680 + idx + 68] = mem[_2510 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2680 + 68] = mem[_2680 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2680 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2012] = 30
                mem[_2012 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _2066 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2066 + idx + 68] = mem[_2012 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2066 + 68] = mem[_2066 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2066 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _2321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2321] = 30
                mem[_2321 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _2458 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2458 + idx + 68] = mem[_2321 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2458 + 68] = mem[_2458 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2458 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _2677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2677] = 30
                mem[_2677 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2855 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2855 + idx + 68] = mem[_2677 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2855 + 68] = mem[_2855 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2855 + -mem[64] + 100
            _1653 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1653] = 26
            mem[_1653 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1763 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1763] = 26
                mem[_1763 + 32] = 'SafeMath: division by zero'
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
                _1764 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1764] = 26
                mem[_1764 + 32] = 'SafeMath: division by zero'
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
            if arg1 * stor16 / arg1 != stor16:
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
            if arg1 * stor16 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _1701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1701] = 26
                    mem[_1701 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1725 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1725 + idx + 68] = mem[_1701 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1725 + 68] = mem[_1725 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1725 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        _1947 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1947] = 30
                        mem[_1947 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2081 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2081] = 30
                        mem[_2081 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2180 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2180 + idx + 68] = mem[_2081 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2180 + 68] = mem[_2180 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2180 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2359] = 30
                        mem[_2359 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2498 + idx + 68] = mem[_2359 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2498 + 68] = mem[_2498 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2498 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1963] = 30
                    mem[_1963 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2003 + idx + 68] = mem[_1963 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2003 + 68] = mem[_2003 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2003 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2179] = 30
                    mem[_2179 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2301 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2301 + idx + 68] = mem[_2179 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2301 + 68] = mem[_2301 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2301 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2495] = 30
                    mem[_2495 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2657 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2657 + idx + 68] = mem[_2495 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2657 + 68] = mem[_2657 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2657 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1714] = 30
                    mem[_1714 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1739 + idx + 68] = mem[_1714 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1739 + 68] = mem[_1739 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1739 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1837] = 30
                    mem[_1837 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1875 + idx + 68] = mem[_1837 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1875 + 68] = mem[_1875 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1875 + -mem[64] + 100
                _1728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1728] = 26
                mem[_1728 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1760 + idx + 68] = mem[_1728 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1760 + 68] = mem[_1760 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1760 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _1964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1964] = 30
                    mem[_1964 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2185] = 30
                    mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2307 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2307 + idx + 68] = mem[_2185 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2307 + 68] = mem[_2307 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2307 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2501] = 30
                    mem[_2501 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2664 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2664 + idx + 68] = mem[_2501 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2664 + 68] = mem[_2664 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2664 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2006] = 30
                mem[_2006 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _2059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2059 + idx + 68] = mem[_2006 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2059 + 68] = mem[_2059 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2059 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _2306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2306] = 30
                mem[_2306 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _2442 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2442 + idx + 68] = mem[_2306 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2442 + 68] = mem[_2442 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2442 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _2661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2661] = 30
                mem[_2661 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2835 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2835 + idx + 68] = mem[_2661 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2835 + 68] = mem[_2835 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2835 + -mem[64] + 100
            _1646 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1646] = 26
            mem[_1646 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1757] = 26
                mem[_1757 + 32] = 'SafeMath: division by zero'
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
                _1758 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1758] = 26
                mem[_1758 + 32] = 'SafeMath: division by zero'
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
        if arg1 * stor15 / arg1 != stor15:
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
            if arg1 * stor15 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor15 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _1696 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1696] = 26
                    mem[_1696 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1721 + idx + 68] = mem[_1696 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1721 + 68] = mem[_1721 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1721 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            _1946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1946] = 30
                            mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2078 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2078] = 30
                            mem[_2078 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2171 + idx + 68] = mem[_2078 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2171 + 68] = mem[_2171 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2171 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2350 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2350] = 30
                            mem[_2350 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2489 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2489 + idx + 68] = mem[_2350 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2489 + 68] = mem[_2489 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2489 + -mem[64] + 100
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1961] = 30
                        mem[_1961 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            _1996 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1996 + idx + 68] = mem[_1961 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1996 + 68] = mem[_1996 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1996 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2170] = 30
                        mem[_2170 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2283 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2283 + idx + 68] = mem[_2170 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2283 + 68] = mem[_2283 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2283 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2638 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2638 + idx + 68] = mem[_2486 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2638 + 68] = mem[_2638 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2638 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _1960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1960] = 30
                        mem[_1960 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _1993 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1993 + idx + 68] = mem[_1960 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1993 + 68] = mem[_1993 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1993 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2169] = 30
                        mem[_2169 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _2280 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2280 + idx + 68] = mem[_2169 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2280 + 68] = mem[_2280 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2280 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _2483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2483] = 30
                        mem[_2483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2635 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2635 + idx + 68] = mem[_2483 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2635 + 68] = mem[_2635 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2635 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1992] = 30
                    mem[_1992 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2042 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2042 + idx + 68] = mem[_1992 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2042 + 68] = mem[_2042 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2042 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2279 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2279] = 30
                    mem[_2279 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2414 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2414 + idx + 68] = mem[_2279 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2414 + 68] = mem[_2414 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2414 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2632] = 30
                    mem[_2632 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2801 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2801 + idx + 68] = mem[_2632 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2801 + 68] = mem[_2801 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2801 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1712] = 30
                    mem[_1712 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1736 + idx + 68] = mem[_1712 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1736 + 68] = mem[_1736 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1736 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1833] = 30
                    mem[_1833 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1868 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1868 + idx + 68] = mem[_1833 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1868 + 68] = mem[_1868 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1868 + -mem[64] + 100
                _1724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1724] = 26
                mem[_1724 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1754 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1754 + idx + 68] = mem[_1724 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1754 + 68] = mem[_1754 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1754 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        _1962 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1962] = 30
                        mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2178] = 30
                        mem[_2178 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2292 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2292 + idx + 68] = mem[_2178 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2292 + 68] = mem[_2292 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2292 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2492] = 30
                        mem[_2492 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2648 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2648 + idx + 68] = mem[_2492 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2648 + 68] = mem[_2648 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2648 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2000] = 30
                    mem[_2000 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                        _2052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2052 + idx + 68] = mem[_2000 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2052 + 68] = mem[_2052 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2052 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2291] = 30
                    mem[_2291 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2426 + idx + 68] = mem[_2291 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2426 + 68] = mem[_2426 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2426 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2645] = 30
                    mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2815 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2815 + idx + 68] = mem[_2645 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2815 + 68] = mem[_2815 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2815 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _1999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1999] = 30
                    mem[_1999 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2049 + idx + 68] = mem[_1999 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2049 + 68] = mem[_2049 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2049 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2290] = 30
                    mem[_2290 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2423 + idx + 68] = mem[_2290 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2423 + 68] = mem[_2423 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2423 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2642] = 30
                    mem[_2642 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2812 + idx + 68] = mem[_2642 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2812 + 68] = mem[_2812 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2812 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2048 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2048] = 30
                mem[_2048 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _2129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2129 + idx + 68] = mem[_2048 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2129 + 68] = mem[_2129 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2129 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _2422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2422] = 30
                mem[_2422 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _2565 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2565 + idx + 68] = mem[_2422 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2565 + 68] = mem[_2565 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2565 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _2809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2809] = 30
                mem[_2809 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2963 + idx + 68] = mem[_2809 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2963 + 68] = mem[_2963 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2963 + -mem[64] + 100
            _1639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1639] = 26
            mem[_1639 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1751 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1751] = 26
                mem[_1751 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * stor15 / 100:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _1752 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1752] = 26
                mem[_1752 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * stor15 / 100:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            require arg1
            if arg1 * stor16 / arg1 != stor16:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor15 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor16 / 100 > arg1 - (arg1 * stor15 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _1691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1691] = 26
                    mem[_1691 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1717 + idx + 68] = mem[_1691 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1717 + 68] = mem[_1717 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1717 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            _1945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1945] = 30
                            mem[_1945 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2073] = 30
                            mem[_2073 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2159 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2159 + idx + 68] = mem[_2073 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2159 + 68] = mem[_2159 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2159 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2335 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2335] = 30
                            mem[_2335 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2473 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2473 + idx + 68] = mem[_2335 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2473 + 68] = mem[_2473 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2473 + -mem[64] + 100
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = 30
                        mem[_1958 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            _1985 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1985 + idx + 68] = mem[_1958 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1985 + 68] = mem[_1985 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1985 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2158] = 30
                        mem[_2158 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2257 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2257 + idx + 68] = mem[_2158 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2257 + 68] = mem[_2257 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2257 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2470] = 30
                        mem[_2470 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2613 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2613 + idx + 68] = mem[_2470 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2613 + 68] = mem[_2613 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2613 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _1957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1957] = 30
                        mem[_1957 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _1982 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1982 + idx + 68] = mem[_1957 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1982 + 68] = mem[_1982 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1982 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2157] = 30
                        mem[_2157 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _2254 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2254 + idx + 68] = mem[_2157 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2254 + 68] = mem[_2254 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2254 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _2467 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2467] = 30
                        mem[_2467 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2610 + idx + 68] = mem[_2467 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2610 + 68] = mem[_2610 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2610 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1981] = 30
                    mem[_1981 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _2025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2025 + idx + 68] = mem[_1981 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2025 + 68] = mem[_2025 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2025 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2253] = 30
                    mem[_2253 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2383 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2383 + idx + 68] = mem[_2253 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2383 + 68] = mem[_2383 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2383 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2607] = 30
                    mem[_2607 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2765 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2765 + idx + 68] = mem[_2607 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2765 + 68] = mem[_2765 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2765 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1710] = 30
                    mem[_1710 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1733 + idx + 68] = mem[_1710 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1733 + 68] = mem[_1733 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1733 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1829] = 30
                    mem[_1829 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1861 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1861 + idx + 68] = mem[_1829 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1861 + 68] = mem[_1861 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1861 + -mem[64] + 100
                _1720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1720] = 26
                mem[_1720 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1748 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1748 + idx + 68] = mem[_1720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1748 + 68] = mem[_1748 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1748 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        _1959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1959] = 30
                        mem[_1959 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2166] = 30
                        mem[_2166 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2266 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2266 + idx + 68] = mem[_2166 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2266 + 68] = mem[_2266 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2266 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2476 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2476] = 30
                        mem[_2476 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2623 + idx + 68] = mem[_2476 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2623 + 68] = mem[_2623 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2623 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1989] = 30
                    mem[_1989 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                        _2035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2035 + idx + 68] = mem[_1989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2035 + 68] = mem[_2035 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2035 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2265] = 30
                    mem[_2265 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2395 + idx + 68] = mem[_2265 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2395 + 68] = mem[_2395 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2395 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2620] = 30
                    mem[_2620 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2779 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2779 + idx + 68] = mem[_2620 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2779 + 68] = mem[_2779 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2779 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _1988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1988] = 30
                    mem[_1988 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _2032 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2032 + idx + 68] = mem[_1988 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2032 + 68] = mem[_2032 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2032 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 30
                    mem[_2264 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _2392 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2392 + idx + 68] = mem[_2264 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2392 + 68] = mem[_2392 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2392 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _2617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2617] = 30
                    mem[_2617 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2776 + idx + 68] = mem[_2617 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 68] = mem[_2776 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2031 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2031] = 30
                mem[_2031 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _2104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2104 + idx + 68] = mem[_2031 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2104 + 68] = mem[_2104 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2104 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _2391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2391] = 30
                mem[_2391 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _2535 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2535 + idx + 68] = mem[_2391 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2535 + 68] = mem[_2535 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2535 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _2773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2773] = 30
                mem[_2773 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2928 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2928 + idx + 68] = mem[_2773 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2928 + 68] = mem[_2928 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2928 + -mem[64] + 100
            _1632 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1632] = 26
            mem[_1632 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1745] = 26
                mem[_1745 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * stor15 / 100:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _1746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1746] = 26
                mem[_1746 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * stor15 / 100:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
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
