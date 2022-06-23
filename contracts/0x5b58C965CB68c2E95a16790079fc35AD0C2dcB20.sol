contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of address stor11;
uint256 _feeDecimal;
array of uint256 _transferFee;
array of uint256 sub_53a3fedc;
array of uint256 sub_4dec06ff;
uint256 stor17;
uint256 stor18;
uint8 isFeeActive;
uint8 swapEnabled; offset 8
uint256 stor19; offset 8
uint256 maxTxAmount;
uint256 minTokensBeforeSwap;
address sub_ec17aabfAddress;
address financeWalletAddress;
address charityWalletAddress;
address routerAddress;
address pairAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function _feeDecimal() {
    return _feeDecimal
}

function financeWallet() {
    return financeWalletAddress
}

function decimals() {
    return decimals
}

function sub_4dec06ff(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4dec06ff.length
    return sub_4dec06ff[arg1].field_0
}

function sub_53a3fedc(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_53a3fedc.length
    return sub_53a3fedc[arg1].field_0
}

function swapEnabled() {
    return bool(swapEnabled)
}

function _isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function charityWallet() {
    return charityWalletAddress
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pair() {
    return pairAddress
}

function _transferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _transferFee.length
    return _transferFee[arg1].field_0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isFeeActive() {
    return bool(isFeeActive)
}

function minTokensBeforeSwap() {
    return minTokensBeforeSwap
}

function sub_ec17aabf(?) {
    return sub_ec17aabfAddress
}

function router() {
    return routerAddress
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

function sub_4b5b3a6c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ec17aabfAddress = arg1
}

function sub_07a09b45(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    financeWalletAddress = arg1
}

function setCharityWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityWalletAddress = arg1
}

function setMinTokensBeforeSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minTokensBeforeSwap = arg1
}

function setFeeActive(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(isFeeActive) == arg1:
        revert with 0, 'Already set'
    isFeeActive = uint8(arg1)
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(swapEnabled) == arg1:
        revert with 0, 'Already set'
    stor19 = Mask(248, 0, arg1)
}

function setExcludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor9[address(arg1)]) == arg2:
        revert with 0, 'Already set'
    stor9[address(arg1)] = uint8(arg2)
}

function getStuckBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 100000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f6d61785478416d6f756e742073686f756c642062652067726561746572207468616e203120746f6b65,
                    mem[206 len 22]
    maxTxAmount = arg1
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

function sub_520cc098(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2500:
        revert with 0, 'Invalid fee'
    if arg2 > 2500:
        revert with 0, 'Invalid fee'
    if arg3 > 2500:
        revert with 0, 'Invalid fee'
    require 0 < sub_53a3fedc.length
    uint256(sub_53a3fedc.field_0) = arg1
    require 1 < sub_53a3fedc.length
    uint256(sub_53a3fedc.field_256) = arg2
    require 2 < sub_53a3fedc.length
    uint256(sub_53a3fedc.field_512) = arg3
}

function sub_ee3ade01(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2500:
        revert with 0, 'Invalid fee'
    if arg2 > 2500:
        revert with 0, 'Invalid fee'
    if arg3 > 2500:
        revert with 0, 'Invalid fee'
    require 0 < sub_4dec06ff.length
    uint256(sub_4dec06ff.field_0) = arg1
    require 1 < sub_4dec06ff.length
    uint256(sub_4dec06ff.field_256) = arg2
    require 2 < sub_4dec06ff.length
    uint256(sub_4dec06ff.field_512) = arg3
}

function setTransferFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2500:
        revert with 0, 'Invalid fee'
    if arg2 > 2500:
        revert with 0, 'Invalid fee'
    if arg3 > 2500:
        revert with 0, 'Invalid fee'
    require 0 < _transferFee.length
    uint256(_transferFee.field_0) = arg1
    require 1 < _transferFee.length
    uint256(_transferFee.field_256) = arg2
    require 2 < _transferFee.length
    uint256(_transferFee.field_512) = arg3
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10[address(arg1)]:
        revert with 0, 'Account is already included'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        stor11[idx] = stor11[stor11.length]
        stor5[address(arg1)] = 0
        stor10[address(arg1)] = 0
        require stor11.length
        stor11[stor11.length] = 0
        stor11.length--
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

