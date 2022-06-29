contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
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
    if arg1 > 99:
        revert with 0, 'taxFee should be in 1 - 25'
    stor15 = arg1
}

function _setTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 'teamFee should be in 1 - 25'
    if arg1 > 99:
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
                        _1662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1662] = 26
                        mem[_1662 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1713 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1713 + idx + 68] = mem[_1662 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1713 + 68] = mem[_1713 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1713 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2189] = 30
                        mem[_2189 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2255 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2255 + idx + 68] = mem[_2189 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2255 + 68] = mem[_2255 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2255 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] > s:
                        _1716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1716] = 26
                        mem[_1716 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1778 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1778 + idx + 68] = mem[_1716 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1778 + 68] = mem[_1778 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1778 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2258] = 30
                        mem[_2258 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2350 + idx + 68] = mem[_2258 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2350 + 68] = mem[_2350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2350 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1692] = 30
                    mem[_1692 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1742 + idx + 68] = mem[_1692 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1742 + 68] = mem[_1742 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1742 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1937] = 30
                    mem[_1937 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2006 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2006 + idx + 68] = mem[_1937 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2006 + 68] = mem[_2006 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2006 + -mem[64] + 100
                _1552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1552] = 26
                mem[_1552 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor10 / totalSupply:
                    _1775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1775] = 26
                    mem[_1775 + 32] = 'SafeMath: division by zero'
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
                _1776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1776] = 26
                mem[_1776 + 32] = 'SafeMath: division by zero'
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
                        _1657 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1657] = 26
                        mem[_1657 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1709 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1709 + idx + 68] = mem[_1657 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1709 + 68] = mem[_1709 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1709 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2187] = 30
                        mem[_2187 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2249 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2249 + idx + 68] = mem[_2187 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2249 + 68] = mem[_2249 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2249 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] > s:
                        _1712 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1712] = 26
                        mem[_1712 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1772 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1772 + idx + 68] = mem[_1712 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1772 + 68] = mem[_1772 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1772 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2252] = 30
                        mem[_2252 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2344 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2344 + idx + 68] = mem[_2252 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2344 + 68] = mem[_2344 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2344 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1690 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1690] = 30
                    mem[_1690 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1739 + idx + 68] = mem[_1690 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1739 + 68] = mem[_1739 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1739 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1933] = 30
                    mem[_1933 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1999 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1999 + idx + 68] = mem[_1933 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1999 + 68] = mem[_1999 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1999 + -mem[64] + 100
                _1545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1545] = 26
                mem[_1545 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor10 / totalSupply:
                    _1769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1769] = 26
                    mem[_1769 + 32] = 'SafeMath: division by zero'
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
                _1770 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1770] = 26
                mem[_1770 + 32] = 'SafeMath: division by zero'
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
                    _1652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1652] = 26
                    mem[_1652 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1705 + idx + 68] = mem[_1652 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1705 + 68] = mem[_1705 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1705 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            return 0
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2185] = 30
                        mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
                        _2242 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2242 + idx + 68] = mem[_2185 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2242 + 68] = mem[_2242 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2242 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _2184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2184] = 30
                        mem[_2184 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2239 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2239 + idx + 68] = mem[_2184 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2239 + 68] = mem[_2239 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2239 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2238] = 30
                    mem[_2238 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
                    _2329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2329 + idx + 68] = mem[_2238 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2329 + 68] = mem[_2329 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2329 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1688] = 30
                    mem[_1688 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1736 + idx + 68] = mem[_1688 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1736 + 68] = mem[_1736 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1736 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1929] = 30
                    mem[_1929 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1992 + idx + 68] = mem[_1929 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1992 + 68] = mem[_1992 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1992 + -mem[64] + 100
                _1708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1708] = 26
                mem[_1708 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1766 + idx + 68] = mem[_1708 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1766 + 68] = mem[_1766 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1766 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 30
                    mem[_2246 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
                    _2338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2338 + idx + 68] = mem[_2246 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2338 + 68] = mem[_2338 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2338 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _2245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2245] = 30
                    mem[_2245 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2335 + idx + 68] = mem[_2245 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2335 + 68] = mem[_2335 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2335 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2334] = 30
                mem[_2334 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
                _2464 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2464 + idx + 68] = mem[_2334 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2464 + 68] = mem[_2464 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2464 + -mem[64] + 100
            _1538 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1538] = 26
            mem[_1538 + 32] = 'SafeMath: division by zero'
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
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * stor15 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * stor15 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * stor15 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * stor15 / 100 * t / s))
            _1764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1764] = 26
            mem[_1764 + 32] = 'SafeMath: division by zero'
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
                    _1647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1647] = 26
                    mem[_1647 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1701 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1701 + idx + 68] = mem[_1647 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1701 + 68] = mem[_1701 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1701 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            return 0
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2182 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2182] = 30
                        mem[_2182 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
                        _2231 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2231 + idx + 68] = mem[_2182 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2231 + 68] = mem[_2231 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2231 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _2181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2181] = 30
                        mem[_2181 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2228 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2228 + idx + 68] = mem[_2181 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2228 + 68] = mem[_2228 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2228 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2227] = 30
                    mem[_2227 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
                    _2313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2313 + idx + 68] = mem[_2227 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2313 + 68] = mem[_2313 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2313 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1686 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1686] = 30
                    mem[_1686 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1733 + idx + 68] = mem[_1686 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1733 + 68] = mem[_1733 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1733 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1925 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1925] = 30
                    mem[_1925 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _1985 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1985 + idx + 68] = mem[_1925 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1985 + 68] = mem[_1985 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1985 + -mem[64] + 100
                _1704 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1704] = 26
                mem[_1704 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1760 + idx + 68] = mem[_1704 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1760 + 68] = mem[_1760 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1760 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2235] = 30
                    mem[_2235 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
                    _2322 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2322 + idx + 68] = mem[_2235 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2322 + 68] = mem[_2322 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2322 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _2234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2234] = 30
                    mem[_2234 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2319 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2319 + idx + 68] = mem[_2234 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2319 + 68] = mem[_2319 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2319 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2318] = 30
                mem[_2318 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
                _2440 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2440 + idx + 68] = mem[_2318 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2440 + 68] = mem[_2440 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2440 + -mem[64] + 100
            _1531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1531] = 26
            mem[_1531 + 32] = 'SafeMath: division by zero'
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
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * stor15 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * stor15 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * t / s / arg1 * stor15 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * stor15 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * stor15 / 100 * t / s))
            _1758 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1758] = 26
            mem[_1758 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * stor15 / 100:
                return 0
            require arg1 * stor15 / 100
            if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
        require arg1
        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * stor15 / 100:
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor10 / totalSupply)
        require arg1 * stor15 / 100
        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
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
                    _1682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1682] = 26
                    mem[_1682 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1729 + idx + 68] = mem[_1682 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1729 + 68] = mem[_1729 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1729 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2199] = 30
                    mem[_2199 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2289 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2289 + idx + 68] = mem[_2199 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2289 + 68] = mem[_2289 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2289 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] > s:
                    _1732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1732] = 26
                    mem[_1732 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1802 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1802 + idx + 68] = mem[_1732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1802 + 68] = mem[_1802 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1802 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2292] = 30
                    mem[_2292 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2394 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2394 + idx + 68] = mem[_2292 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2394 + 68] = mem[_2394 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2394 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _1700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1700] = 30
                mem[_1700 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _1754 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1754 + idx + 68] = mem[_1700 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1754 + 68] = mem[_1754 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1754 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _1953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1953] = 30
                mem[_1953 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _2034 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2034 + idx + 68] = mem[_1953 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2034 + 68] = mem[_2034 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2034 + -mem[64] + 100
            _1578 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1578] = 26
            mem[_1578 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1799] = 26
                mem[_1799 + 32] = 'SafeMath: division by zero'
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
            _1800 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1800] = 26
            mem[_1800 + 32] = 'SafeMath: division by zero'
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
                    _1677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1677] = 26
                    mem[_1677 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1725 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1725 + idx + 68] = mem[_1677 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1725 + 68] = mem[_1725 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1725 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2197] = 30
                    mem[_2197 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2283 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2283 + idx + 68] = mem[_2197 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2283 + 68] = mem[_2283 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2283 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] > s:
                    _1728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1728] = 26
                    mem[_1728 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1796 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1796 + idx + 68] = mem[_1728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1796 + 68] = mem[_1796 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1796 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2286 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2286] = 30
                    mem[_2286 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2388 + idx + 68] = mem[_2286 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2388 + 68] = mem[_2388 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2388 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _1698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1698] = 30
                mem[_1698 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _1751 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1751 + idx + 68] = mem[_1698 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1751 + 68] = mem[_1751 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1751 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _1949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1949] = 30
                mem[_1949 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _2027 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2027 + idx + 68] = mem[_1949 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2027 + 68] = mem[_2027 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2027 + -mem[64] + 100
            _1571 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1571] = 26
            mem[_1571 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1793] = 26
                mem[_1793 + 32] = 'SafeMath: division by zero'
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
            _1794 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1794] = 26
            mem[_1794 + 32] = 'SafeMath: division by zero'
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
                    _1672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1672] = 26
                    mem[_1672 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1721 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1721 + idx + 68] = mem[_1672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1721 + 68] = mem[_1721 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1721 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            return 0
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2195] = 30
                        mem[_2195 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _2276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2276 + idx + 68] = mem[_2195 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2276 + 68] = mem[_2276 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2276 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _2194 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2194] = 30
                        mem[_2194 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2273 + idx + 68] = mem[_2194 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2273 + 68] = mem[_2273 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2273 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2272] = 30
                    mem[_2272 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2373 + idx + 68] = mem[_2272 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2373 + 68] = mem[_2373 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2373 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1696 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1696] = 30
                    mem[_1696 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1748 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1748 + idx + 68] = mem[_1696 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1748 + 68] = mem[_1748 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1748 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1945] = 30
                    mem[_1945 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2020 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2020 + idx + 68] = mem[_1945 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2020 + 68] = mem[_2020 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2020 + -mem[64] + 100
                _1724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1724] = 26
                mem[_1724 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1790 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1790 + idx + 68] = mem[_1724 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1790 + 68] = mem[_1790 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1790 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2280] = 30
                    mem[_2280 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                        return 0
                    _2382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2382 + idx + 68] = mem[_2280 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2382 + 68] = mem[_2382 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2382 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _2279 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2279] = 30
                    mem[_2279 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2379 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2379 + idx + 68] = mem[_2279 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2379 + 68] = mem[_2379 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2379 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2378 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2378] = 30
                mem[_2378 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return (arg1 * stor10 / totalSupply)
                _2532 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2532 + idx + 68] = mem[_2378 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2532 + 68] = mem[_2532 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2532 + -mem[64] + 100
            _1564 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1564] = 26
            mem[_1564 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1787] = 26
                mem[_1787 + 32] = 'SafeMath: division by zero'
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
                        else:
                            return 0
                    else:
                        return 0
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
                return (arg1 * t / s)
            _1788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1788] = 26
            mem[_1788 + 32] = 'SafeMath: division by zero'
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
                    _1667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1667] = 26
                    mem[_1667 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1717 + idx + 68] = mem[_1667 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1717 + 68] = mem[_1717 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1717 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * stor15 / 100:
                            return 0
                        require arg1 * stor15 / 100
                        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2192] = 30
                        mem[_2192 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _2265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2265 + idx + 68] = mem[_2192 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2265 + 68] = mem[_2265 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2265 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * stor15 / 100:
                        _2191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2191] = 30
                        mem[_2191 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _2262 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2262 + idx + 68] = mem[_2191 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2262 + 68] = mem[_2262 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2262 + -mem[64] + 100
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2261] = 30
                    mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2357 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2357 + idx + 68] = mem[_2261 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2357 + 68] = mem[_2357 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2357 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _1694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1694] = 30
                    mem[_1694 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _1745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1745 + idx + 68] = mem[_1694 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1745 + 68] = mem[_1745 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1745 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _1941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1941] = 30
                    mem[_1941 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2013 + idx + 68] = mem[_1941 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2013 + 68] = mem[_2013 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2013 + -mem[64] + 100
                _1720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1720] = 26
                mem[_1720 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1784 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1784 + idx + 68] = mem[_1720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1784 + 68] = mem[_1784 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1784 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * stor15 / 100:
                        return 0
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2269] = 30
                    mem[_2269 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor15 / 100 * stor10 / totalSupply <= 0:
                        return 0
                    _2366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2366 + idx + 68] = mem[_2269 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2366 + 68] = mem[_2366 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2366 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * stor15 / 100:
                    _2268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2268] = 30
                    mem[_2268 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _2363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2363 + idx + 68] = mem[_2268 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2363 + 68] = mem[_2363 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2363 + -mem[64] + 100
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2362] = 30
                mem[_2362 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor15 / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return (arg1 * stor10 / totalSupply)
                _2508 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2508 + idx + 68] = mem[_2362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2508 + 68] = mem[_2508 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2508 + -mem[64] + 100
            _1557 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1557] = 26
            mem[_1557 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _1781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1781] = 26
                mem[_1781 + 32] = 'SafeMath: division by zero'
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
                        else:
                            return 0
                    else:
                        return 0
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
                return (arg1 * t / s)
            _1782 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1782] = 26
            mem[_1782 + 32] = 'SafeMath: division by zero'
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
                else:
                    return 0
            else:
                return 0
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
    return (arg1 * stor10 / totalSupply)
}



}
