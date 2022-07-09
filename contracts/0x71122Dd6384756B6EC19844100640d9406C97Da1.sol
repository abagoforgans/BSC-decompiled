contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - burnOwnerTokens(address arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 totalSupply;
uint256 stor7;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 transfertimeout; offset 8
uint256 _maxTxAmount;
address uniswapPairAddress;
mapping of uint256 lastBuy;

function name() payable {
    return name[0 len name.length]
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function transfertimeout() payable {
    return transfertimeout
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastBuy(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastBuy[arg1]
}

function uniswapPair() payable {
    return uniswapPairAddress
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setUniswapPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapPairAddress = arg1
}

function transferOwnership(address arg1) payable {
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

function setMaxTxPercent(uint256 arg1) payable {
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

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        stor5[idx] = stor5[stor5.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        require stor5.length
        stor5[stor5.length] = 0
        stor5.length--
}

function approve(address arg1, uint256 arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function increaseAllowance(address arg1, uint256 arg2) payable {
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
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
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
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
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
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
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
        if t >= stor7 / totalSupply:
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
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
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
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
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
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
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
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
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
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor1[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
    revert
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
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
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
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
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
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
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
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
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
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
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 30
            mem[_165 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
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
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor7 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7 / totalSupply
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less =than supply'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if arg2:
        if not arg1 / 100:
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_788] = 26
                    mem[_788 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _813 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_813 + idx + 68] = mem[_788 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_813 + 68] = mem[_813 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _813 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1052 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1052] = 30
                    mem[_1052 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _1084 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1084 + idx + 68] = mem[_1052 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1084 + 68] = mem[_1084 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1084 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_816] = 26
                    mem[_816 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_846 + idx + 68] = mem[_816 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_846 + 68] = mem[_846 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _846 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1087 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1087] = 30
                    mem[_1087 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _1132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1132 + idx + 68] = mem[_1087 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1132 + 68] = mem[_1132 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1132 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _804 = mem[64]
                mem[64] = mem[64] + 64
                mem[_804] = 30
                mem[_804 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _828 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_828 + idx + 68] = mem[_804 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_828 + 68] = mem[_828 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _828 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _925 = mem[64]
                mem[64] = mem[64] + 64
                mem[_925] = 30
                mem[_925 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _960 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_960 + idx + 68] = mem[_925 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_960 + 68] = mem[_960 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _960 + -mem[64] + 100
            _738 = mem[64]
            mem[64] = mem[64] + 64
            mem[_738] = 26
            mem[_738 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_843] = 26
                mem[_843 + 32] = 'SafeMath: division by zero'
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
            _844 = mem[64]
            mem[64] = mem[64] + 64
            mem[_844] = 26
            mem[_844 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / totalSupply)
        require arg1 / 100
        if 4 * arg1 / 100 / arg1 / 100 != 4:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 4 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_783] = 26
                mem[_783 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_809 + idx + 68] = mem[_783 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_809 + 68] = mem[_809 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _809 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not Mask(254, 0, arg1 / 100):
                        return 0
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1050] = 30
                    mem[_1050 + 32] = 'SafeMath: subtraction overflow'
                    if 4 * arg1 / 100 * stor7 / totalSupply <= 0:
                        return (-1 * 4 * arg1 / 100 * stor7 / totalSupply)
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1077 + idx + 68] = mem[_1050 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg1 / 100):
                    _1049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1049] = 30
                    mem[_1049 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _1074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1074 + idx + 68] = mem[_1049 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1074 + 68] = mem[_1074 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1074 + -mem[64] + 100
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1073] = 30
                mem[_1073 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    return ((arg1 * stor7 / totalSupply) - (4 * arg1 / 100 * stor7 / totalSupply))
                _1117 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1117 + idx + 68] = mem[_1073 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1117 + 68] = mem[_1117 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1117 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_802] = 30
                mem[_802 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_825 + idx + 68] = mem[_802 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_825 + 68] = mem[_825 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _825 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _921 = mem[64]
                mem[64] = mem[64] + 64
                mem[_921] = 30
                mem[_921 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _953 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_953 + idx + 68] = mem[_921 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_953 + 68] = mem[_953 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _953 + -mem[64] + 100
            _812 = mem[64]
            mem[64] = mem[64] + 64
            mem[_812] = 26
            mem[_812 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _840 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_840 + idx + 68] = mem[_812 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_840 + 68] = mem[_840 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _840 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not Mask(254, 0, arg1 / 100):
                    return 0
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1081] = 30
                mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply <= 0:
                    return (-1 * 4 * arg1 / 100 * stor7 / totalSupply)
                _1126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1126 + idx + 68] = mem[_1081 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1126 + 68] = mem[_1126 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1126 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg1 / 100):
                _1080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1080] = 30
                mem[_1080 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _1123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1123 + idx + 68] = mem[_1080 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1123 + 68] = mem[_1123 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1123 + -mem[64] + 100
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1122] = 30
            mem[_1122 + 32] = 'SafeMath: subtraction overflow'
            if 4 * arg1 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                return ((arg1 * stor7 / totalSupply) - (4 * arg1 / 100 * stor7 / totalSupply))
            _1188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1188 + idx + 68] = mem[_1122 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1188 + 68] = mem[_1188 + 70 len 30]
            revert with memory
              from mem[64]
               len _1188 + -mem[64] + 100
        _733 = mem[64]
        mem[64] = mem[64] + 64
        mem[_733] = 26
        mem[_733 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _837 = mem[64]
            mem[64] = mem[64] + 64
            mem[_837] = 26
            mem[_837 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not Mask(254, 0, arg1 / 100):
                    return 0
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * arg1 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * 4 * arg1 / 100 * t / s)
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg1 / 100):
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 4 * arg1 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (4 * arg1 / 100 * t / s))
        _838 = mem[64]
        mem[64] = mem[64] + 64
        mem[_838] = 26
        mem[_838 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not Mask(254, 0, arg1 / 100):
                return 0
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 4 * arg1 / 100 * stor7 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 4 * arg1 / 100 * stor7 / totalSupply)
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(254, 0, arg1 / 100):
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / totalSupply)
        require 4 * arg1 / 100
        if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 4 * arg1 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor7 / totalSupply) - (4 * arg1 / 100 * stor7 / totalSupply))
    if not arg1 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_798] = 26
                mem[_798 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _821 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_821 + idx + 68] = mem[_798 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_821 + 68] = mem[_821 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _821 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1057 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1057] = 30
                mem[_1057 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _1101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1101 + idx + 68] = mem[_1057 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1101 + 68] = mem[_1101 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1101 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_824] = 26
                mem[_824 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_858 + idx + 68] = mem[_824 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_858 + 68] = mem[_858 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _858 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1104] = 30
                mem[_1104 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _1154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1154 + idx + 68] = mem[_1104 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1154 + 68] = mem[_1154 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1154 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _808 = mem[64]
            mem[64] = mem[64] + 64
            mem[_808] = 30
            mem[_808 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _834 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_834 + idx + 68] = mem[_808 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_834 + 68] = mem[_834 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _834 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _933 = mem[64]
            mem[64] = mem[64] + 64
            mem[_933] = 30
            mem[_933 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _974 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_974 + idx + 68] = mem[_933 + idx + 32]
                idx = idx + 32
                continue 
            mem[_974 + 68] = mem[_974 + 70 len 30]
            revert with memory
              from mem[64]
               len _974 + -mem[64] + 100
        _748 = mem[64]
        mem[64] = mem[64] + 64
        mem[_748] = 26
        mem[_748 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _855 = mem[64]
            mem[64] = mem[64] + 64
            mem[_855] = 26
            mem[_855 + 32] = 'SafeMath: division by zero'
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
        _856 = mem[64]
        mem[64] = mem[64] + 64
        mem[_856] = 26
        mem[_856 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            return 0
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 0 > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1 / 100
        if 4 * arg1 / 100 / arg1 / 100 != 4:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 4 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_793] = 26
                mem[_793 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_817 + idx + 68] = mem[_793 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_817 + 68] = mem[_817 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _817 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not Mask(254, 0, arg1 / 100):
                        return 0
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1055] = 30
                    mem[_1055 + 32] = 'SafeMath: subtraction overflow'
                    if 4 * arg1 / 100 * stor7 / totalSupply <= 0:
                        return 0
                    _1094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1094 + idx + 68] = mem[_1055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1094 + 68] = mem[_1094 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1094 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg1 / 100):
                    _1054 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1054] = 30
                    mem[_1054 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _1091 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1091 + idx + 68] = mem[_1054 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1091 + 68] = mem[_1091 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1091 + -mem[64] + 100
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1090 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1090] = 30
                mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _1139 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1139 + idx + 68] = mem[_1090 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1139 + 68] = mem[_1139 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1139 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_806] = 30
                mem[_806 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_831 + idx + 68] = mem[_806 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_831 + 68] = mem[_831 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _831 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_929] = 30
                mem[_929 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _967 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_967 + idx + 68] = mem[_929 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_967 + 68] = mem[_967 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _967 + -mem[64] + 100
            _820 = mem[64]
            mem[64] = mem[64] + 64
            mem[_820] = 26
            mem[_820 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _852 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_852 + idx + 68] = mem[_820 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_852 + 68] = mem[_852 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _852 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not Mask(254, 0, arg1 / 100):
                    return 0
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1098 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1098] = 30
                mem[_1098 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply <= 0:
                    return 0
                _1148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1148 + idx + 68] = mem[_1098 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1148 + 68] = mem[_1148 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1148 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg1 / 100):
                _1097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1097] = 30
                mem[_1097 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _1145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1145 + idx + 68] = mem[_1097 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1145 + 68] = mem[_1145 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1145 + -mem[64] + 100
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1144] = 30
            mem[_1144 + 32] = 'SafeMath: subtraction overflow'
            if 4 * arg1 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                return (arg1 * stor7 / totalSupply)
            _1222 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1222 + idx + 68] = mem[_1144 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1222 + 68] = mem[_1222 + 70 len 30]
            revert with memory
              from mem[64]
               len _1222 + -mem[64] + 100
        _743 = mem[64]
        mem[64] = mem[64] + 64
        mem[_743] = 26
        mem[_743 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _849 = mem[64]
            mem[64] = mem[64] + 64
            mem[_849] = 26
            mem[_849 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if Mask(254, 0, arg1 / 100):
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg1 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg1 / 100):
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * arg1 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * t / s)
        _850 = mem[64]
        mem[64] = mem[64] + 64
        mem[_850] = 26
        mem[_850 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if Mask(254, 0, arg1 / 100):
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * arg1 / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not Mask(254, 0, arg1 / 100):
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 4 * arg1 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor7 / totalSupply)
}