function sub_b019cd8b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != this.address:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if stor18 + stor17 < stor18:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] <= stor18 + stor17:
            revert with 0, 'No stuck token'
        if stor18 + stor17 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - stor18 - stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function reflectionFromToken(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 26
            mem[_99 + 32] = 'SafeMath: division by zero'
            if totalSupply > 0:
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return (arg1 * stor8 / totalSupply)
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_103 + idx + 68] = mem[_99 + idx + 32]
                idx = idx + 32
                continue 
            mem[_103 + 68] = mem[_103 + 74 len 26]
            revert with memory
              from mem[64]
               len _103 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 26
            mem[_108 + 32] = 'SafeMath: division by zero'
            if totalSupply > 0:
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return (arg1 * stor8 / totalSupply)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_110] = 30
        mem[_110 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_119 + idx + 68] = mem[_110 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 68] = mem[_119 + 70 len 30]
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _144 = mem[64]
        mem[64] = mem[64] + 64
        mem[_144] = 30
        mem[_144 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
            continue 
        _150 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_150 + idx + 68] = mem[_144 + idx + 32]
            idx = idx + 32
            continue 
        mem[_150 + 68] = mem[_150 + 70 len 30]
        revert with memory
          from mem[64]
           len _150 + -mem[64] + 100
    _91 = mem[64]
    mem[64] = mem[64] + 64
    mem[_91] = 26
    mem[_91 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if t >= stor8 / totalSupply:
        _111 = mem[64]
        mem[64] = mem[64] + 64
        mem[_111] = 26
        mem[_111 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            return 0
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (arg1 * t / s)
    _112 = mem[64]
    mem[64] = mem[64] + 64
    mem[_112] = 26
    mem[_112 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if not arg1:
        return 0
    require arg1
    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return (arg1 * stor8 / totalSupply)
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
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
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_115] = 26
            mem[_115 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _119 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_119 + idx + 68] = mem[_115 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_119 + 68] = mem[_119 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _119 + -mem[64] + 100
            require totalSupply
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (arg1 / stor8 / totalSupply)
            _165 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            s = 0
            while s < 26:
                mem[_165 + s + 68] = mem[_151 + s + 32]
                s = s + 32
                continue 
            mem[_165 + 68] = mem[_165 + 74 len 26]
            revert with memory
              from mem[64]
               len _165 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
            _124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_124] = 26
            mem[_124 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _130 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_130 + idx + 68] = mem[_124 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_130 + 68] = mem[_130 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _130 + -mem[64] + 100
            require totalSupply
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 26
            mem[_168 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (arg1 / stor8 / totalSupply)
            _175 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_175 + idx + 68] = mem[_168 + idx + 32]
                idx = idx + 32
                continue 
            mem[_175 + 68] = mem[_175 + 74 len 26]
            revert with memory
              from mem[64]
               len _175 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _126 = mem[64]
        mem[64] = mem[64] + 64
        mem[_126] = 30
        mem[_126 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
            _135 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_135 + idx + 68] = mem[_126 + idx + 32]
                idx = idx + 32
                continue 
            mem[_135 + 68] = mem[_135 + 70 len 30]
            revert with memory
              from mem[64]
               len _135 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
            continue 
        _169 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_169 + idx + 68] = mem[_161 + idx + 32]
            idx = idx + 32
            continue 
        mem[_169 + 68] = mem[_169 + 70 len 30]
        revert with memory
          from mem[64]
           len _169 + -mem[64] + 100
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
    require not msg.value
    require calldata.size - 4 >= 32
    if stor10[address(arg1)]:
        return stor5[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _124 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_124 + idx + 68] = mem[_120 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_124 + 68] = mem[_124 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _124 + -mem[64] + 100
            require totalSupply
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (stor4[address(arg1)] / stor8 / totalSupply)
            _170 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            s = 0
            while s < 26:
                mem[_170 + s + 68] = mem[_156 + s + 32]
                s = s + 32
                continue 
            mem[_170 + 68] = mem[_170 + 74 len 26]
            revert with memory
              from mem[64]
               len _170 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 26
            mem[_129 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_135 + idx + 68] = mem[_129 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 68] = mem[_135 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            require totalSupply
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                require stor8 / totalSupply
                return (stor4[address(arg1)] / stor8 / totalSupply)
            _180 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_180 + idx + 68] = mem[_173 + idx + 32]
                idx = idx + 32
                continue 
            mem[_180 + 68] = mem[_180 + 74 len 26]
            revert with memory
              from mem[64]
               len _180 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _131 = mem[64]
        mem[64] = mem[64] + 64
        mem[_131] = 30
        mem[_131 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_140 + idx + 68] = mem[_131 + idx + 32]
                idx = idx + 32
                continue 
            mem[_140 + 68] = mem[_140 + 70 len 30]
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
            continue 
        _174 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_174 + idx + 68] = mem[_166 + idx + 32]
            idx = idx + 32
            continue 
        mem[_174 + 68] = mem[_174 + 70 len 30]
        revert with memory
          from mem[64]
           len _174 + -mem[64] + 100
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
                    return (stor4[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor8 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor8 / totalSupply:
                    return (stor4[address(arg1)] / stor8 / totalSupply)
    revert
}

function setPairRouterRewardToken(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
    routerAddress = arg2
    if stor10[stor26]:
        revert with 0, 'Account is already excluded'
    if stor4[stor26] > 0:
        mem[0] = pairAddress
        mem[32] = 4
        if stor4[stor26] > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 26
                mem[_128 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_132 + idx + 68] = mem[_128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_132 + 68] = mem[_132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _132 + -mem[64] + 100
                require totalSupply
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[stor26] = stor4[stor26] / stor8 / totalSupply
                    stor10[stor26] = 1
                    stor11.length++
                    stor11[stor11.length] = pairAddress
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[_178 + s + 68] = mem[_164 + s + 32]
                    s = s + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > s:
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 26
                mem[_137 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_143 + idx + 68] = mem[_137 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_143 + 68] = mem[_143 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _143 + -mem[64] + 100
                require totalSupply
                _181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_181] = 26
                mem[_181 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[stor26] = stor4[stor26] / stor8 / totalSupply
                    stor10[stor26] = 1
                    stor11.length++
                    stor11[stor11.length] = pairAddress
                _188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_188 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_188 + 68] = mem[_188 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _188 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 30
            mem[_139 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_148 + idx + 68] = mem[_139 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_148 + 68] = mem[_148 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _148 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 30
            mem[_174 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _182 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_182 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_182 + 68] = mem[_182 + 70 len 30]
            revert with memory
              from mem[64]
               len _182 + -mem[64] + 100
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
            stor5[stor26] = stor4[stor26] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor8 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8 / totalSupply
            stor5[stor26] = stor4[stor26] / stor8 / totalSupply
    stor10[stor26] = 1
    stor11.length++
    stor11[stor11.length] = pairAddress
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor4[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 26
                mem[_128 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_132 + idx + 68] = mem[_128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_132 + 68] = mem[_132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _132 + -mem[64] + 100
                require totalSupply
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[address(arg1)] = stor4[address(arg1)] / stor8 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[_178 + s + 68] = mem[_164 + s + 32]
                    s = s + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > s:
                _137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_137] = 26
                mem[_137 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_143 + idx + 68] = mem[_137 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_143 + 68] = mem[_143 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _143 + -mem[64] + 100
                require totalSupply
                _181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_181] = 26
                mem[_181 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[address(arg1)] = stor4[address(arg1)] / stor8 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                _188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_188 + idx + 68] = mem[_181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_188 + 68] = mem[_188 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _188 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 30
            mem[_139 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_148 + idx + 68] = mem[_139 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_148 + 68] = mem[_148 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _148 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 30
            mem[_174 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _182 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_182 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_182 + 68] = mem[_182 + 70 len 30]
            revert with memory
              from mem[64]
               len _182 + -mem[64] + 100
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
            stor5[address(arg1)] = stor4[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor8 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8 / totalSupply
            stor5[address(arg1)] = stor4[address(arg1)] / stor8 / totalSupply
    stor10[address(arg1)] = 1
    stor11.length++
    stor11[stor11.length] = arg1
}



}
