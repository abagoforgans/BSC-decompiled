contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'GUMA'

const decimals = 18

const symbol = 'GUMA'


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 totalSupply;
uint256 stor8;
uint256 totalFees;
uint256 totalBurn;
uint256 _getTaxFee;
uint256 _getBurnFee;
uint256 max_tx_size;
uint8 isPaused;

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function _getTaxFee() payable {
    return _getTaxFee
}

function totalBurn() payable {
    return totalBurn
}

function _getBurnFee() payable {
    return _getBurnFee
}

function owner() payable {
    return owner
}

function max_tx_size() payable {
    return max_tx_size
}

function isPaused() payable {
    return bool(isPaused)
}

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor5[arg1]))
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

function unpause() payable {
    if owner != msg.sender:
        if not uint8(stor5[address(msg.sender)]):
            revert with 0, 'Unauth unpause call'
    isPaused = 0
    return 1
}

function _setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _getTaxFee = arg1
}

function _setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _getBurnFee = arg1
}

function setMaxTxAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    max_tx_size = arg1
}

function toggleAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor5[address(arg1)]) = not bool(uint8(stor5[address(arg1)])) or Mask(248, 8, uint256(stor5[address(arg1)]))
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

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            idx = idx + 1
            continue 
        require stor6.length - 1 < stor6.length
        require idx < stor6.length
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        require stor6.length
        stor6[stor6.length] = 0
        stor6.length--
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
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
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
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (arg1 / stor8 / totalSupply)
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
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
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (arg1 / stor8 / totalSupply)
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 1
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
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
        if t >= stor8 / totalSupply:
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
                if stor8 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor8 / totalSupply:
                    return (arg1 / stor8 / totalSupply)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
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
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (stor1[address(arg1)] / stor8 / totalSupply)
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
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
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (stor1[address(arg1)] / stor8 / totalSupply)
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 1
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
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
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
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
        if t >= stor8 / totalSupply:
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
                if stor8 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor8 / totalSupply:
                    return (stor1[address(arg1)] / stor8 / totalSupply)
    revert
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        revert with 0, 'We can not exclude router.'
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
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
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
                    stor4[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
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
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
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
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
                    stor4[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
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
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 1
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 30
            mem[_137 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
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
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 30
            mem[_167 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
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
        if t >= stor8 / totalSupply:
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
            if stor8 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8 / totalSupply
            stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
    stor4[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor8
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    if stor1[stor6[idx]] > t:
                        _2842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2842] = 26
                        mem[_2842 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2893 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2893 + idx + 68] = mem[_2842 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2893 + 68] = mem[_2893 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2893 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3439] = 30
                        mem[_3439 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3520 + idx + 68] = mem[_3439 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3520 + 68] = mem[_3520 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3520 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    if stor2[stor6[idx]] > s:
                        _2896 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2896] = 26
                        mem[_2896 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2958 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2958 + idx + 68] = mem[_2896 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2958 + 68] = mem[_2958 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2958 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3523] = 30
                        mem[_3523 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3657 + idx + 68] = mem[_3523 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3657 + 68] = mem[_3657 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3657 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2872] = 30
                    mem[_2872 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2922 + idx + 68] = mem[_2872 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2922 + 68] = mem[_2922 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2922 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3186 + idx + 68] = mem[_3117 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3186 + 68] = mem[_3186 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3186 + -mem[64] + 100
                _2732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2732] = 26
                mem[_2732 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor8 / totalSupply:
                    _2955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2955] = 26
                    mem[_2955 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
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
                    return 0
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor8 / totalSupply)
            require arg1
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2837] = 26
                    mem[_2837 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2889 + idx + 68] = mem[_2837 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2889 + 68] = mem[_2889 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2889 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3437] = 30
                        mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                        _3743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3743] = 30
                        mem[_3743 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                        _3984 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3984 + idx + 68] = mem[_3743 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3984 + 68] = mem[_3984 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3984 + -mem[64] + 100
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3436] = 30
                        mem[_3436 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3513 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3513 + idx + 68] = mem[_3436 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3513 + 68] = mem[_3513 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3513 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3512] = 30
                    mem[_3512 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _3646 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3646 + idx + 68] = mem[_3512 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3646 + 68] = mem[_3646 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3646 + -mem[64] + 100
                    _3981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3981] = 30
                    mem[_3981 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _4252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4252 + idx + 68] = mem[_3981 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4252 + 68] = mem[_4252 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4252 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2870] = 30
                    mem[_2870 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2919 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2919 + idx + 68] = mem[_2870 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2919 + 68] = mem[_2919 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2919 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3113] = 30
                    mem[_3113 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3179 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3179 + idx + 68] = mem[_3113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3179 + 68] = mem[_3179 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3179 + -mem[64] + 100
                _2892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2892] = 26
                mem[_2892 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2952 + idx + 68] = mem[_2892 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2952 + 68] = mem[_2952 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2952 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3517] = 30
                    mem[_3517 + 32] = 'SafeMath: subtraction overflow'
                    _3990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3990] = 30
                    mem[_3990 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                    _4259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4259 + idx + 68] = mem[_3990 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4259 + 68] = mem[_4259 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4259 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    _3516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3516] = 30
                    mem[_3516 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3651 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3651 + idx + 68] = mem[_3516 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3651 + 68] = mem[_3651 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3651 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3650] = 30
                mem[_3650 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _3847 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3847 + idx + 68] = mem[_3650 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3847 + 68] = mem[_3847 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3847 + -mem[64] + 100
                _4256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4256] = 30
                mem[_4256 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _4533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4533 + idx + 68] = mem[_4256 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4533 + 68] = mem[_4533 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4533 + -mem[64] + 100
            _2725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2725] = 26
            mem[_2725 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2949] = 26
                mem[_2949 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _getBurnFee / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            _2950 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2950] = 26
            mem[_2950 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _getBurnFee / 100 / 100:
                    return 0
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor8 / totalSupply)
            require arg1 * _getBurnFee / 100 / 100
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _getTaxFee / arg1 != _getTaxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2832] = 26
                    mem[_2832 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2885 + idx + 68] = mem[_2832 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2885 + 68] = mem[_2885 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2885 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            return 0
                        require arg1 * _getTaxFee / 100 / 100
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3434] = 30
                        mem[_3434 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _3505 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3505 + idx + 68] = mem[_3434 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3505 + 68] = mem[_3505 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3505 + -mem[64] + 100
                        _3736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3736] = 30
                        mem[_3736 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                        _3970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3970 + idx + 68] = mem[_3736 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3970 + 68] = mem[_3970 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3970 + -mem[64] + 100
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getTaxFee / 100 / 100:
                        _3433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3433] = 30
                        mem[_3433 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3502 + idx + 68] = mem[_3433 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3502 + 68] = mem[_3502 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3502 + -mem[64] + 100
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3501] = 30
                    mem[_3501 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _3630 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3630 + idx + 68] = mem[_3501 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3630 + 68] = mem[_3630 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3630 + -mem[64] + 100
                    _3967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3967] = 30
                    mem[_3967 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                    _4234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4234 + idx + 68] = mem[_3967 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4234 + 68] = mem[_4234 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4234 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2868] = 30
                    mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2916 + idx + 68] = mem[_2868 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2916 + 68] = mem[_2916 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2916 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3109] = 30
                    mem[_3109 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3172 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3172 + idx + 68] = mem[_3109 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3172 + 68] = mem[_3172 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3172 + -mem[64] + 100
                _2888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2888] = 26
                mem[_2888 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2946 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2946 + idx + 68] = mem[_2888 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2946 + 68] = mem[_2946 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2946 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3509 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3509] = 30
                    mem[_3509 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _3639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3639 + idx + 68] = mem[_3509 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3639 + 68] = mem[_3639 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3639 + -mem[64] + 100
                    _3976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3976] = 30
                    mem[_3976 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                    _4241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4241 + idx + 68] = mem[_3976 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4241 + 68] = mem[_4241 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4241 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    _3508 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3508] = 30
                    mem[_3508 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3636 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3636 + idx + 68] = mem[_3508 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3636 + 68] = mem[_3636 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3636 + -mem[64] + 100
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3635 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3635] = 30
                mem[_3635 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _3832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3832 + idx + 68] = mem[_3635 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3832 + 68] = mem[_3832 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3832 + -mem[64] + 100
                _4238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4238] = 30
                mem[_4238 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                _4513 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4513 + idx + 68] = mem[_4238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4513 + 68] = mem[_4513 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4513 + -mem[64] + 100
            _2718 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2718] = 26
            mem[_2718 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2943] = 26
                mem[_2943 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _getTaxFee / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s))
            _2944 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2944] = 26
            mem[_2944 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    return 0
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getTaxFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor8 / totalSupply)
            require arg1 * _getTaxFee / 100 / 100
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _getBurnFee / arg1 != _getBurnFee:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if arg1 * _getTaxFee / 100 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if arg1 * _getBurnFee / 100 / 100 > arg1 - (arg1 * _getTaxFee / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _2827 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2827] = 26
                mem[_2827 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2881 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2881 + idx + 68] = mem[_2827 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2881 + 68] = mem[_2881 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2881 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3431] = 30
                        mem[_3431 + 32] = 'SafeMath: subtraction overflow'
                        _3731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3731] = 30
                        mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                        _3955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3955 + idx + 68] = mem[_3731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3955 + 68] = mem[_3955 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3955 + -mem[64] + 100
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3430 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3430] = 30
                        mem[_3430 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _3493 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3493 + idx + 68] = mem[_3430 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3493 + 68] = mem[_3493 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3493 + -mem[64] + 100
                        _3728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3728] = 30
                        mem[_3728 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                        _3952 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3952 + idx + 68] = mem[_3728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3952 + 68] = mem[_3952 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3952 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3492] = 30
                    mem[_3492 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _3613 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3613 + idx + 68] = mem[_3492 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3613 + 68] = mem[_3613 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3613 + -mem[64] + 100
                    _3949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3949] = 30
                    mem[_3949 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _4202 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4202 + idx + 68] = mem[_3949 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4202 + 68] = mem[_4202 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4202 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3429] = 30
                        mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3489 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3489 + idx + 68] = mem[_3429 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3489 + 68] = mem[_3489 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3489 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3488] = 30
                    mem[_3488 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _3609 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3609 + idx + 68] = mem[_3488 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3609 + 68] = mem[_3609 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3609 + -mem[64] + 100
                    _3946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3946] = 30
                    mem[_3946 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _4199 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4199 + idx + 68] = mem[_3946 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4199 + 68] = mem[_4199 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4199 + -mem[64] + 100
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    _3487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3487] = 30
                    mem[_3487 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _3606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3606 + idx + 68] = mem[_3487 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3606 + 68] = mem[_3606 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3606 + -mem[64] + 100
                    _3943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3943] = 30
                    mem[_3943 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                    _4196 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4196 + idx + 68] = mem[_3943 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4196 + 68] = mem[_4196 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4196 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3605 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3605] = 30
                mem[_3605 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _3795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3795 + idx + 68] = mem[_3605 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3795 + 68] = mem[_3795 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3795 + -mem[64] + 100
                _4193 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4193] = 30
                mem[_4193 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _4473 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4473 + idx + 68] = mem[_4193 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4473 + 68] = mem[_4473 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4473 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 1
                _2866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2866] = 30
                mem[_2866 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _2913 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2913 + idx + 68] = mem[_2866 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2913 + 68] = mem[_2913 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2913 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                _3105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3105] = 30
                mem[_3105 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _3165 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3165 + idx + 68] = mem[_3105 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3165 + 68] = mem[_3165 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3165 + -mem[64] + 100
            _2884 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2884] = 26
            mem[_2884 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2940 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2940 + idx + 68] = mem[_2884 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2940 + 68] = mem[_2940 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2940 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3498] = 30
                    mem[_3498 + 32] = 'SafeMath: subtraction overflow'
                    _3964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3964] = 30
                    mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                    _4219 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4219 + idx + 68] = mem[_3964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4219 + 68] = mem[_4219 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4219 + -mem[64] + 100
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    _3497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3497] = 30
                    mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _3623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3623 + idx + 68] = mem[_3497 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3623 + 68] = mem[_3623 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3623 + -mem[64] + 100
                    _3961 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3961] = 30
                    mem[_3961 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                    _4216 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4216 + idx + 68] = mem[_3961 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4216 + 68] = mem[_4216 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4216 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3622] = 30
                mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    _3811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3811 + idx + 68] = mem[_3622 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3811 + 68] = mem[_3811 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3811 + -mem[64] + 100
                _4213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4213] = 30
                mem[_4213 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _4492 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4492 + idx + 68] = mem[_4213 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4492 + 68] = mem[_4492 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4492 + -mem[64] + 100
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = 30
                    mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3619 + idx + 68] = mem[_3496 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3619 + 68] = mem[_3619 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3619 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3618] = 30
                mem[_3618 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _3807 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3807 + idx + 68] = mem[_3618 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3807 + 68] = mem[_3807 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3807 + -mem[64] + 100
                _4210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4210] = 30
                mem[_4210 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _4489 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4489 + idx + 68] = mem[_4210 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4489 + 68] = mem[_4489 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4489 + -mem[64] + 100
            require arg1 * _getTaxFee / 100 / 100
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getBurnFee / 100 / 100:
                _3617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3617] = 30
                mem[_3617 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _3804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3804 + idx + 68] = mem[_3617 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3804 + 68] = mem[_3804 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3804 + -mem[64] + 100
                _4207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4207] = 30
                mem[_4207 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                _4486 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4486 + idx + 68] = mem[_4207 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4486 + 68] = mem[_4486 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4486 + -mem[64] + 100
            require arg1 * _getBurnFee / 100 / 100
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3803 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3803] = 30
            mem[_3803 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                _4079 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4079 + idx + 68] = mem[_3803 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4079 + 68] = mem[_4079 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4079 + -mem[64] + 100
            _4483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4483] = 30
            mem[_4483 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
            _4735 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4735 + idx + 68] = mem[_4483 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4735 + 68] = mem[_4735 + 70 len 30]
            revert with memory
              from mem[64]
               len _4735 + -mem[64] + 100
        _2711 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2711] = 26
        mem[_2711 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor8 / totalSupply:
            _2937 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2937] = 26
            mem[_2937 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _getBurnFee / 100 / 100 * t / s)
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _getTaxFee / 100 / 100 * t / s)
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * t / s > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _getTaxFee / 100 / 100 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            require arg1 * _getTaxFee / 100 / 100
            if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getBurnFee / 100 / 100:
                if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s))
            require arg1 * _getBurnFee / 100 / 100
            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * t / s > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
        _2938 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2938] = 26
        mem[_2938 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    return 0
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
            require arg1 * _getTaxFee / 100 / 100
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getBurnFee / 100 / 100:
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
            require arg1 * _getBurnFee / 100 / 100
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _getTaxFee / 100 / 100:
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor8 / totalSupply)
            require arg1 * _getBurnFee / 100 / 100
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        require arg1 * _getTaxFee / 100 / 100
        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _getBurnFee / 100 / 100:
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
        require arg1 * _getBurnFee / 100 / 100
        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2862] = 26
                    mem[_2862 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2909 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2909 + idx + 68] = mem[_2862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2909 + 68] = mem[_2909 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2909 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3451] = 30
                    mem[_3451 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3559 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3559 + idx + 68] = mem[_3451 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3559 + 68] = mem[_3559 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3559 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] > s:
                    _2912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2912] = 26
                    mem[_2912 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2982 + idx + 68] = mem[_2912 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2982 + 68] = mem[_2982 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2982 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3562 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3562] = 30
                    mem[_3562 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3718 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3718 + idx + 68] = mem[_3562 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3718 + 68] = mem[_3718 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3718 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 1
                _2880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2880] = 30
                mem[_2880 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _2934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2934 + idx + 68] = mem[_2880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2934 + 68] = mem[_2934 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2934 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                _3133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3133] = 30
                mem[_3133 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _3214 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3214 + idx + 68] = mem[_3133 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3214 + 68] = mem[_3214 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3214 + -mem[64] + 100
            _2758 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2758] = 26
            mem[_2758 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2979 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2979] = 26
                mem[_2979 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2980 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2980] = 26
            mem[_2980 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2857] = 26
                    mem[_2857 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2905 + idx + 68] = mem[_2857 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2905 + 68] = mem[_2905 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2905 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3449] = 30
                        mem[_3449 + 32] = 'SafeMath: subtraction overflow'
                        _3771 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3771] = 30
                        mem[_3771 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            return 0
                        _4039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4039 + idx + 68] = mem[_3771 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4039 + 68] = mem[_4039 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4039 + -mem[64] + 100
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3448] = 30
                        mem[_3448 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3552 + idx + 68] = mem[_3448 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3552 + 68] = mem[_3552 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3552 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3551] = 30
                    mem[_3551 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _3707 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3707 + idx + 68] = mem[_3551 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3707 + 68] = mem[_3707 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3707 + -mem[64] + 100
                    _4036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4036] = 30
                    mem[_4036 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _4341 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4341 + idx + 68] = mem[_4036 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4341 + 68] = mem[_4341 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4341 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2878 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2878] = 30
                    mem[_2878 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2931 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2931 + idx + 68] = mem[_2878 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2931 + 68] = mem[_2931 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2931 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3129 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3129] = 30
                    mem[_3129 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3207 + idx + 68] = mem[_3129 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3207 + 68] = mem[_3207 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3207 + -mem[64] + 100
                _2908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2908] = 26
                mem[_2908 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2976 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2976 + idx + 68] = mem[_2908 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2976 + 68] = mem[_2976 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2976 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3556] = 30
                    mem[_3556 + 32] = 'SafeMath: subtraction overflow'
                    _4045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4045] = 30
                    mem[_4045 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        return 0
                    _4348 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4348 + idx + 68] = mem[_4045 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4348 + 68] = mem[_4348 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4348 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    _3555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3555] = 30
                    mem[_3555 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3712 + idx + 68] = mem[_3555 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3712 + 68] = mem[_3712 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3712 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3711] = 30
                mem[_3711 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _3929 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3929 + idx + 68] = mem[_3711 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3929 + 68] = mem[_3929 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3929 + -mem[64] + 100
                _4345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4345] = 30
                mem[_4345 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    return (arg1 * stor8 / totalSupply)
                _4629 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4629 + idx + 68] = mem[_4345 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4629 + 68] = mem[_4629 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4629 + -mem[64] + 100
            _2751 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2751] = 26
            mem[_2751 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2973] = 26
                mem[_2973 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _getBurnFee / 100 / 100:
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2974 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2974] = 26
            mem[_2974 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if arg1 * _getBurnFee / 100 / 100:
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * _getTaxFee / arg1 != _getTaxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2852 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2852] = 26
                    mem[_2852 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2901 + idx + 68] = mem[_2852 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2901 + 68] = mem[_2901 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2901 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            return 0
                        require arg1 * _getTaxFee / 100 / 100
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3446] = 30
                        mem[_3446 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _3544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3544 + idx + 68] = mem[_3446 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3544 + 68] = mem[_3544 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3544 + -mem[64] + 100
                        _3764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3764] = 30
                        mem[_3764 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            return 0
                        _4025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4025 + idx + 68] = mem[_3764 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4025 + 68] = mem[_4025 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4025 + -mem[64] + 100
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getTaxFee / 100 / 100:
                        _3445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3445] = 30
                        mem[_3445 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3541 + idx + 68] = mem[_3445 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3541 + 68] = mem[_3541 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3541 + -mem[64] + 100
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3540] = 30
                    mem[_3540 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _3691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3691 + idx + 68] = mem[_3540 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3691 + 68] = mem[_3691 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3691 + -mem[64] + 100
                    _4022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4022] = 30
                    mem[_4022 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        return (arg1 * stor8 / totalSupply)
                    _4323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4323 + idx + 68] = mem[_4022 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4323 + 68] = mem[_4323 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4323 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2876] = 30
                    mem[_2876 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2928 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2928 + idx + 68] = mem[_2876 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2928 + 68] = mem[_2928 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2928 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3125] = 30
                    mem[_3125 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3200 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3200 + idx + 68] = mem[_3125 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3200 + 68] = mem[_3200 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3200 + -mem[64] + 100
                _2904 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2904] = 26
                mem[_2904 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2970 + idx + 68] = mem[_2904 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2970 + 68] = mem[_2970 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2970 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3548 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3548] = 30
                    mem[_3548 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _3700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3700 + idx + 68] = mem[_3548 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3700 + 68] = mem[_3700 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3700 + -mem[64] + 100
                    _4031 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4031] = 30
                    mem[_4031 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        return 0
                    _4330 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4330 + idx + 68] = mem[_4031 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4330 + 68] = mem[_4330 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4330 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    _3547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3547] = 30
                    mem[_3547 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _3697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3697 + idx + 68] = mem[_3547 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3697 + 68] = mem[_3697 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3697 + -mem[64] + 100
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3696] = 30
                mem[_3696 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _3914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3914 + idx + 68] = mem[_3696 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3914 + 68] = mem[_3914 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3914 + -mem[64] + 100
                _4327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4327] = 30
                mem[_4327 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    return (arg1 * stor8 / totalSupply)
                _4609 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4609 + idx + 68] = mem[_4327 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4609 + 68] = mem[_4609 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4609 + -mem[64] + 100
            _2744 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2744] = 26
            mem[_2744 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2967] = 26
                mem[_2967 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _getTaxFee / 100 / 100:
                        require arg1 * _getTaxFee / 100 / 100
                        if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
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
                if arg1 * _getTaxFee / 100 / 100:
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getTaxFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _2847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2847] = 26
                    mem[_2847 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2897 + idx + 68] = mem[_2847 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2897 + 68] = mem[_2897 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2897 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            if not arg1 * _getBurnFee / 100 / 100:
                                return 0
                            require arg1 * _getBurnFee / 100 / 100
                            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3443] = 30
                            mem[_3443 + 32] = 'SafeMath: subtraction overflow'
                            _3759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3759] = 30
                            mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                                return 0
                            _4010 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4010 + idx + 68] = mem[_3759 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4010 + 68] = mem[_4010 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4010 + -mem[64] + 100
                        require arg1 * _getTaxFee / 100 / 100
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _getBurnFee / 100 / 100:
                            _3442 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3442] = 30
                            mem[_3442 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                                _3532 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3532 + idx + 68] = mem[_3442 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3532 + 68] = mem[_3532 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3532 + -mem[64] + 100
                            _3756 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3756] = 30
                            mem[_3756 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                                return 0
                            _4007 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4007 + idx + 68] = mem[_3756 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4007 + 68] = mem[_4007 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4007 + -mem[64] + 100
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3531] = 30
                        mem[_3531 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _3674 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3674 + idx + 68] = mem[_3531 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3674 + 68] = mem[_3674 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3674 + -mem[64] + 100
                        _4004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4004] = 30
                        mem[_4004 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            return 0
                        _4291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4291 + idx + 68] = mem[_4004 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4291 + 68] = mem[_4291 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4291 + -mem[64] + 100
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            _3441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3441] = 30
                            mem[_3441 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor8 / totalSupply:
                                return (arg1 * stor8 / totalSupply)
                            _3528 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3528 + idx + 68] = mem[_3441 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3528 + 68] = mem[_3528 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3528 + -mem[64] + 100
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3527] = 30
                        mem[_3527 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _3670 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3670 + idx + 68] = mem[_3527 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3670 + 68] = mem[_3670 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3670 + -mem[64] + 100
                        _4001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4001] = 30
                        mem[_4001 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _4288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4288 + idx + 68] = mem[_4001 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4288 + 68] = mem[_4288 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4288 + -mem[64] + 100
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3526] = 30
                        mem[_3526 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            _3667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3667 + idx + 68] = mem[_3526 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3667 + 68] = mem[_3667 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3667 + -mem[64] + 100
                        _3998 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3998] = 30
                        mem[_3998 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                            return (arg1 * stor8 / totalSupply)
                        _4285 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4285 + idx + 68] = mem[_3998 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4285 + 68] = mem[_4285 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4285 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3666] = 30
                    mem[_3666 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _3877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3877 + idx + 68] = mem[_3666 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3877 + 68] = mem[_3877 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3877 + -mem[64] + 100
                    _4282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4282] = 30
                    mem[_4282 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        return (arg1 * stor8 / totalSupply)
                    _4569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4569 + idx + 68] = mem[_4282 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4569 + 68] = mem[_4569 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4569 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _2874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2874] = 30
                    mem[_2874 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _2925 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2925 + idx + 68] = mem[_2874 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2925 + 68] = mem[_2925 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2925 + -mem[64] + 100
                    require idx < stor6.length
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3121 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3121] = 30
                    mem[_3121 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3193 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3193 + idx + 68] = mem[_3121 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3193 + 68] = mem[_3193 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3193 + -mem[64] + 100
                _2900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2900] = 26
                mem[_2900 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2964 + idx + 68] = mem[_2900 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2964 + 68] = mem[_2964 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2964 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3537] = 30
                        mem[_3537 + 32] = 'SafeMath: subtraction overflow'
                        _4019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4019] = 30
                        mem[_4019 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            return 0
                        _4308 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4308 + idx + 68] = mem[_4019 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4308 + 68] = mem[_4308 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4308 + -mem[64] + 100
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3536] = 30
                        mem[_3536 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _3684 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3684 + idx + 68] = mem[_3536 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3684 + 68] = mem[_3684 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3684 + -mem[64] + 100
                        _4016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4016] = 30
                        mem[_4016 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            return 0
                        _4305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4305 + idx + 68] = mem[_4016 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4305 + 68] = mem[_4305 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4305 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3683] = 30
                    mem[_3683 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _3893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3893 + idx + 68] = mem[_3683 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3893 + 68] = mem[_3893 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3893 + -mem[64] + 100
                    _4302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4302] = 30
                    mem[_4302 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        return 0
                    _4588 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4588 + idx + 68] = mem[_4302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4588 + 68] = mem[_4588 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4588 + -mem[64] + 100
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        _3535 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3535] = 30
                        mem[_3535 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            return (arg1 * stor8 / totalSupply)
                        _3680 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3680 + idx + 68] = mem[_3535 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3680 + 68] = mem[_3680 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3680 + -mem[64] + 100
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3679] = 30
                    mem[_3679 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _3889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3889 + idx + 68] = mem[_3679 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3889 + 68] = mem[_3889 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3889 + -mem[64] + 100
                    _4299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4299] = 30
                    mem[_4299 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        return (arg1 * stor8 / totalSupply)
                    _4585 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4585 + idx + 68] = mem[_4299 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4585 + 68] = mem[_4585 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4585 + -mem[64] + 100
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    _3678 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3678] = 30
                    mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _3886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3886 + idx + 68] = mem[_3678 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3886 + 68] = mem[_3886 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3886 + -mem[64] + 100
                    _4296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4296] = 30
                    mem[_4296 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        return (arg1 * stor8 / totalSupply)
                    _4582 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4582 + idx + 68] = mem[_4296 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4582 + 68] = mem[_4582 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4582 + -mem[64] + 100
                require arg1 * _getBurnFee / 100 / 100
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3885] = 30
                mem[_3885 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _4143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4143 + idx + 68] = mem[_3885 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4143 + 68] = mem[_4143 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4143 + -mem[64] + 100
                _4579 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4579] = 30
                mem[_4579 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    return (arg1 * stor8 / totalSupply)
                _4821 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4821 + idx + 68] = mem[_4579 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4821 + 68] = mem[_4821 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4821 + -mem[64] + 100
            _2737 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2737] = 26
            mem[_2737 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor8 / totalSupply:
                _2961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2961] = 26
                mem[_2961 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if arg1 * _getBurnFee / 100 / 100:
                            require arg1 * _getBurnFee / 100 / 100
                            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _getTaxFee / 100 / 100
                        if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _getBurnFee / 100 / 100:
                            if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _getBurnFee / 100 / 100
                            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _getBurnFee / 100 / 100 * t / s > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * t / s > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
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
                if not arg1 * _getTaxFee / 100 / 100:
                    if arg1 * _getBurnFee / 100 / 100:
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getTaxFee / 100 / 100
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _getBurnFee / 100 / 100
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _getTaxFee / 100 / 100
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _getBurnFee / 100 / 100:
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _getBurnFee / 100 / 100
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor8 / totalSupply)
}



}
