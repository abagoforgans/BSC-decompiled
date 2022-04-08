contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const totalSupply = 100000 * 10^18

const cakeswapRouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f


address owner;
uint256 stor1;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address cakeswapPairAddress; offset 8
address _burnPoolAddress;
address vaultAddr;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint8 stor10;
array of address stor11;
uint256 stor12;
uint256 stor13;
uint8 feeDecimals;
uint32 feePercentage; offset 8
uint256 stor15;
uint256 minimumSupply;

function cakeswapPair() {
    return cakeswapPairAddress
}

function name() {
    return name[0 len name.length]
}

function _burnPool() {
    return _burnPoolAddress
}

function decimals() {
    return decimals
}

function minimumSupply() {
    return minimumSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feePercentage() {
    return feePercentage
}

function VaultAddr() {
    return vaultAddr
}

function feeDecimals() {
    return feeDecimals
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

function sesVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddr = arg1
}

function updateFee(uint8 arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 > 5:
        revert with 0, 'The fee can't be more than 5%'
    feeDecimals = arg1
    feePercentage = arg2
    emit FeeUpdated(arg1 << 248, arg2);
    stor1 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        stor11[idx] = stor11[stor11.length]
        stor9[address(arg1)] = 0
        stor10[address(arg1)] = 0
        require stor11.length
        stor11[stor11.length] = 0
        stor11.length--
        stor1 = 1
    stor1 = 1
}

function changeTaxReturnedToHolders(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x77546865205461782052657475726e656420746f20486f6c64657273206e6f74206d6f7265207468616e2032,
                    mem[208 len 20]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73546865205461782052657475726e656420746f20486f6c64657273206e6f74206c657373207468616e20302e31,
                    mem[210 len 18]
    stor15 = arg1
}

function calcTokenFee(uint256 arg1, uint8 arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        if 10^(arg2 + 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(arg2 + 2):
            return (0 / 10^(arg2 + 2))
    else:
        if arg1:
            if arg1 * arg3 / arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(arg2 + 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(arg2 + 2):
                return (arg1 * arg3 / 10^(arg2 + 2))
    revert
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
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
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function tokenFromAllocation(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73416d6f756e74206d757374206265206c657373207468616e2074686520746f74616c20616c6c6f636174696f6e,
                    mem[210 len 18]
    idx = 0
    s = 100000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 8
        if stor8[stor11[idx]] > t:
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            _95 = mem[64]
            mem[64] = mem[64] + 64
            mem[_95] = 26
            mem[_95 + 32] = 'SafeMath: division by zero'
            if stor12 / 100000 * 10^18 > 0:
                require stor12 / 100000 * 10^18
                return (arg1 / stor12 / 100000 * 10^18)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        if stor9[stor11[idx]] > s:
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 26
            mem[_81 + 32] = 'SafeMath: division by zero'
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 26
            mem[_107 + 32] = 'SafeMath: division by zero'
            if stor12 / 100000 * 10^18 > 0:
                require stor12 / 100000 * 10^18
                return (arg1 / stor12 / 100000 * 10^18)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 8
        _80 = mem[64]
        mem[64] = mem[64] + 64
        mem[_80] = 30
        mem[_80 + 32] = 'SafeMath: subtraction overflow'
        if stor8[stor11[idx]] > t:
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 30
        mem[_96 + 32] = 'SafeMath: subtraction overflow'
        if stor9[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor9[stor11[idx]]
            t = t - stor8[stor11[idx]]
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
    if t < stor12 / 100000 * 10^18:
        if stor12 / 100000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor12 / 100000 * 10^18:
            return (arg1 / stor12 / 100000 * 10^18)
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
    require not msg.value
    require calldata.size - 4 >= 32
    if stor10[address(arg1)]:
        return stor9[address(arg1)]
    mem[0] = arg1
    mem[32] = 8
    if stor8[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x73416d6f756e74206d757374206265206c657373207468616e2074686520746f74616c20616c6c6f636174696f6e,
                    mem[210 len 18]
    idx = 0
    s = 100000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 8
        if stor8[stor11[idx]] > t:
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            _100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_100] = 26
            mem[_100 + 32] = 'SafeMath: division by zero'
            if stor12 / 100000 * 10^18 > 0:
                require stor12 / 100000 * 10^18
                return (stor8[address(arg1)] / stor12 / 100000 * 10^18)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        if stor9[stor11[idx]] > s:
            _86 = mem[64]
            mem[64] = mem[64] + 64
            mem[_86] = 26
            mem[_86 + 32] = 'SafeMath: division by zero'
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor12 / 100000 * 10^18 > 0:
                require stor12 / 100000 * 10^18
                return (stor8[address(arg1)] / stor12 / 100000 * 10^18)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 8
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = 30
        mem[_85 + 32] = 'SafeMath: subtraction overflow'
        if stor8[stor11[idx]] > t:
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if stor9[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor9[stor11[idx]]
            t = t - stor8[stor11[idx]]
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
    if t < stor12 / 100000 * 10^18:
        if stor12 / 100000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor12 / 100000 * 10^18:
            return (stor8[address(arg1)] / stor12 / 100000 * 10^18)
    else:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        if s:
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t / s:
                return (stor8[address(arg1)] / t / s)
    revert
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor8[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 8
        if stor8[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x73416d6f756e74206d757374206265206c657373207468616e2074686520746f74616c20616c6c6f636174696f6e,
                        mem[210 len 18]
        idx = 0
        s = 100000 * 10^18
        t = stor12
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 8
            if stor8[stor11[idx]] > t:
                _92 = mem[64]
                mem[64] = mem[64] + 64
                mem[_92] = 26
                mem[_92 + 32] = 'SafeMath: division by zero'
                _110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_110] = 26
                mem[_110 + 32] = 'SafeMath: division by zero'
                if stor12 / 100000 * 10^18 > 0:
                    require stor12 / 100000 * 10^18
                    stor9[address(arg1)] = stor8[address(arg1)] / stor12 / 100000 * 10^18
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                    stor1 = 1
                _116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_116 + idx + 68] = mem[_110 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_116 + 68] = mem[_116 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 9
            if stor9[stor11[idx]] > s:
                _96 = mem[64]
                mem[64] = mem[64] + 64
                mem[_96] = 26
                mem[_96 + 32] = 'SafeMath: division by zero'
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 26
                mem[_122 + 32] = 'SafeMath: division by zero'
                if stor12 / 100000 * 10^18 > 0:
                    require stor12 / 100000 * 10^18
                    stor9[address(arg1)] = stor8[address(arg1)] / stor12 / 100000 * 10^18
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                    stor1 = 1
                _128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_128 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_128 + 68] = mem[_128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _128 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 8
            _95 = mem[64]
            mem[64] = mem[64] + 64
            mem[_95] = 30
            mem[_95 + 32] = 'SafeMath: subtraction overflow'
            if stor8[stor11[idx]] > t:
                _97 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_97 + idx + 68] = mem[_95 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_97 + 68] = mem[_97 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _97 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 9
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = 30
            mem[_111 + 32] = 'SafeMath: subtraction overflow'
            if stor9[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor9[stor11[idx]]
                t = t - stor8[stor11[idx]]
                continue 
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_119 + idx + 68] = mem[_111 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 68] = mem[_119 + 70 len 30]
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if t < stor12 / 100000 * 10^18:
            if stor12 / 100000 * 10^18 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor12 / 100000 * 10^18
            stor9[address(arg1)] = stor8[address(arg1)] / stor12 / 100000 * 10^18
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor9[address(arg1)] = stor8[address(arg1)] / t / s
    stor10[address(arg1)] = 1
    stor11.length++
    stor11[stor11.length] = arg1
    stor1 = 1
}

function allocationFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > 100000 * 10^18:
        revert with 0, 'Amount must be less than supply'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor15 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor15
    mem[64] = 224
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if arg1 / stor15 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2:
        idx = 0
        s = 100000 * 10^18
        t = stor12
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 8
            if stor8[stor11[idx]] > t:
                _431 = mem[64]
                mem[64] = mem[64] + 64
                mem[_431] = 26
                mem[_431 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 / stor15:
                        return 0
                    require arg1 / stor15
                    if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_524] = 30
                    mem[_524 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 / stor15 * stor12 / 100000 * 10^18 <= 0:
                        return (-1 * arg1 / stor15 * stor12 / 100000 * 10^18)
                    _547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_547 + idx + 68] = mem[_524 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_547 + 68] = mem[_547 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _547 + -mem[64] + 100
                require arg1
                if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / stor15:
                    _523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_523] = 30
                    mem[_523 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 100000 * 10^18:
                        return (arg1 * stor12 / 100000 * 10^18)
                    _544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_544 + idx + 68] = mem[_523 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_544 + 68] = mem[_544 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _544 + -mem[64] + 100
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _543 = mem[64]
                mem[64] = mem[64] + 64
                mem[_543] = 30
                mem[_543 + 32] = 'SafeMath: subtraction overflow'
                if arg1 / stor15 * stor12 / 100000 * 10^18 <= arg1 * stor12 / 100000 * 10^18:
                    return ((arg1 * stor12 / 100000 * 10^18) - (arg1 / stor15 * stor12 / 100000 * 10^18))
                _575 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_575 + idx + 68] = mem[_543 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_575 + 68] = mem[_575 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _575 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 9
            if stor9[stor11[idx]] > s:
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439] = 26
                mem[_439 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 / stor15:
                        return 0
                    require arg1 / stor15
                    if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_551] = 30
                    mem[_551 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 / stor15 * stor12 / 100000 * 10^18 <= 0:
                        return (-1 * arg1 / stor15 * stor12 / 100000 * 10^18)
                    _584 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_584 + idx + 68] = mem[_551 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_584 + 68] = mem[_584 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _584 + -mem[64] + 100
                require arg1
                if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / stor15:
                    _550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_550] = 30
                    mem[_550 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / 100000 * 10^18:
                        return (arg1 * stor12 / 100000 * 10^18)
                    _581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_581 + idx + 68] = mem[_550 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_581 + 68] = mem[_581 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _581 + -mem[64] + 100
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_580] = 30
                mem[_580 + 32] = 'SafeMath: subtraction overflow'
                if arg1 / stor15 * stor12 / 100000 * 10^18 <= arg1 * stor12 / 100000 * 10^18:
                    return ((arg1 * stor12 / 100000 * 10^18) - (arg1 / stor15 * stor12 / 100000 * 10^18))
                _630 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_630 + idx + 68] = mem[_580 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_630 + 68] = mem[_630 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _630 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 8
            _437 = mem[64]
            mem[64] = mem[64] + 64
            mem[_437] = 30
            mem[_437 + 32] = 'SafeMath: subtraction overflow'
            if stor8[stor11[idx]] > t:
                _441 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_441 + idx + 68] = mem[_437 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_441 + 68] = mem[_441 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _441 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 9
            _467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_467] = 30
            mem[_467 + 32] = 'SafeMath: subtraction overflow'
            if stor9[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor9[stor11[idx]]
                t = t - stor8[stor11[idx]]
                continue 
            _475 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_475 + idx + 68] = mem[_467 + idx + 32]
                idx = idx + 32
                continue 
            mem[_475 + 68] = mem[_475 + 70 len 30]
            revert with memory
              from mem[64]
               len _475 + -mem[64] + 100
        _409 = mem[64]
        mem[64] = mem[64] + 64
        mem[_409] = 26
        mem[_409 + 32] = 'SafeMath: division by zero'
        if t < stor12 / 100000 * 10^18:
            _448 = mem[64]
            mem[64] = mem[64] + 64
            mem[_448] = 26
            mem[_448 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 / stor15:
                    return 0
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * stor12 / 100000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 / stor15 * stor12 / 100000 * 10^18)
            require arg1
            if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                if 0 > arg1 * stor12 / 100000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor12 / 100000 * 10^18)
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 / stor15 * stor12 / 100000 * 10^18 > arg1 * stor12 / 100000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor12 / 100000 * 10^18) - (arg1 / stor15 * stor12 / 100000 * 10^18))
        _447 = mem[64]
        mem[64] = mem[64] + 64
        mem[_447] = 26
        mem[_447 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if not arg1 / stor15:
                return 0
            require arg1 / stor15
            if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 / stor15 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * arg1 / stor15 * t / s)
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 / stor15:
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * t / s)
        require arg1 / stor15
        if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 / stor15 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * t / s) - (arg1 / stor15 * t / s))
    idx = 0
    s = 100000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 8
        if stor8[stor11[idx]] > t:
            _434 = mem[64]
            mem[64] = mem[64] + 64
            mem[_434] = 26
            mem[_434 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 / stor15:
                    return 0
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 30
                mem[_527 + 32] = 'SafeMath: subtraction overflow'
                if arg1 / stor15 * stor12 / 100000 * 10^18 <= 0:
                    return 0
                _558 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_558 + idx + 68] = mem[_527 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_558 + 68] = mem[_558 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _558 + -mem[64] + 100
            require arg1
            if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 30
                mem[_526 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / 100000 * 10^18:
                    return (arg1 * stor12 / 100000 * 10^18)
                _555 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_555 + idx + 68] = mem[_526 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_555 + 68] = mem[_555 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _555 + -mem[64] + 100
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _554 = mem[64]
            mem[64] = mem[64] + 64
            mem[_554] = 30
            mem[_554 + 32] = 'SafeMath: subtraction overflow'
            if arg1 / stor15 * stor12 / 100000 * 10^18 <= arg1 * stor12 / 100000 * 10^18:
                return (arg1 * stor12 / 100000 * 10^18)
            _591 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_591 + idx + 68] = mem[_554 + idx + 32]
                idx = idx + 32
                continue 
            mem[_591 + 68] = mem[_591 + 70 len 30]
            revert with memory
              from mem[64]
               len _591 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        if stor9[stor11[idx]] > s:
            _440 = mem[64]
            mem[64] = mem[64] + 64
            mem[_440] = 26
            mem[_440 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 / stor15:
                    return 0
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_562] = 30
                mem[_562 + 32] = 'SafeMath: subtraction overflow'
                if arg1 / stor15 * stor12 / 100000 * 10^18 <= 0:
                    return 0
                _600 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_600 + idx + 68] = mem[_562 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_600 + 68] = mem[_600 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _600 + -mem[64] + 100
            require arg1
            if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 30
                mem[_561 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / 100000 * 10^18:
                    return (arg1 * stor12 / 100000 * 10^18)
                _597 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_597 + idx + 68] = mem[_561 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_597 + 68] = mem[_597 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _597 + -mem[64] + 100
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_596] = 30
            mem[_596 + 32] = 'SafeMath: subtraction overflow'
            if arg1 / stor15 * stor12 / 100000 * 10^18 <= arg1 * stor12 / 100000 * 10^18:
                return (arg1 * stor12 / 100000 * 10^18)
            _654 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_654 + idx + 68] = mem[_596 + idx + 32]
                idx = idx + 32
                continue 
            mem[_654 + 68] = mem[_654 + 70 len 30]
            revert with memory
              from mem[64]
               len _654 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 8
        _438 = mem[64]
        mem[64] = mem[64] + 64
        mem[_438] = 30
        mem[_438 + 32] = 'SafeMath: subtraction overflow'
        if stor8[stor11[idx]] > t:
            _444 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_444 + idx + 68] = mem[_438 + idx + 32]
                idx = idx + 32
                continue 
            mem[_444 + 68] = mem[_444 + 70 len 30]
            revert with memory
              from mem[64]
               len _444 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        _469 = mem[64]
        mem[64] = mem[64] + 64
        mem[_469] = 30
        mem[_469 + 32] = 'SafeMath: subtraction overflow'
        if stor9[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor9[stor11[idx]]
            t = t - stor8[stor11[idx]]
            continue 
        _480 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_480 + idx + 68] = mem[_469 + idx + 32]
            idx = idx + 32
            continue 
        mem[_480 + 68] = mem[_480 + 70 len 30]
        revert with memory
          from mem[64]
           len _480 + -mem[64] + 100
    _416 = mem[64]
    mem[64] = mem[64] + 64
    mem[_416] = 26
    mem[_416 + 32] = 'SafeMath: division by zero'
    if t < stor12 / 100000 * 10^18:
        _450 = mem[64]
        mem[64] = mem[64] + 64
        mem[_450] = 26
        mem[_450 + 32] = 'SafeMath: division by zero'
        if not arg1:
            if arg1 / stor15:
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * stor12 / 100000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require arg1
        if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 / stor15:
            if 0 > arg1 * stor12 / 100000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 / stor15 * stor12 / 100000 * 10^18 > arg1 * stor12 / 100000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
        return (arg1 * stor12 / 100000 * 10^18)
    _449 = mem[64]
    mem[64] = mem[64] + 64
    mem[_449] = 26
    mem[_449 + 32] = 'SafeMath: division by zero'
    if s <= 0:
        revert with 0, 'SafeMath: division by zero'
    require s
    if not arg1:
        if arg1 / stor15:
            require arg1 / stor15
            if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 / stor15 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            else:
                return 0
        else:
            return 0
    require arg1
    if arg1 * t / s / arg1 != t / s:
        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not arg1 / stor15:
        if 0 > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1 / stor15
        if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 / stor15 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * t / s)
}