function reflect(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not arg1 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 26
                mem[_832 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_843 + idx + 68] = mem[_832 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_843 + 68] = mem[_843 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _843 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_954] = 30
                    mem[_954 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1022] = 30
                    mem[_1022 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _1071 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1071 + idx + 68] = mem[_1022 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1071 + 68] = mem[_1071 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1071 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1162] = 30
                    mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1231 + idx + 68] = mem[_1162 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1231 + 68] = mem[_1231 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1231 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _962 = mem[64]
                mem[64] = mem[64] + 64
                mem[_962] = 30
                mem[_962 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_983 + idx + 68] = mem[_962 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_983 + 68] = mem[_983 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _983 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1070] = 30
                mem[_1070 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _1134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1134 + idx + 68] = mem[_1070 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1134 + 68] = mem[_1134 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1134 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _1228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1228] = 30
                mem[_1228 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1312 + idx + 68] = mem[_1228 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1312 + 68] = mem[_1312 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1312 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 30
                mem[_838 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _850 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_850 + idx + 68] = mem[_838 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_850 + 68] = mem[_850 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _850 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _899 = mem[64]
                mem[64] = mem[64] + 64
                mem[_899] = 30
                mem[_899 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _920 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_920 + idx + 68] = mem[_899 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_920 + 68] = mem[_920 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _920 + -mem[64] + 100
            _846 = mem[64]
            mem[64] = mem[64] + 64
            mem[_846] = 26
            mem[_846 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _862 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_862 + idx + 68] = mem[_846 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_862 + 68] = mem[_862 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _862 + -mem[64] + 100
            require totalSupply
            if not arg1:
                _963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_963] = 30
                mem[_963 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _1076 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1076] = 30
                mem[_1076 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1140 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1140 + idx + 68] = mem[_1076 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1140 + 68] = mem[_1140 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1140 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1234] = 30
                mem[_1234 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1319 + idx + 68] = mem[_1234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1319 + 68] = mem[_1319 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1319 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _986 = mem[64]
            mem[64] = mem[64] + 64
            mem[_986] = 30
            mem[_986 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor7 / totalSupply:
                _1012 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1012 + idx + 68] = mem[_986 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1012 + 68] = mem[_1012 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1012 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1139] = 30
            mem[_1139 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                _1207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1207 + idx + 68] = mem[_1139 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1207 + 68] = mem[_1207 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1207 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
            _1316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1316] = 30
            mem[_1316 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / totalSupply <= stor7:
                stor7 += -1 * arg1 * stor7 / totalSupply
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1406 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1406 + idx + 68] = mem[_1316 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1406 + 68] = mem[_1406 + 70 len 30]
            revert with memory
              from mem[64]
               len _1406 + -mem[64] + 100
        _806 = mem[64]
        mem[64] = mem[64] + 64
        mem[_806] = 26
        mem[_806 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_859] = 26
            mem[_859 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * t / s
        else:
            _860 = mem[64]
            mem[64] = mem[64] + 64
            mem[_860] = 26
            mem[_860 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                if arg1 * stor7 / totalSupply > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * stor7 / totalSupply
    else:
        require arg1 / 100
        if 4 * arg1 / 100 / arg1 / 100 != 4:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 4 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_827] = 26
                mem[_827 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_839 + idx + 68] = mem[_827 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_839 + 68] = mem[_839 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _839 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not Mask(254, 0, arg1 / 100):
                        _953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_953] = 30
                        mem[_953 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _1019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1019] = 30
                        mem[_1019 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _1062 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1062 + idx + 68] = mem[_1019 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1062 + 68] = mem[_1062 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1062 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _1153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1153] = 30
                        mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1222 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1222 + idx + 68] = mem[_1153 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1222 + 68] = mem[_1222 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1222 + -mem[64] + 100
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _960 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_960] = 30
                    mem[_960 + 32] = 'SafeMath: subtraction overflow'
                    if 4 * arg1 / 100 * stor7 / totalSupply > 0:
                        _976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_976 + idx + 68] = mem[_960 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_976 + 68] = mem[_976 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _976 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1061] = 30
                    mem[_1061 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _1116 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1116 + idx + 68] = mem[_1061 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1116 + 68] = mem[_1116 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1116 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1219] = 30
                    mem[_1219 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1293 + idx + 68] = mem[_1219 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1293 + 68] = mem[_1293 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1293 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg1 / 100):
                    _959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_959] = 30
                    mem[_959 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_973 + idx + 68] = mem[_959 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_973 + 68] = mem[_973 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _973 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1060 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1060] = 30
                    mem[_1060 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _1113 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1113 + idx + 68] = mem[_1060 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1113 + 68] = mem[_1113 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1113 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _1216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1216] = 30
                    mem[_1216 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1290 + idx + 68] = mem[_1216 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1290 + 68] = mem[_1290 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1290 + -mem[64] + 100
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _972 = mem[64]
                mem[64] = mem[64] + 64
                mem[_972] = 30
                mem[_972 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_995 + idx + 68] = mem[_972 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_995 + 68] = mem[_995 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _995 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1112] = 30
                mem[_1112 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _1179 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1179 + idx + 68] = mem[_1112 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1179 + 68] = mem[_1179 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1179 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _1287 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1287] = 30
                mem[_1287 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1372 + idx + 68] = mem[_1287 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1372 + 68] = mem[_1372 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1372 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 30
                mem[_836 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _847 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_847 + idx + 68] = mem[_836 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_847 + 68] = mem[_847 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _847 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _895 = mem[64]
                mem[64] = mem[64] + 64
                mem[_895] = 30
                mem[_895 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _913 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_913 + idx + 68] = mem[_895 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_913 + 68] = mem[_913 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _913 + -mem[64] + 100
            _842 = mem[64]
            mem[64] = mem[64] + 64
            mem[_842] = 26
            mem[_842 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _856 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_856 + idx + 68] = mem[_842 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_856 + 68] = mem[_856 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _856 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not Mask(254, 0, arg1 / 100):
                    _961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_961] = 30
                    mem[_961 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 30
                    mem[_1069 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _1125 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1125 + idx + 68] = mem[_1069 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1125 + 68] = mem[_1125 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1125 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1225] = 30
                    mem[_1225 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1303 + idx + 68] = mem[_1225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1303 + 68] = mem[_1303 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1303 + -mem[64] + 100
                require 4 * arg1 / 100
                if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _980 = mem[64]
                mem[64] = mem[64] + 64
                mem[_980] = 30
                mem[_980 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg1 / 100 * stor7 / totalSupply > 0:
                    _1005 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1005 + idx + 68] = mem[_980 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1005 + 68] = mem[_1005 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1005 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1124] = 30
                mem[_1124 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1191 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1191 + idx + 68] = mem[_1124 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1191 + 68] = mem[_1191 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1191 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1300] = 30
                mem[_1300 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1386 + idx + 68] = mem[_1300 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1386 + 68] = mem[_1386 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1386 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg1 / 100):
                _979 = mem[64]
                mem[64] = mem[64] + 64
                mem[_979] = 30
                mem[_979 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _1002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1002 + idx + 68] = mem[_979 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1002 + 68] = mem[_1002 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1002 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1123] = 30
                mem[_1123 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _1188 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1188 + idx + 68] = mem[_1123 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1188 + 68] = mem[_1188 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1188 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _1297 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1297] = 30
                mem[_1297 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1383 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1383 + idx + 68] = mem[_1297 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1383 + 68] = mem[_1383 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1383 + -mem[64] + 100
            require 4 * arg1 / 100
            if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1001 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1001] = 30
            mem[_1001 + 32] = 'SafeMath: subtraction overflow'
            if 4 * arg1 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                _1042 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1042 + idx + 68] = mem[_1001 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1042 + 68] = mem[_1042 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1042 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1187] = 30
            mem[_1187 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                _1259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1259 + idx + 68] = mem[_1187 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1259 + 68] = mem[_1259 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1259 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
            _1380 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1380] = 30
            mem[_1380 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / totalSupply <= stor7:
                stor7 += -1 * arg1 * stor7 / totalSupply
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1458 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1458 + idx + 68] = mem[_1380 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1458 + 68] = mem[_1458 + 70 len 30]
            revert with memory
              from mem[64]
               len _1458 + -mem[64] + 100
        _801 = mem[64]
        mem[64] = mem[64] + 64
        mem[_801] = 26
        mem[_801 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _853 = mem[64]
            mem[64] = mem[64] + 64
            mem[_853] = 26
            mem[_853 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if Mask(254, 0, arg1 / 100):
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg1 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg1 / 100):
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * t / s / 4 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg1 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * t / s
        else:
            _854 = mem[64]
            mem[64] = mem[64] + 64
            mem[_854] = 26
            mem[_854 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if Mask(254, 0, arg1 / 100):
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg1 / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg1 / 100):
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg1 / 100
                    if 4 * arg1 / 100 * stor7 / totalSupply / 4 * arg1 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg1 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                if arg1 * stor7 / totalSupply > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * stor7 / totalSupply
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function _transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not owner:
        revert with 0, 'ownership renounced'
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] < arg3:
        revert with 0, 'not enough balance'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if not arg3 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _980 = mem[64]
                mem[64] = mem[64] + 64
                mem[_980] = 26
                mem[_980 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _991 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_991 + idx + 68] = mem[_980 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_991 + 68] = mem[_991 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _991 + -mem[64] + 100
                require totalSupply
                if not arg3:
                    _1102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1102] = 30
                    mem[_1102 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 1
                    _1170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1170] = 30
                    mem[_1170 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(arg1)]:
                        _1219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1219 + idx + 68] = mem[_1170 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1219 + 68] = mem[_1219 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1219 + -mem[64] + 100
                    if stor1[address(arg2)] < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg2
                    mem[32] = 1
                    _1466 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1466] = 30
                    mem[_1466 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(arg3, arg1, arg2);
                    _1549 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1549 + idx + 68] = mem[_1466 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1549 + 68] = mem[_1549 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1549 + -mem[64] + 100
                require arg3
                if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1110] = 30
                mem[_1110 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg3 * stor7 / totalSupply:
                    _1131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1131 + idx + 68] = mem[_1110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1131 + 68] = mem[_1131 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1131 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 1
                _1218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1218] = 30
                mem[_1218 + 32] = 'SafeMath: subtraction overflow'
                if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                    _1283 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1283 + idx + 68] = mem[_1218 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1283 + 68] = mem[_1283 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1283 + -mem[64] + 100
                stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = 1
                stor1[address(arg2)] += arg3 * stor7 / totalSupply
                _1548 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1548] = 30
                mem[_1548 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(arg3, arg1, arg2);
                _1609 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1609 + idx + 68] = mem[_1548 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1609 + 68] = mem[_1609 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1609 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 30
                mem[_986 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _998 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_998 + idx + 68] = mem[_986 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_998 + 68] = mem[_998 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _998 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _1047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1047] = 30
                mem[_1047 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _1068 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1068 + idx + 68] = mem[_1047 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1068 + 68] = mem[_1068 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1068 + -mem[64] + 100
            _994 = mem[64]
            mem[64] = mem[64] + 64
            mem[_994] = 26
            mem[_994 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1010 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1010 + idx + 68] = mem[_994 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1010 + 68] = mem[_1010 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1010 + -mem[64] + 100
            require totalSupply
            if not arg3:
                _1111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1111] = 30
                mem[_1111 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = arg1
                mem[32] = 1
                _1224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1224] = 30
                mem[_1224 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(arg1)]:
                    _1290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1290 + idx + 68] = mem[_1224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1290 + 68] = mem[_1290 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1290 + -mem[64] + 100
                if stor1[address(arg2)] < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = 1
                _1553 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1553] = 30
                mem[_1553 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(arg3, arg1, arg2);
                _1614 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1614 + idx + 68] = mem[_1553 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1614 + 68] = mem[_1614 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1614 + -mem[64] + 100
            require arg3
            if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1134] = 30
            mem[_1134 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg3 * stor7 / totalSupply:
                _1160 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1160 + idx + 68] = mem[_1134 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1160 + 68] = mem[_1160 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1160 + -mem[64] + 100
            mem[0] = arg1
            mem[32] = 1
            _1289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1289] = 30
            mem[_1289 + 32] = 'SafeMath: subtraction overflow'
            if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                _1363 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1363 + idx + 68] = mem[_1289 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1363 + 68] = mem[_1363 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1363 + -mem[64] + 100
            stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
            if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            stor1[address(arg2)] += arg3 * stor7 / totalSupply
            _1613 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1613] = 30
            mem[_1613 + 32] = 'SafeMath: subtraction overflow'
            if 0 <= stor7:
                if totalFees < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(arg3, arg1, arg2);
            _1667 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1667 + idx + 68] = mem[_1613 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1667 + 68] = mem[_1667 + 70 len 30]
            revert with memory
              from mem[64]
               len _1667 + -mem[64] + 100
        _954 = mem[64]
        mem[64] = mem[64] + 64
        mem[_954] = 26
        mem[_954 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _1007 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1007] = 26
            mem[_1007 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg3:
                if 0 > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor1[address(arg2)] < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg3
                if arg3 * t / s / arg3 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg3 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 * t / s > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(arg1)] += -1 * arg3 * t / s
                if stor1[address(arg2)] + (arg3 * t / s) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] += arg3 * t / s
        else:
            _1008 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1008] = 26
            mem[_1008 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg3:
                if 0 > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor1[address(arg2)] < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg3
                if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg3 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] += arg3 * stor7 / totalSupply
        if 0 > stor7:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalFees < totalFees:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(arg3, arg1, arg2);
    else:
        require arg3 / 100
        if 4 * arg3 / 100 / arg3 / 100 != 4:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 4 * arg3 / 100 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _975 = mem[64]
                mem[64] = mem[64] + 64
                mem[_975] = 26
                mem[_975 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_987 + idx + 68] = mem[_975 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_987 + 68] = mem[_987 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _987 + -mem[64] + 100
                require totalSupply
                if not arg3:
                    if not Mask(254, 0, arg3 / 100):
                        _1101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1101] = 30
                        mem[_1101 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = arg1
                        mem[32] = 1
                        _1167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1167] = 30
                        mem[_1167 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(arg1)]:
                            _1210 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1210 + idx + 68] = mem[_1167 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1210 + 68] = mem[_1210 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1210 + -mem[64] + 100
                        if stor1[address(arg2)] < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = arg2
                        mem[32] = 1
                        _1455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1455] = 30
                        mem[_1455 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + (4 * arg3 / 100) < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += 4 * arg3 / 100
                            emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                        _1534 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1534 + idx + 68] = mem[_1455 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1534 + 68] = mem[_1534 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1534 + -mem[64] + 100
                    require 4 * arg3 / 100
                    if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1108 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1108] = 30
                    mem[_1108 + 32] = 'SafeMath: subtraction overflow'
                    if 4 * arg3 / 100 * stor7 / totalSupply > 0:
                        _1124 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1124 + idx + 68] = mem[_1108 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1124 + 68] = mem[_1124 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1124 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 1
                    _1209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1209] = 30
                    mem[_1209 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(arg1)]:
                        _1264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1264 + idx + 68] = mem[_1209 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1264 + 68] = mem[_1264 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1264 + -mem[64] + 100
                    if stor1[address(arg2)] - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg2
                    mem[32] = 1
                    stor1[address(arg2)] += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                    _1533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1533] = 30
                    mem[_1533 + 32] = 'SafeMath: subtraction overflow'
                    if 4 * arg3 / 100 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                        if totalFees + (4 * arg3 / 100) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += 4 * arg3 / 100
                        emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                    _1595 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1595 + idx + 68] = mem[_1533 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1595 + 68] = mem[_1595 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1595 + -mem[64] + 100
                require arg3
                if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg3 / 100):
                    _1107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1107] = 30
                    mem[_1107 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg3 * stor7 / totalSupply:
                        _1121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1121 + idx + 68] = mem[_1107 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1121 + 68] = mem[_1121 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1121 + -mem[64] + 100
                    mem[0] = arg1
                    mem[32] = 1
                    _1208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1208] = 30
                    mem[_1208 + 32] = 'SafeMath: subtraction overflow'
                    if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                        _1261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1261 + idx + 68] = mem[_1208 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1261 + 68] = mem[_1261 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1261 + -mem[64] + 100
                    stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                    if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg2
                    mem[32] = 1
                    stor1[address(arg2)] += arg3 * stor7 / totalSupply
                    _1532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1532] = 30
                    mem[_1532 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + (4 * arg3 / 100) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += 4 * arg3 / 100
                        emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                    _1592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1592 + idx + 68] = mem[_1532 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1592 + 68] = mem[_1592 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1592 + -mem[64] + 100
                require 4 * arg3 / 100
                if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1120] = 30
                mem[_1120 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg3 / 100 * stor7 / totalSupply > arg3 * stor7 / totalSupply:
                    _1143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1143 + idx + 68] = mem[_1120 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1143 + 68] = mem[_1143 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1143 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 1
                _1260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1260] = 30
                mem[_1260 + 32] = 'SafeMath: subtraction overflow'
                if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                    _1327 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1327 + idx + 68] = mem[_1260 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1327 + 68] = mem[_1327 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1327 + -mem[64] + 100
                stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = 1
                stor1[address(arg2)] = stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply)
                _1591 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1591] = 30
                mem[_1591 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg3 / 100 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                    if totalFees + (4 * arg3 / 100) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += 4 * arg3 / 100
                    emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                _1639 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1639 + idx + 68] = mem[_1591 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1639 + 68] = mem[_1639 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1639 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _984 = mem[64]
                mem[64] = mem[64] + 64
                mem[_984] = 30
                mem[_984 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_995 + idx + 68] = mem[_984 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_995 + 68] = mem[_995 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _995 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _1043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1043] = 30
                mem[_1043 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _1061 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1061 + idx + 68] = mem[_1043 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1061 + 68] = mem[_1061 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1061 + -mem[64] + 100
            _990 = mem[64]
            mem[64] = mem[64] + 64
            mem[_990] = 26
            mem[_990 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1004 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1004 + idx + 68] = mem[_990 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1004 + 68] = mem[_1004 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1004 + -mem[64] + 100
            require totalSupply
            if not arg3:
                if not Mask(254, 0, arg3 / 100):
                    _1109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1109] = 30
                    mem[_1109 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = arg1
                    mem[32] = 1
                    _1217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1217] = 30
                    mem[_1217 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(arg1)]:
                        _1274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1274 + idx + 68] = mem[_1217 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1274 + 68] = mem[_1274 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1274 + -mem[64] + 100
                    if stor1[address(arg2)] < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg2
                    mem[32] = 1
                    _1541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1541] = 30
                    mem[_1541 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + (4 * arg3 / 100) < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += 4 * arg3 / 100
                        emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                    _1602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1602 + idx + 68] = mem[_1541 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1602 + 68] = mem[_1602 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1602 + -mem[64] + 100
                require 4 * arg3 / 100
                if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1128] = 30
                mem[_1128 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg3 / 100 * stor7 / totalSupply > 0:
                    _1153 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1153 + idx + 68] = mem[_1128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1153 + 68] = mem[_1153 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1153 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 1
                _1273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1273] = 30
                mem[_1273 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(arg1)]:
                    _1343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1343 + idx + 68] = mem[_1273 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1343 + 68] = mem[_1343 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1343 + -mem[64] + 100
                if stor1[address(arg2)] - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = 1
                stor1[address(arg2)] += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 30
                mem[_1601 + 32] = 'SafeMath: subtraction overflow'
                if 4 * arg3 / 100 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                    if totalFees + (4 * arg3 / 100) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += 4 * arg3 / 100
                    emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                _1651 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1651 + idx + 68] = mem[_1601 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1651 + 68] = mem[_1651 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1651 + -mem[64] + 100
            require arg3
            if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not Mask(254, 0, arg3 / 100):
                _1127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1127] = 30
                mem[_1127 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg3 * stor7 / totalSupply:
                    _1150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1150 + idx + 68] = mem[_1127 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1150 + 68] = mem[_1150 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1150 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = 1
                _1272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1272] = 30
                mem[_1272 + 32] = 'SafeMath: subtraction overflow'
                if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                    _1340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1340 + idx + 68] = mem[_1272 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1340 + 68] = mem[_1340 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1340 + -mem[64] + 100
                stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = 1
                stor1[address(arg2)] += arg3 * stor7 / totalSupply
                _1600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1600] = 30
                mem[_1600 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees + (4 * arg3 / 100) < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += 4 * arg3 / 100
                    emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
                _1648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1648 + idx + 68] = mem[_1600 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1648 + 68] = mem[_1648 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1648 + -mem[64] + 100
            require 4 * arg3 / 100
            if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1149] = 30
            mem[_1149 + 32] = 'SafeMath: subtraction overflow'
            if 4 * arg3 / 100 * stor7 / totalSupply > arg3 * stor7 / totalSupply:
                _1190 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1190 + idx + 68] = mem[_1149 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1190 + 68] = mem[_1190 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1190 + -mem[64] + 100
            mem[0] = arg1
            mem[32] = 1
            _1339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1339] = 30
            mem[_1339 + 32] = 'SafeMath: subtraction overflow'
            if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                _1414 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1414 + idx + 68] = mem[_1339 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1414 + 68] = mem[_1414 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1414 + -mem[64] + 100
            stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
            if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = 1
            stor1[address(arg2)] = stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply)
            _1647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1647] = 30
            mem[_1647 + 32] = 'SafeMath: subtraction overflow'
            if 4 * arg3 / 100 * stor7 / totalSupply <= stor7:
                stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                if totalFees + (4 * arg3 / 100) < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += 4 * arg3 / 100
                emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
            _1706 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1706 + idx + 68] = mem[_1647 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1706 + 68] = mem[_1706 + 70 len 30]
            revert with memory
              from mem[64]
               len _1706 + -mem[64] + 100
        _949 = mem[64]
        mem[64] = mem[64] + 64
        mem[_949] = 26
        mem[_949 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _1001 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1001] = 26
            mem[_1001 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg3:
                if not Mask(254, 0, arg3 / 100):
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor1[address(arg2)] < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg3 / 100
                    if 4 * arg3 / 100 * t / s / 4 * arg3 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg3 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor1[address(arg2)] - (4 * arg3 / 100 * t / s) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] += -1 * 4 * arg3 / 100 * t / s
                    if 4 * arg3 / 100 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * 4 * arg3 / 100 * t / s
            else:
                require arg3
                if arg3 * t / s / arg3 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg3 / 100):
                    if 0 > arg3 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 * t / s > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(arg1)] += -1 * arg3 * t / s
                    if stor1[address(arg2)] + (arg3 * t / s) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] += arg3 * t / s
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg3 / 100
                    if 4 * arg3 / 100 * t / s / 4 * arg3 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg3 / 100 * t / s > arg3 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 * t / s > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(arg1)] += -1 * arg3 * t / s
                    if stor1[address(arg2)] + (arg3 * t / s) - (4 * arg3 / 100 * t / s) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] = stor1[address(arg2)] + (arg3 * t / s) - (4 * arg3 / 100 * t / s)
                    if 4 * arg3 / 100 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * 4 * arg3 / 100 * t / s
        else:
            _1002 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1002] = 26
            mem[_1002 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg3:
                if not Mask(254, 0, arg3 / 100):
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor1[address(arg2)] < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg3 / 100
                    if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg3 / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor1[address(arg2)] - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] += -1 * 4 * arg3 / 100 * stor7 / totalSupply
                    if 4 * arg3 / 100 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
            else:
                require arg3
                if arg3 * stor7 / totalSupply / arg3 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(254, 0, arg3 / 100):
                    if 0 > arg3 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                    if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] += arg3 * stor7 / totalSupply
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 4 * arg3 / 100
                    if 4 * arg3 / 100 * stor7 / totalSupply / 4 * arg3 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * arg3 / 100 * stor7 / totalSupply > arg3 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 * stor7 / totalSupply > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(arg1)] += -1 * arg3 * stor7 / totalSupply
                    if stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply) < stor1[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] = stor1[address(arg2)] + (arg3 * stor7 / totalSupply) - (4 * arg3 / 100 * stor7 / totalSupply)
                    if 4 * arg3 / 100 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * 4 * arg3 / 100 * stor7 / totalSupply
        if totalFees + (4 * arg3 / 100) < totalFees:
            revert with 0, 'SafeMath: addition overflow'
        totalFees += 4 * arg3 / 100
        emit Transfer((arg3 - (4 * arg3 / 100)), arg1, arg2);
}



}
