contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const totalSupply = 388 * 10^9


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 stor6;
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

function setMaxTxPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 388 * 10^9 * arg1 / 388 * 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    _maxTxAmount = 388 * 10^9 * arg1 / 100
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
    if arg1 > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = 388 * 10^9
    t = stor6
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            _95 = mem[64]
            mem[64] = mem[64] + 64
            mem[_95] = 26
            mem[_95 + 32] = 'SafeMath: division by zero'
            if stor6 / 388 * 10^9 > 0:
                require stor6 / 388 * 10^9
                return (arg1 / stor6 / 388 * 10^9)
            _101 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_101 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_101 + 68] = mem[_101 + 74 len 26]
            revert with memory
              from mem[64]
               len _101 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 26
            mem[_81 + 32] = 'SafeMath: division by zero'
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 26
            mem[_107 + 32] = 'SafeMath: division by zero'
            if stor6 / 388 * 10^9 > 0:
                require stor6 / 388 * 10^9
                return (arg1 / stor6 / 388 * 10^9)
            _113 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_113 + idx + 68] = mem[_107 + idx + 32]
                idx = idx + 32
                continue 
            mem[_113 + 68] = mem[_113 + 74 len 26]
            revert with memory
              from mem[64]
               len _113 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _80 = mem[64]
        mem[64] = mem[64] + 64
        mem[_80] = 30
        mem[_80 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _82 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_82 + idx + 68] = mem[_80 + idx + 32]
                idx = idx + 32
                continue 
            mem[_82 + 68] = mem[_82 + 70 len 30]
            revert with memory
              from mem[64]
               len _82 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 30
        mem[_96 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _104 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_104 + idx + 68] = mem[_96 + idx + 32]
            idx = idx + 32
            continue 
        mem[_104 + 68] = mem[_104 + 70 len 30]
        revert with memory
          from mem[64]
           len _104 + -mem[64] + 100
    if t < stor6 / 388 * 10^9:
        if stor6 / 388 * 10^9 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor6 / 388 * 10^9:
            return (arg1 / stor6 / 388 * 10^9)
    else:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        if s:
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t / s:
                return (arg1 / t / s)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = 388 * 10^9
    t = stor6
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            _100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_100] = 26
            mem[_100 + 32] = 'SafeMath: division by zero'
            if stor6 / 388 * 10^9 > 0:
                require stor6 / 388 * 10^9
                return (stor1[address(arg1)] / stor6 / 388 * 10^9)
            _106 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_106 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_106 + 68] = mem[_106 + 74 len 26]
            revert with memory
              from mem[64]
               len _106 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _86 = mem[64]
            mem[64] = mem[64] + 64
            mem[_86] = 26
            mem[_86 + 32] = 'SafeMath: division by zero'
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor6 / 388 * 10^9 > 0:
                require stor6 / 388 * 10^9
                return (stor1[address(arg1)] / stor6 / 388 * 10^9)
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_118 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_118 + 68] = mem[_118 + 74 len 26]
            revert with memory
              from mem[64]
               len _118 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = 30
        mem[_85 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _87 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_87 + idx + 68] = mem[_85 + idx + 32]
                idx = idx + 32
                continue 
            mem[_87 + 68] = mem[_87 + 70 len 30]
            revert with memory
              from mem[64]
               len _87 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _109 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_109 + idx + 68] = mem[_101 + idx + 32]
            idx = idx + 32
            continue 
        mem[_109 + 68] = mem[_109 + 70 len 30]
        revert with memory
          from mem[64]
           len _109 + -mem[64] + 100
    if t < stor6 / 388 * 10^9:
        if stor6 / 388 * 10^9 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor6 / 388 * 10^9:
            return (stor1[address(arg1)] / stor6 / 388 * 10^9)
    else:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        if s:
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t / s:
                return (stor1[address(arg1)] / t / s)
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
        if stor1[address(arg1)] > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _90 = mem[64]
                mem[64] = mem[64] + 64
                mem[_90] = 26
                mem[_90 + 32] = 'SafeMath: division by zero'
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
                if stor6 / 388 * 10^9 > 0:
                    require stor6 / 388 * 10^9
                    stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 388 * 10^9
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_114 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_114 + 68] = mem[_114 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _114 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _94 = mem[64]
                mem[64] = mem[64] + 64
                mem[_94] = 26
                mem[_94 + 32] = 'SafeMath: division by zero'
                _120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_120] = 26
                mem[_120 + 32] = 'SafeMath: division by zero'
                if stor6 / 388 * 10^9 > 0:
                    require stor6 / 388 * 10^9
                    stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 388 * 10^9
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_126 + idx + 68] = mem[_120 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_126 + 68] = mem[_126 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _126 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 30
            mem[_93 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _95 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_95 + idx + 68] = mem[_93 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_95 + 68] = mem[_95 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _95 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_109] = 30
            mem[_109 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _117 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_117 + idx + 68] = mem[_109 + idx + 32]
                idx = idx + 32
                continue 
            mem[_117 + 68] = mem[_117 + 70 len 30]
            revert with memory
              from mem[64]
               len _117 + -mem[64] + 100
        if t < stor6 / 388 * 10^9:
            if stor6 / 388 * 10^9 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor6 / 388 * 10^9
            stor2[address(arg1)] = stor1[address(arg1)] / stor6 / 388 * 10^9
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > 388 * 10^9:
        revert with 0, 'Amount must be less than supply'
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
            s = 388 * 10^9
            t = stor6
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _628 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_628] = 26
                    mem[_628 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_800] = 30
                    mem[_800 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_832 + idx + 68] = mem[_800 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_832 + 68] = mem[_832 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _832 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _642 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_642] = 26
                    mem[_642 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_835] = 30
                    mem[_835 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_880 + idx + 68] = mem[_835 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_880 + 68] = mem[_880 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _880 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 30
                mem[_638 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _648 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_648 + idx + 68] = mem[_638 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_648 + 68] = mem[_648 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _648 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _699 = mem[64]
                mem[64] = mem[64] + 64
                mem[_699] = 30
                mem[_699 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _716 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_716 + idx + 68] = mem[_699 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_716 + 68] = mem[_716 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _716 + -mem[64] + 100
            _598 = mem[64]
            mem[64] = mem[64] + 64
            mem[_598] = 26
            mem[_598 + 32] = 'SafeMath: division by zero'
            if t < stor6 / 388 * 10^9:
                _660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_660] = 26
                mem[_660 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor6 / 388 * 10^9:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor6 / 388 * 10^9)
            _659 = mem[64]
            mem[64] = mem[64] + 64
            mem[_659] = 26
            mem[_659 + 32] = 'SafeMath: division by zero'
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
        require arg1 / 100
        if 2 * arg1 / 100 / arg1 / 100 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _625 = mem[64]
                mem[64] = mem[64] + 64
                mem[_625] = 26
                mem[_625 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not uint255(arg1 / 100):
                        return 0
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 30
                    mem[_798 + 32] = 'SafeMath: subtraction overflow'
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= 0:
                        return (-1 * 2 * arg1 / 100 * stor6 / 388 * 10^9)
                    _825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_825 + idx + 68] = mem[_798 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_825 + 68] = mem[_825 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _825 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 30
                    mem[_797 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_822 + idx + 68] = mem[_797 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_822 + 68] = mem[_822 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _822 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _821 = mem[64]
                mem[64] = mem[64] + 64
                mem[_821] = 30
                mem[_821 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= arg1 * stor6 / 388 * 10^9:
                    return ((arg1 * stor6 / 388 * 10^9) - (2 * arg1 / 100 * stor6 / 388 * 10^9))
                _865 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_865 + idx + 68] = mem[_821 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_865 + 68] = mem[_865 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _865 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_641] = 26
                mem[_641 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not uint255(arg1 / 100):
                        return 0
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 30
                    mem[_829 + 32] = 'SafeMath: subtraction overflow'
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= 0:
                        return (-1 * 2 * arg1 / 100 * stor6 / 388 * 10^9)
                    _874 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_874 + idx + 68] = mem[_829 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_874 + 68] = mem[_874 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _874 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 30
                    mem[_828 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _871 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_871 + idx + 68] = mem[_828 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_871 + 68] = mem[_871 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _871 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _870 = mem[64]
                mem[64] = mem[64] + 64
                mem[_870] = 30
                mem[_870 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= arg1 * stor6 / 388 * 10^9:
                    return ((arg1 * stor6 / 388 * 10^9) - (2 * arg1 / 100 * stor6 / 388 * 10^9))
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_936 + idx + 68] = mem[_870 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_936 + 68] = mem[_936 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _637 = mem[64]
            mem[64] = mem[64] + 64
            mem[_637] = 30
            mem[_637 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _645 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_645 + idx + 68] = mem[_637 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_645 + 68] = mem[_645 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _645 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _697 = mem[64]
            mem[64] = mem[64] + 64
            mem[_697] = 30
            mem[_697 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _711 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_711 + idx + 68] = mem[_697 + idx + 32]
                idx = idx + 32
                continue 
            mem[_711 + 68] = mem[_711 + 70 len 30]
            revert with memory
              from mem[64]
               len _711 + -mem[64] + 100
        _593 = mem[64]
        mem[64] = mem[64] + 64
        mem[_593] = 26
        mem[_593 + 32] = 'SafeMath: division by zero'
        if t < stor6 / 388 * 10^9:
            _658 = mem[64]
            mem[64] = mem[64] + 64
            mem[_658] = 26
            mem[_658 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not uint255(arg1 / 100):
                    return 0
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * 2 * arg1 / 100 * stor6 / 388 * 10^9)
            require arg1
            if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not uint255(arg1 / 100):
                if 0 > arg1 * stor6 / 388 * 10^9:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor6 / 388 * 10^9)
            require 2 * arg1 / 100
            if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 2 * arg1 / 100 * stor6 / 388 * 10^9 > arg1 * stor6 / 388 * 10^9:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor6 / 388 * 10^9) - (2 * arg1 / 100 * stor6 / 388 * 10^9))
        _657 = mem[64]
        mem[64] = mem[64] + 64
        mem[_657] = 26
        mem[_657 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if not uint255(arg1 / 100):
                return 0
            require 2 * arg1 / 100
            if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 2 * arg1 / 100 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 2 * arg1 / 100 * t / s)
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not uint255(arg1 / 100):
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * t / s)
        require 2 * arg1 / 100
        if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 2 * arg1 / 100 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * t / s) - (2 * arg1 / 100 * t / s))
    if not arg1 / 100:
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_634] = 26
                mem[_634 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_805] = 30
                mem[_805 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 388 * 10^9:
                    return (arg1 * stor6 / 388 * 10^9)
                _849 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_849 + idx + 68] = mem[_805 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_849 + 68] = mem[_849 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _849 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_644] = 26
                mem[_644 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _852 = mem[64]
                mem[64] = mem[64] + 64
                mem[_852] = 30
                mem[_852 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor6 / 388 * 10^9:
                    return (arg1 * stor6 / 388 * 10^9)
                _902 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_902 + idx + 68] = mem[_852 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_902 + 68] = mem[_902 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _902 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _640 = mem[64]
            mem[64] = mem[64] + 64
            mem[_640] = 30
            mem[_640 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _654 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_654 + idx + 68] = mem[_640 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_654 + 68] = mem[_654 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _654 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _703 = mem[64]
            mem[64] = mem[64] + 64
            mem[_703] = 30
            mem[_703 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _726 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_726 + idx + 68] = mem[_703 + idx + 32]
                idx = idx + 32
                continue 
            mem[_726 + 68] = mem[_726 + 70 len 30]
            revert with memory
              from mem[64]
               len _726 + -mem[64] + 100
        _608 = mem[64]
        mem[64] = mem[64] + 64
        mem[_608] = 26
        mem[_608 + 32] = 'SafeMath: division by zero'
        if t < stor6 / 388 * 10^9:
            _664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_664] = 26
            mem[_664 + 32] = 'SafeMath: division by zero'
            if not arg1:
                return 0
            require arg1
            if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor6 / 388 * 10^9:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor6 / 388 * 10^9)
        _663 = mem[64]
        mem[64] = mem[64] + 64
        mem[_663] = 26
        mem[_663 + 32] = 'SafeMath: division by zero'
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
    else:
        require arg1 / 100
        if 2 * arg1 / 100 / arg1 / 100 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 26
                mem[_631 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not uint255(arg1 / 100):
                        return 0
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_803] = 30
                    mem[_803 + 32] = 'SafeMath: subtraction overflow'
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= 0:
                        return 0
                    _842 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_842 + idx + 68] = mem[_803 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_842 + 68] = mem[_842 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _842 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    _802 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_802] = 30
                    mem[_802 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_839 + idx + 68] = mem[_802 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_839 + 68] = mem[_839 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _839 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 30
                mem[_838 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= arg1 * stor6 / 388 * 10^9:
                    return (arg1 * stor6 / 388 * 10^9)
                _887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_887 + idx + 68] = mem[_838 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_887 + 68] = mem[_887 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _887 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_643] = 26
                mem[_643 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not uint255(arg1 / 100):
                        return 0
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_846] = 30
                    mem[_846 + 32] = 'SafeMath: subtraction overflow'
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= 0:
                        return 0
                    _896 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_896 + idx + 68] = mem[_846 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_896 + 68] = mem[_896 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _896 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    _845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_845] = 30
                    mem[_845 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor6 / 388 * 10^9:
                        return (arg1 * stor6 / 388 * 10^9)
                    _893 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_893 + idx + 68] = mem[_845 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_893 + 68] = mem[_893 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _893 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_892] = 30
                mem[_892 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 <= arg1 * stor6 / 388 * 10^9:
                    return (arg1 * stor6 / 388 * 10^9)
                _970 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_970 + idx + 68] = mem[_892 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_970 + 68] = mem[_970 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _970 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 30
            mem[_639 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _651 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_651 + idx + 68] = mem[_639 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_651 + 68] = mem[_651 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _651 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _701 = mem[64]
            mem[64] = mem[64] + 64
            mem[_701] = 30
            mem[_701 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _721 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_721 + idx + 68] = mem[_701 + idx + 32]
                idx = idx + 32
                continue 
            mem[_721 + 68] = mem[_721 + 70 len 30]
            revert with memory
              from mem[64]
               len _721 + -mem[64] + 100
        _603 = mem[64]
        mem[64] = mem[64] + 64
        mem[_603] = 26
        mem[_603 + 32] = 'SafeMath: division by zero'
        if t < stor6 / 388 * 10^9:
            _662 = mem[64]
            mem[64] = mem[64] + 64
            mem[_662] = 26
            mem[_662 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if uint255(arg1 / 100):
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not uint255(arg1 / 100):
                if 0 > arg1 * stor6 / 388 * 10^9:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 > arg1 * stor6 / 388 * 10^9:
                    revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor6 / 388 * 10^9)
        _661 = mem[64]
        mem[64] = mem[64] + 64
        mem[_661] = 26
        mem[_661 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if uint255(arg1 / 100):
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 2 * arg1 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not uint255(arg1 / 100):
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require 2 * arg1 / 100
            if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 2 * arg1 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * t / s)
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
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = 26
                mem[_750 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    _828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_828] = 30
                    mem[_828 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_896] = 30
                    mem[_896 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_945 + idx + 68] = mem[_896 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_945 + 68] = mem[_945 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _945 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1036] = 30
                    mem[_1036 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1105 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1105 + idx + 68] = mem[_1036 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1105 + 68] = mem[_1105 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1105 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 30
                mem[_836 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 388 * 10^9:
                    _857 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_857 + idx + 68] = mem[_836 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_857 + 68] = mem[_857 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _857 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 30
                mem[_944 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                    _1008 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1008 + idx + 68] = mem[_944 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1008 + 68] = mem[_1008 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1008 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                _1102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1102] = 30
                mem[_1102 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 <= stor6:
                    stor6 += -1 * arg1 * stor6 / 388 * 10^9
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1186 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1186 + idx + 68] = mem[_1102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1186 + 68] = mem[_1186 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1186 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 30
                mem[_754 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_760 + idx + 68] = mem[_754 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_760 + 68] = mem[_760 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _760 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_785] = 30
                mem[_785 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _796 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_796 + idx + 68] = mem[_785 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_796 + 68] = mem[_796 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _796 + -mem[64] + 100
            _756 = mem[64]
            mem[64] = mem[64] + 64
            mem[_756] = 26
            mem[_756 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_837] = 30
                mem[_837 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_950] = 30
                mem[_950 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1014 + idx + 68] = mem[_950 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1108] = 30
                mem[_1108 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1193 + idx + 68] = mem[_1108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1193 + 68] = mem[_1193 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1193 + -mem[64] + 100
            require arg1
            if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _860 = mem[64]
            mem[64] = mem[64] + 64
            mem[_860] = 30
            mem[_860 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor6 / 388 * 10^9:
                _886 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_886 + idx + 68] = mem[_860 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_886 + 68] = mem[_886 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _886 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1013 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1013] = 30
            mem[_1013 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                _1081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1081 + idx + 68] = mem[_1013 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1081 + 68] = mem[_1081 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1081 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
            _1190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1190] = 30
            mem[_1190 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 388 * 10^9 <= stor6:
                stor6 += -1 * arg1 * stor6 / 388 * 10^9
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1280 + idx + 68] = mem[_1190 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1280 + 68] = mem[_1280 + 70 len 30]
            revert with memory
              from mem[64]
               len _1280 + -mem[64] + 100
        _736 = mem[64]
        mem[64] = mem[64] + 64
        mem[_736] = 26
        mem[_736 + 32] = 'SafeMath: division by zero'
        if t < stor6 / 388 * 10^9:
            _766 = mem[64]
            mem[64] = mem[64] + 64
            mem[_766] = 26
            mem[_766 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor6 / 388 * 10^9:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                if arg1 * stor6 / 388 * 10^9 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor6 += -1 * arg1 * stor6 / 388 * 10^9
        else:
            _765 = mem[64]
            mem[64] = mem[64] + 64
            mem[_765] = 26
            mem[_765 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor6:
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
                if arg1 * t / s > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor6 += -1 * arg1 * t / s
    else:
        require arg1 / 100
        if 2 * arg1 / 100 / arg1 / 100 != 2:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 388 * 10^9
        t = stor6
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_747] = 26
                mem[_747 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not uint255(arg1 / 100):
                        _827 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_827] = 30
                        mem[_827 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_893] = 30
                        mem[_893 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _936 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_936 + idx + 68] = mem[_893 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_936 + 68] = mem[_936 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _936 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _1027 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1027] = 30
                        mem[_1027 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor6:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1096 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1096 + idx + 68] = mem[_1027 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1096 + 68] = mem[_1096 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1096 + -mem[64] + 100
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 30
                    mem[_834 + 32] = 'SafeMath: subtraction overflow'
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 > 0:
                        _850 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_850 + idx + 68] = mem[_834 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_850 + 68] = mem[_850 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _850 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_935] = 30
                    mem[_935 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _990 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_990 + idx + 68] = mem[_935 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_990 + 68] = mem[_990 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _990 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1093 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1093] = 30
                    mem[_1093 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1167 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1167 + idx + 68] = mem[_1093 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1167 + 68] = mem[_1167 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1167 + -mem[64] + 100
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 30
                    mem[_833 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor6 / 388 * 10^9:
                        _847 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_847 + idx + 68] = mem[_833 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_847 + 68] = mem[_847 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _847 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_934] = 30
                    mem[_934 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                        _987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_987 + idx + 68] = mem[_934 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_987 + 68] = mem[_987 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _987 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                    _1090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1090] = 30
                    mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor6 / 388 * 10^9 <= stor6:
                        stor6 += -1 * arg1 * stor6 / 388 * 10^9
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1164 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1164 + idx + 68] = mem[_1090 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1164 + 68] = mem[_1164 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1164 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _846 = mem[64]
                mem[64] = mem[64] + 64
                mem[_846] = 30
                mem[_846 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 > arg1 * stor6 / 388 * 10^9:
                    _869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_869 + idx + 68] = mem[_846 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_869 + 68] = mem[_869 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _869 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 30
                mem[_986 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                    _1053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1053 + idx + 68] = mem[_986 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1053 + 68] = mem[_1053 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1053 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                _1161 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1161] = 30
                mem[_1161 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 <= stor6:
                    stor6 += -1 * arg1 * stor6 / 388 * 10^9
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1246 + idx + 68] = mem[_1161 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1246 + 68] = mem[_1246 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1246 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_753] = 30
                mem[_753 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_757 + idx + 68] = mem[_753 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_757 + 68] = mem[_757 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _757 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _783 = mem[64]
                mem[64] = mem[64] + 64
                mem[_783] = 30
                mem[_783 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _791 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_791 + idx + 68] = mem[_783 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_791 + 68] = mem[_791 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _791 + -mem[64] + 100
            _755 = mem[64]
            mem[64] = mem[64] + 64
            mem[_755] = 26
            mem[_755 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not uint255(arg1 / 100):
                    _835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_835] = 30
                    mem[_835 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_943] = 30
                    mem[_943 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _999 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_999 + idx + 68] = mem[_943 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_999 + 68] = mem[_999 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _999 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1099 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1099] = 30
                    mem[_1099 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor6:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1177 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1177 + idx + 68] = mem[_1099 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1177 + 68] = mem[_1177 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1177 + -mem[64] + 100
                require 2 * arg1 / 100
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_854] = 30
                mem[_854 + 32] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 * stor6 / 388 * 10^9 > 0:
                    _879 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_879 + idx + 68] = mem[_854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_879 + 68] = mem[_879 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _879 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_998] = 30
                mem[_998 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1065 + idx + 68] = mem[_998 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1065 + 68] = mem[_1065 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1065 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1174] = 30
                mem[_1174 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor6:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1260 + idx + 68] = mem[_1174 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1260 + 68] = mem[_1260 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1260 + -mem[64] + 100
            require arg1
            if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not uint255(arg1 / 100):
                _853 = mem[64]
                mem[64] = mem[64] + 64
                mem[_853] = 30
                mem[_853 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor6 / 388 * 10^9:
                    _876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_876 + idx + 68] = mem[_853 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_876 + 68] = mem[_876 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _876 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _997 = mem[64]
                mem[64] = mem[64] + 64
                mem[_997] = 30
                mem[_997 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                    _1062 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1062 + idx + 68] = mem[_997 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1062 + 68] = mem[_1062 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1062 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                _1171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1171] = 30
                mem[_1171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 <= stor6:
                    stor6 += -1 * arg1 * stor6 / 388 * 10^9
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1257 + idx + 68] = mem[_1171 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1257 + 68] = mem[_1257 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1257 + -mem[64] + 100
            require 2 * arg1 / 100
            if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _875 = mem[64]
            mem[64] = mem[64] + 64
            mem[_875] = 30
            mem[_875 + 32] = 'SafeMath: subtraction overflow'
            if 2 * arg1 / 100 * stor6 / 388 * 10^9 > arg1 * stor6 / 388 * 10^9:
                _916 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_916 + idx + 68] = mem[_875 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_916 + 68] = mem[_916 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _916 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1061 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1061] = 30
            mem[_1061 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                _1133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1133 + idx + 68] = mem[_1061 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1133 + 68] = mem[_1133 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1133 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
            _1254 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1254] = 30
            mem[_1254 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor6 / 388 * 10^9 <= stor6:
                stor6 += -1 * arg1 * stor6 / 388 * 10^9
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1332 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1332 + idx + 68] = mem[_1254 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1332 + 68] = mem[_1332 + 70 len 30]
            revert with memory
              from mem[64]
               len _1332 + -mem[64] + 100
        _731 = mem[64]
        mem[64] = mem[64] + 64
        mem[_731] = 26
        mem[_731 + 32] = 'SafeMath: division by zero'
        if t < stor6 / 388 * 10^9:
            _764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_764] = 26
            mem[_764 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if uint255(arg1 / 100):
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor6 / 388 * 10^9 / arg1 != stor6 / 388 * 10^9:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    if 0 > arg1 * stor6 / 388 * 10^9:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 / 2 * arg1 / 100 != stor6 / 388 * 10^9:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 2 * arg1 / 100 * stor6 / 388 * 10^9 > arg1 * stor6 / 388 * 10^9:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor6 / 388 * 10^9 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor6 / 388 * 10^9
                if arg1 * stor6 / 388 * 10^9 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor6 += -1 * arg1 * stor6 / 388 * 10^9
        else:
            _763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_763] = 26
            mem[_763 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if uint255(arg1 / 100):
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 2 * arg1 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not uint255(arg1 / 100):
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 2 * arg1 / 100
                    if 2 * arg1 / 100 * t / s / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 2 * arg1 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor6 += -1 * arg1 * t / s
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