function allocate(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 10
    if stor10[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor15 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor15
    mem[64] = 224
    mem[160] = 30
    mem[192] = 'SafeMath: subtraction overflow'
    if arg1 / stor15 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    s = 100000 * 10^18
    t = stor12
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 8
        if stor8[stor11[idx]] > t:
            _506 = mem[64]
            mem[64] = mem[64] + 64
            mem[_506] = 26
            mem[_506 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 / stor15:
                    _547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_547] = 30
                    mem[_547 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 8
                    _597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_597] = 30
                    mem[_597 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor8[address(msg.sender)]:
                        _627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_627 + idx + 68] = mem[_597 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_627 + 68] = mem[_627 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _627 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 8
                    _690 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_690] = 30
                    mem[_690 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor13 + arg1 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        stor13 += arg1
                    _736 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_736 + idx + 68] = mem[_690 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_736 + 68] = mem[_736 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _736 + -mem[64] + 100
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _553 = mem[64]
                mem[64] = mem[64] + 64
                mem[_553] = 30
                mem[_553 + 32] = 'SafeMath: subtraction overflow'
                if arg1 / stor15 * stor12 / 100000 * 10^18 > 0:
                    _567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_567 + idx + 68] = mem[_553 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_567 + 68] = mem[_567 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _567 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 8
                _626 = mem[64]
                mem[64] = mem[64] + 64
                mem[_626] = 30
                mem[_626 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor8[address(msg.sender)]:
                    _668 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_668 + idx + 68] = mem[_626 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_668 + 68] = mem[_668 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _668 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 8
                _733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_733] = 30
                mem[_733 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor12:
                    if stor13 + arg1 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    stor13 += arg1
                _784 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_784 + idx + 68] = mem[_733 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_784 + 68] = mem[_784 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _784 + -mem[64] + 100
            require arg1
            if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                _552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_552] = 30
                mem[_552 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / 100000 * 10^18:
                    _564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_564 + idx + 68] = mem[_552 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_564 + 68] = mem[_564 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _564 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 8
                _625 = mem[64]
                mem[64] = mem[64] + 64
                mem[_625] = 30
                mem[_625 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / 100000 * 10^18 > stor8[address(msg.sender)]:
                    _665 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_665 + idx + 68] = mem[_625 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_665 + 68] = mem[_665 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _665 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 8
                stor8[address(msg.sender)] += -1 * arg1 * stor12 / 100000 * 10^18
                _730 = mem[64]
                mem[64] = mem[64] + 64
                mem[_730] = 30
                mem[_730 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / 100000 * 10^18 <= stor12:
                    stor12 += -1 * arg1 * stor12 / 100000 * 10^18
                    if stor13 + arg1 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    stor13 += arg1
                _781 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_781 + idx + 68] = mem[_730 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_781 + 68] = mem[_781 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _781 + -mem[64] + 100
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _563 = mem[64]
            mem[64] = mem[64] + 64
            mem[_563] = 30
            mem[_563 + 32] = 'SafeMath: subtraction overflow'
            if arg1 / stor15 * stor12 / 100000 * 10^18 > arg1 * stor12 / 100000 * 10^18:
                _580 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_580 + idx + 68] = mem[_563 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_580 + 68] = mem[_580 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _580 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            _664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_664] = 30
            mem[_664 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor12 / 100000 * 10^18 > stor8[address(msg.sender)]:
                _709 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_709 + idx + 68] = mem[_664 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_709 + 68] = mem[_709 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _709 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            stor8[address(msg.sender)] += -1 * arg1 * stor12 / 100000 * 10^18
            _778 = mem[64]
            mem[64] = mem[64] + 64
            mem[_778] = 30
            mem[_778 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor12 / 100000 * 10^18 <= stor12:
                stor12 += -1 * arg1 * stor12 / 100000 * 10^18
                if stor13 + arg1 < stor13:
                    revert with 0, 'SafeMath: addition overflow'
                stor13 += arg1
            _838 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_838 + idx + 68] = mem[_778 + idx + 32]
                idx = idx + 32
                continue 
            mem[_838 + 68] = mem[_838 + 70 len 30]
            revert with memory
              from mem[64]
               len _838 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 9
        if stor9[stor11[idx]] <= s:
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 8
            _509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_509] = 30
            mem[_509 + 32] = 'SafeMath: subtraction overflow'
            if stor8[stor11[idx]] > t:
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_511 + idx + 68] = mem[_509 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_511 + 68] = mem[_511 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _511 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 9
            _524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_524] = 30
            mem[_524 + 32] = 'SafeMath: subtraction overflow'
            if stor9[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor9[stor11[idx]]
                t = t - stor8[stor11[idx]]
                continue 
            _529 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_529 + idx + 68] = mem[_524 + idx + 32]
                idx = idx + 32
                continue 
            mem[_529 + 68] = mem[_529 + 70 len 30]
            revert with memory
              from mem[64]
               len _529 + -mem[64] + 100
        _510 = mem[64]
        mem[64] = mem[64] + 64
        mem[_510] = 26
        mem[_510 + 32] = 'SafeMath: division by zero'
        if not arg1:
            if not arg1 / stor15:
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 30
                mem[_554 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 8
                _634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_634] = 30
                mem[_634 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor8[address(msg.sender)]:
                    _677 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_677 + idx + 68] = mem[_634 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_677 + 68] = mem[_677 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _677 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 8
                _739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_739] = 30
                mem[_739 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor12:
                    if stor13 + arg1 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    stor13 += arg1
                _794 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_794 + idx + 68] = mem[_739 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_794 + 68] = mem[_794 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _794 + -mem[64] + 100
            require arg1 / stor15
            if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _571 = mem[64]
            mem[64] = mem[64] + 64
            mem[_571] = 30
            mem[_571 + 32] = 'SafeMath: subtraction overflow'
            if arg1 / stor15 * stor12 / 100000 * 10^18 > 0:
                _590 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_590 + idx + 68] = mem[_571 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_590 + 68] = mem[_590 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _590 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            _676 = mem[64]
            mem[64] = mem[64] + 64
            mem[_676] = 30
            mem[_676 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor8[address(msg.sender)]:
                _721 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_721 + idx + 68] = mem[_676 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_721 + 68] = mem[_721 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _721 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            _791 = mem[64]
            mem[64] = mem[64] + 64
            mem[_791] = 30
            mem[_791 + 32] = 'SafeMath: subtraction overflow'
            if 0 <= stor12:
                if stor13 + arg1 < stor13:
                    revert with 0, 'SafeMath: addition overflow'
                stor13 += arg1
            _852 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_852 + idx + 68] = mem[_791 + idx + 32]
                idx = idx + 32
                continue 
            mem[_852 + 68] = mem[_852 + 70 len 30]
            revert with memory
              from mem[64]
               len _852 + -mem[64] + 100
        require arg1
        if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 / stor15:
            _570 = mem[64]
            mem[64] = mem[64] + 64
            mem[_570] = 30
            mem[_570 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor12 / 100000 * 10^18:
                _587 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_587 + idx + 68] = mem[_570 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_587 + 68] = mem[_587 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _587 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            _675 = mem[64]
            mem[64] = mem[64] + 64
            mem[_675] = 30
            mem[_675 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor12 / 100000 * 10^18 > stor8[address(msg.sender)]:
                _718 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_718 + idx + 68] = mem[_675 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_718 + 68] = mem[_718 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _718 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 8
            stor8[address(msg.sender)] += -1 * arg1 * stor12 / 100000 * 10^18
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 30
            mem[_788 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor12 / 100000 * 10^18 <= stor12:
                stor12 += -1 * arg1 * stor12 / 100000 * 10^18
                if stor13 + arg1 < stor13:
                    revert with 0, 'SafeMath: addition overflow'
                stor13 += arg1
            _849 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_849 + idx + 68] = mem[_788 + idx + 32]
                idx = idx + 32
                continue 
            mem[_849 + 68] = mem[_849 + 70 len 30]
            revert with memory
              from mem[64]
               len _849 + -mem[64] + 100
        require arg1 / stor15
        if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _586 = mem[64]
        mem[64] = mem[64] + 64
        mem[_586] = 30
        mem[_586 + 32] = 'SafeMath: subtraction overflow'
        if arg1 / stor15 * stor12 / 100000 * 10^18 > arg1 * stor12 / 100000 * 10^18:
            _617 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_617 + idx + 68] = mem[_586 + idx + 32]
                idx = idx + 32
                continue 
            mem[_617 + 68] = mem[_617 + 70 len 30]
            revert with memory
              from mem[64]
               len _617 + -mem[64] + 100
        mem[0] = msg.sender
        mem[32] = 8
        _717 = mem[64]
        mem[64] = mem[64] + 64
        mem[_717] = 30
        mem[_717 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * stor12 / 100000 * 10^18 > stor8[address(msg.sender)]:
            _764 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_764 + idx + 68] = mem[_717 + idx + 32]
                idx = idx + 32
                continue 
            mem[_764 + 68] = mem[_764 + 70 len 30]
            revert with memory
              from mem[64]
               len _764 + -mem[64] + 100
        mem[0] = msg.sender
        mem[32] = 8
        stor8[address(msg.sender)] += -1 * arg1 * stor12 / 100000 * 10^18
        _846 = mem[64]
        mem[64] = mem[64] + 64
        mem[_846] = 30
        mem[_846 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * stor12 / 100000 * 10^18 <= stor12:
            stor12 += -1 * arg1 * stor12 / 100000 * 10^18
            if stor13 + arg1 < stor13:
                revert with 0, 'SafeMath: addition overflow'
            stor13 += arg1
        _898 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_898 + idx + 68] = mem[_846 + idx + 32]
            idx = idx + 32
            continue 
        mem[_898 + 68] = mem[_898 + 70 len 30]
        revert with memory
          from mem[64]
           len _898 + -mem[64] + 100
    _495 = mem[64]
    mem[64] = mem[64] + 64
    mem[_495] = 26
    mem[_495 + 32] = 'SafeMath: division by zero'
    if t < stor12 / 100000 * 10^18:
        _515 = mem[64]
        mem[64] = mem[64] + 64
        mem[_515] = 26
        mem[_515 + 32] = 'SafeMath: division by zero'
        if not arg1:
            if arg1 / stor15:
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * stor12 / 100000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
            if 0 > stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > stor12:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * stor12 / 100000 * 10^18 / arg1 != stor12 / 100000 * 10^18:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                if 0 > arg1 * stor12 / 100000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 / stor15
                if arg1 / stor15 * stor12 / 100000 * 10^18 / arg1 / stor15 != stor12 / 100000 * 10^18:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * stor12 / 100000 * 10^18 > arg1 * stor12 / 100000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor12 / 100000 * 10^18 > stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor8[address(msg.sender)] += -1 * arg1 * stor12 / 100000 * 10^18
            if arg1 * stor12 / 100000 * 10^18 > stor12:
                revert with 0, 'SafeMath: subtraction overflow'
            stor12 += -1 * arg1 * stor12 / 100000 * 10^18
    else:
        _514 = mem[64]
        mem[64] = mem[64] + 64
        mem[_514] = 26
        mem[_514 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if arg1 / stor15:
                require arg1 / stor15
                if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
            if 0 > stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > stor12:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / stor15:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 / stor15
                if arg1 / stor15 * t / s / arg1 / stor15 != t / s:
                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 / stor15 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * t / s > stor8[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor8[address(msg.sender)] += -1 * arg1 * t / s
            if arg1 * t / s > stor12:
                revert with 0, 'SafeMath: subtraction overflow'
            stor12 += -1 * arg1 * t / s
    if stor13 + arg1 < stor13:
        revert with 0, 'SafeMath: addition overflow'
    stor13 += arg1
}



}
